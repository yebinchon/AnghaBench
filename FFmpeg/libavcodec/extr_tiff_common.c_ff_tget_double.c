
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double f64; int u64; } ;
typedef TYPE_1__ av_alias64 ;
typedef int GetByteContext ;


 int bytestream2_get_be64 (int *) ;
 int bytestream2_get_le64 (int *) ;

double ff_tget_double(GetByteContext *gb, int le)
{
    av_alias64 i = { .u64 = le ? bytestream2_get_le64(gb) : bytestream2_get_be64(gb)};
    return i.f64;
}
