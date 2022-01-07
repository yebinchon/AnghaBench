
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_free (int *) ;

void av_buffer_default_free(void *opaque, uint8_t *data)
{
    av_free(data);
}
