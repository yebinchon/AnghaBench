
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_7__ {TYPE_1__ stepOverOut; scalar_t__ backtraceEnabled; scalar_t__ breakpointEnabled; } ;


 int FetchBios ;
 int FetchCs0 ;
 int FetchHWram ;
 int FetchInvalid ;
 int FetchLWram ;
 TYPE_2__* MSH2 ;
 int SH2ClearCodeBreakpoints (TYPE_2__*) ;
 int SH2ClearMemoryBreakpoints (TYPE_2__*) ;
 TYPE_2__* SSH2 ;
 int decode (int) ;
 int * fetchlist ;
 int * opcodes ;

int SH2InterpreterInit()
{
   int i;


   for(i = 0;i < 0x10000;i++)
      opcodes[i] = decode(i);

   for (i = 0; i < 0x100; i++)
   {
      switch (i)
      {
         case 0x000:
            fetchlist[i] = FetchBios;
            break;
         case 0x002:
            fetchlist[i] = FetchLWram;
            break;
         case 0x020:
            fetchlist[i] = FetchCs0;
            break;
         case 0x060:
         case 0x061:
         case 0x062:
         case 0x063:
         case 0x064:
         case 0x065:
         case 0x066:
         case 0x067:
         case 0x068:
         case 0x069:
         case 0x06A:
         case 0x06B:
         case 0x06C:
         case 0x06D:
         case 0x06E:
         case 0x06F:
            fetchlist[i] = FetchHWram;
            break;
         default:
            fetchlist[i] = FetchInvalid;
            break;
      }
   }

   SH2ClearCodeBreakpoints(MSH2);
   SH2ClearCodeBreakpoints(SSH2);
   SH2ClearMemoryBreakpoints(MSH2);
   SH2ClearMemoryBreakpoints(SSH2);
   MSH2->breakpointEnabled = 0;
   SSH2->breakpointEnabled = 0;
   MSH2->backtraceEnabled = 0;
   SSH2->backtraceEnabled = 0;
   MSH2->stepOverOut.enabled = 0;
   SSH2->stepOverOut.enabled = 0;

   return 0;
}
