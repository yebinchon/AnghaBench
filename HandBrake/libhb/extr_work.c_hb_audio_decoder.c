
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_work_object_t ;
typedef int hb_handle_t ;


 int HB_ACODEC_FF_MASK ;

 int WORK_DECAVCODEC ;
 int WORK_DECLPCM ;
 int * hb_get_work (int *,int ) ;

hb_work_object_t* hb_audio_decoder(hb_handle_t *h, int codec)
{
    hb_work_object_t * w = ((void*)0);
    if (codec & HB_ACODEC_FF_MASK)
    {
        w = hb_get_work(h, WORK_DECAVCODEC);
    }
    switch (codec)
    {
        case 128:
            w = hb_get_work(h, WORK_DECLPCM);
            break;
        default:
            break;
    }
    return w;
}
