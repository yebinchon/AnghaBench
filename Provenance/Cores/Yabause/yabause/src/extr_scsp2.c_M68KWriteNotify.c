
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* WriteNotify ) (int ,int ) ;} ;


 TYPE_1__* M68K ;
 int stub1 (int ,int ) ;

void M68KWriteNotify(u32 address, u32 size)
{
   M68K->WriteNotify(address, size);
}
