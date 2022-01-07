
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ data_array; } ;
typedef TYPE_1__ SH2 ;



__attribute__((used)) static u32 sh2_read16_da(u32 a, SH2 *sh2)
{
  return ((u16 *)sh2->data_array)[(a & 0xfff) / 2];
}
