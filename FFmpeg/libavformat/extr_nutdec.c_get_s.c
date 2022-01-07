
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int ffio_read_varlen (int *) ;

__attribute__((used)) static int64_t get_s(AVIOContext *bc)
{
    int64_t v = ffio_read_varlen(bc) + 1;

    if (v & 1)
        return -(v >> 1);
    else
        return (v >> 1);
}
