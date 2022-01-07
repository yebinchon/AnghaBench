
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTextReader ;


 int ff_text_r8 (int *) ;

void ff_text_read(FFTextReader *r, char *buf, size_t size)
{
    for ( ; size > 0; size--)
        *buf++ = ff_text_r8(r);
}
