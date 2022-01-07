
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_audio_remap_t ;


 int free (int *) ;

void hb_audio_remap_free(hb_audio_remap_t *remap)
{
    if (remap != ((void*)0))
    {
        free(remap);
    }
}
