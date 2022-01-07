
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chan; } ;


 TYPE_1__ sicntrl ;

u32 SI_Busy()
{
 return (sicntrl.chan==-1)?0:1;
}
