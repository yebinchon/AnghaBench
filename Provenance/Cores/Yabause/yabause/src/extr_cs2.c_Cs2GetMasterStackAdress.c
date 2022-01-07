
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int msh2stack; } ;


 TYPE_1__* cdip ;

u32 Cs2GetMasterStackAdress(){ if (cdip) return cdip->msh2stack; else return 0x6002000; }
