
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ ClkrstSession ;


 int PcvModuleId_CpuBus ;
 int PcvModule_CpuBus ;
 int appletUnlockExit () ;
 int clkrstCloseSession (TYPE_1__*) ;
 int clkrstExit () ;
 int clkrstOpenSession (TYPE_1__*,int ,int) ;
 int clkrstSetClockRate (TYPE_1__*,int) ;
 int free (int *) ;
 scalar_t__ hosversionBefore (int,int ,int ) ;
 int nifmExit () ;
 int pcvExit () ;
 int pcvSetClockRate (int ,int) ;
 int psmExit () ;
 scalar_t__ psmInitialized ;
 int socketExit () ;
 int * splashData ;

__attribute__((used)) static void frontend_switch_deinit(void *data)
{
   (void)data;
}
