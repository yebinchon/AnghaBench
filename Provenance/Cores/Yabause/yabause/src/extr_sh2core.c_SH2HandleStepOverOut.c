
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int levels; scalar_t__ type; int (* callBack ) (TYPE_3__*,int ,void*) ;scalar_t__ enabled; int address; } ;
struct TYPE_7__ {int PC; int PR; } ;
struct TYPE_9__ {int instruction; TYPE_2__ stepOverOut; TYPE_1__ regs; } ;
typedef TYPE_3__ SH2_struct ;




 int stub1 (TYPE_3__*,int ,void*) ;
 int stub2 (TYPE_3__*,int ,void*) ;

void SH2HandleStepOverOut(SH2_struct *context)
{
   if (context->stepOverOut.enabled)
   {
      switch ((int)context->stepOverOut.type)
      {
      case 128:
         if (context->regs.PC == context->stepOverOut.address)
         {
            context->stepOverOut.enabled = 0;
            context->stepOverOut.callBack(context, context->regs.PC, (void *)context->stepOverOut.type);
         }
         break;
      case 129:
         {
            u16 inst;

            if (context->stepOverOut.levels < 0 && context->regs.PC == context->regs.PR)
            {
               context->stepOverOut.enabled = 0;
               context->stepOverOut.callBack(context, context->regs.PC, (void *)context->stepOverOut.type);
               return;
            }

            inst = context->instruction;;

            if ((inst & 0xF000) == 0xB000 ||
               (inst & 0xF0FF) == 0x0003 ||
               (inst & 0xF0FF) == 0x400B)
               context->stepOverOut.levels++;
            else if (inst == 0x000B ||
                     inst == 0x002B)
               context->stepOverOut.levels--;

            break;
         }
      default: break;
      }
   }
}
