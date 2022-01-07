
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ key_frame; scalar_t__* data; } ;
struct TYPE_8__ {int max_ref_frames; int ref_frames; scalar_t__ keyframe; TYPE_2__* current_picture; int avctx; TYPE_2__** last_picture; int * halfpel_plane; } ;
typedef TYPE_1__ SnowContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ USE_HALFPEL_PLANE ;
 int av_log (int ,int ,char*) ;
 int ff_snow_get_buffer (TYPE_1__*,TYPE_2__*) ;
 int ff_snow_release_buffer (int ) ;
 int halfpel_interpol (TYPE_1__*,int ,TYPE_2__*) ;
 int memmove (int *,int *,int) ;

int ff_snow_frame_start(SnowContext *s){
   AVFrame *tmp;
   int i, ret;

    ff_snow_release_buffer(s->avctx);

    tmp= s->last_picture[s->max_ref_frames-1];
    for(i=s->max_ref_frames-1; i>0; i--)
        s->last_picture[i] = s->last_picture[i-1];
    memmove(s->halfpel_plane+1, s->halfpel_plane, (s->max_ref_frames-1)*sizeof(void*)*4*4);
    if(USE_HALFPEL_PLANE && s->current_picture->data[0]) {
        if((ret = halfpel_interpol(s, s->halfpel_plane[0], s->current_picture)) < 0)
            return ret;
    }
    s->last_picture[0] = s->current_picture;
    s->current_picture = tmp;

    if(s->keyframe){
        s->ref_frames= 0;
    }else{
        int i;
        for(i=0; i<s->max_ref_frames && s->last_picture[i]->data[0]; i++)
            if(i && s->last_picture[i-1]->key_frame)
                break;
        s->ref_frames= i;
        if(s->ref_frames==0){
            av_log(s->avctx,AV_LOG_ERROR, "No reference frames\n");
            return AVERROR_INVALIDDATA;
        }
    }
    if ((ret = ff_snow_get_buffer(s, s->current_picture)) < 0)
        return ret;

    s->current_picture->key_frame= s->keyframe;

    return 0;
}
