#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ key_frame; scalar_t__* data; } ;
struct TYPE_8__ {int max_ref_frames; int ref_frames; scalar_t__ keyframe; TYPE_2__* current_picture; int /*<<< orphan*/  avctx; TYPE_2__** last_picture; int /*<<< orphan*/ * halfpel_plane; } ;
typedef  TYPE_1__ SnowContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ USE_HALFPEL_PLANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC5(SnowContext *s){
   AVFrame *tmp;
   int i, ret;

    FUNC2(s->avctx);

    tmp= s->last_picture[s->max_ref_frames-1];
    for(i=s->max_ref_frames-1; i>0; i--)
        s->last_picture[i] = s->last_picture[i-1];
    FUNC4(s->halfpel_plane+1, s->halfpel_plane, (s->max_ref_frames-1)*sizeof(void*)*4*4);
    if(USE_HALFPEL_PLANE && s->current_picture->data[0]) {
        if((ret = FUNC3(s, s->halfpel_plane[0], s->current_picture)) < 0)
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
            FUNC0(s->avctx,AV_LOG_ERROR, "No reference frames\n");
            return AVERROR_INVALIDDATA;
        }
    }
    if ((ret = FUNC1(s, s->current_picture)) < 0)
        return ret;

    s->current_picture->key_frame= s->keyframe;

    return 0;
}