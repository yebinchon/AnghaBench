
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_work_object_t ;
typedef int hb_handle_t ;





 int HB_ACODEC_FF_MASK ;


 int WORK_ENCAVCODEC_AUDIO ;
 int WORK_ENCVORBIS ;
 int WORK_ENC_CA_AAC ;
 int WORK_ENC_CA_HAAC ;
 int * hb_get_work (int *,int ) ;

hb_work_object_t* hb_audio_encoder(hb_handle_t *h, int codec)
{
    if (codec & HB_ACODEC_FF_MASK)
    {
        return hb_get_work(h, WORK_ENCAVCODEC_AUDIO);
    }
    switch (codec)
    {
        case 132:
        case 129: return hb_get_work(h, WORK_ENCAVCODEC_AUDIO);
        case 128: return hb_get_work(h, WORK_ENCVORBIS);
        case 131: return hb_get_work(h, WORK_ENC_CA_AAC);
        case 130: return hb_get_work(h, WORK_ENC_CA_HAAC);
        default: break;
    }
    return ((void*)0);
}
