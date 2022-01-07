
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_2__ {void* lgStaticSize; void* lgStaticAddr; } ;


 TYPE_1__ lowGlo ;

void patch_low_glo_static_region(uint64_t address, uint64_t size)
{
 lowGlo.lgStaticAddr = address;
 lowGlo.lgStaticSize = size;
}
