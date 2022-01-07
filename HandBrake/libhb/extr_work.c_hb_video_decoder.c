
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec_param; } ;
typedef TYPE_1__ hb_work_object_t ;
typedef int hb_handle_t ;


 int hb_error (char*,int,int) ;
 TYPE_1__* hb_get_work (int *,int) ;

hb_work_object_t* hb_video_decoder(hb_handle_t *h, int vcodec, int param)
{
    hb_work_object_t * w;

    w = hb_get_work(h, vcodec);
    if (w == ((void*)0))
    {
        hb_error("Invalid video decoder: codec %d, param %d", vcodec, param);
        return ((void*)0);
    }
    w->codec_param = param;

    return w;
}
