
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tilInfo_struct ;
struct TYPE_10__ {scalar_t__ addr; int count; } ;
struct TYPE_8__ {int num; int maxNum; TYPE_4__* match; scalar_t__ enabled; } ;
struct TYPE_7__ {scalar_t__ PC; } ;
struct TYPE_9__ {int instruction; TYPE_2__ trackInfLoop; TYPE_1__ regs; } ;
typedef TYPE_3__ SH2_struct ;


 TYPE_4__* realloc (TYPE_4__*,int) ;

void SH2HandleTrackInfLoop(SH2_struct *context)
{
   if (context->trackInfLoop.enabled)
   {

      if ((context->instruction & 0x8B80) == 0x8B80 ||
          (context->instruction & 0x8F80) == 0x8F80 ||
          (context->instruction & 0x8980) == 0x8980 ||
          (context->instruction & 0x8D80) == 0x8D80 ||
          (context->instruction & 0xA800) == 0xA800)
      {
         int i;


         for (i = 0; i < context->trackInfLoop.num; i++)
         {
            if (context->regs.PC == context->trackInfLoop.match[i].addr)
            {
               context->trackInfLoop.match[i].count++;
               return;
            }
         }

         if (context->trackInfLoop.num >= context->trackInfLoop.maxNum)
         {
            context->trackInfLoop.match = realloc(context->trackInfLoop.match, sizeof(tilInfo_struct) * (context->trackInfLoop.maxNum * 2));
            context->trackInfLoop.maxNum *= 2;
         }


         i=context->trackInfLoop.num;
         context->trackInfLoop.match[i].addr = context->regs.PC;
         context->trackInfLoop.match[i].count = 1;
         context->trackInfLoop.num++;
      }
   }
}
