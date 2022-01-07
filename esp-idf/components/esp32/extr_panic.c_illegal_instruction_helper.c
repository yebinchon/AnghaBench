
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pc; } ;
typedef TYPE_1__ XtExcFrame ;


 int SOC_IROM_HIGH ;
 int SOC_IROM_MASK_LOW ;
 int panicPutHex (int volatile) ;
 int panicPutStr (char*) ;

__attribute__((used)) static void illegal_instruction_helper(XtExcFrame *frame)
{

    uint32_t epc = frame->pc;
    epc = (epc & ~0x3) - 4;


    if (epc < SOC_IROM_MASK_LOW || epc >= SOC_IROM_HIGH) {
        return;
    }
    volatile uint32_t* pepc = (uint32_t*)epc;

    panicPutStr("Memory dump at 0x");
    panicPutHex(epc);
    panicPutStr(": ");

    panicPutHex(*pepc);
    panicPutStr(" ");
    panicPutHex(*(pepc + 1));
    panicPutStr(" ");
    panicPutHex(*(pepc + 2));
    panicPutStr("\r\n");
}
