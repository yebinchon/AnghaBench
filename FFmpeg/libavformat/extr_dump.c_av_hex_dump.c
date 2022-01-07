
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int hex_dump_internal (int *,int *,int ,int const*,int) ;

void av_hex_dump(FILE *f, const uint8_t *buf, int size)
{
    hex_dump_internal(((void*)0), f, 0, buf, size);
}
