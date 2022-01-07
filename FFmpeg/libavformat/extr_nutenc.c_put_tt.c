
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int * time_base; int time_base_count; } ;
typedef TYPE_1__ NUTContext ;
typedef int AVRational ;
typedef int AVIOContext ;


 int ff_put_v (int *,int ) ;

__attribute__((used)) static void put_tt(NUTContext *nut, AVRational *time_base, AVIOContext *bc, uint64_t val)
{
    val *= nut->time_base_count;
    val += time_base - nut->time_base;
    ff_put_v(bc, val);
}
