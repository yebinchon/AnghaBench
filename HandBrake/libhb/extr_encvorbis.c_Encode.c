
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input_samples; int out_discrete_channels; int* remap_table; int vd; scalar_t__ buf; int pts; int list; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;
typedef int hb_buffer_t ;


 int * Flush (TYPE_2__*) ;
 int OGGVORBIS_FRAME_SIZE ;
 int hb_list_bytes (int ) ;
 int hb_list_getbytes (int ,scalar_t__,int,int *,int *) ;
 float** vorbis_analysis_buffer (int *,int) ;
 int vorbis_analysis_wrote (int *,int) ;

__attribute__((used)) static hb_buffer_t* Encode(hb_work_object_t *w)
{
    hb_work_private_t *pv = w->private_data;
    hb_buffer_t *buf;
    float **buffer;
    int i, j;


    if ((buf = Flush(w)) != ((void*)0))
    {
        return buf;
    }


    if (hb_list_bytes(pv->list) < pv->input_samples * sizeof(float))
    {
        return ((void*)0);
    }


    hb_list_getbytes(pv->list, pv->buf, pv->input_samples * sizeof(float),
                     &pv->pts, ((void*)0));
    buffer = vorbis_analysis_buffer(&pv->vd, OGGVORBIS_FRAME_SIZE);
    for (i = 0; i < OGGVORBIS_FRAME_SIZE; i++)
    {
        for (j = 0; j < pv->out_discrete_channels; j++)
        {
            buffer[j][i] = ((float*)pv->buf)[(pv->out_discrete_channels * i +
                                              pv->remap_table[j])];
        }
    }

    vorbis_analysis_wrote(&pv->vd, OGGVORBIS_FRAME_SIZE);


    return Flush(w);
}
