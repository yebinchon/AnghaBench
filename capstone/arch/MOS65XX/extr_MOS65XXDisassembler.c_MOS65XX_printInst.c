
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct SStream {int dummy; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {size_t ins; int am; } ;
struct TYPE_7__ {unsigned char Opcode; int address; TYPE_1__* Operands; } ;
struct TYPE_6__ {unsigned int ImmVal; } ;
typedef TYPE_2__ MCInst ;


 TYPE_5__* InstructionInfoTable ;
 TYPE_3__* OpInfoTable ;
 int SStream_concat (struct SStream*,char*,...) ;
 int SStream_concat0 (struct SStream*,int ) ;

void MOS65XX_printInst(MCInst *MI, struct SStream *O, void *PrinterInfo)
{

 unsigned char opcode = MI->Opcode;

 SStream_concat0(O, InstructionInfoTable[OpInfoTable[MI->Opcode].ins].name);
 unsigned int value = MI->Operands[0].ImmVal;

 switch (OpInfoTable[opcode].am) {
  default:
   break;

  case 135:
   break;

  case 137:
   SStream_concat(O, " a");
   break;

  case 140:
   SStream_concat(O, " $0x%04x", value);
   break;

  case 136:
   SStream_concat(O, " #$0x%02x", value);
   break;

  case 130:
   SStream_concat(O, " $0x%02x", value);
   break;

  case 139:
   SStream_concat(O, " $0x%04x, x", value);
   break;

  case 138:
   SStream_concat(O, " $0x%04x, y", value);
   break;

  case 129:
   SStream_concat(O, " $0x%02x, x", value);
   break;

  case 128:
   SStream_concat(O, " $0x%02x, y", value);
   break;

  case 131:
   SStream_concat(O, " $0x%04x", MI->address + (signed char) value + 2);
   break;

  case 134:
   SStream_concat(O, " ($0x%04x)", value);
   break;

  case 133:
   SStream_concat(O, " ($0x%02x, x)", value);
   break;

  case 132:
   SStream_concat(O, " ($0x%02x), y", value);
   break;
 }

}
