
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;

void ffio_free_dyn_buf(AVIOContext **s)
{
    uint8_t *tmp;
    if (!*s)
        return;
    avio_close_dyn_buf(*s, &tmp);
    av_free(tmp);
    *s = ((void*)0);
}
