
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int codeLength; int* instructionPointers; scalar_t__ codeBase; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_6__ {int codeOffset; int instructionCount; int codeLength; } ;
typedef TYPE_2__ vmHeader_t ;
typedef int byte ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 scalar_t__ Hunk_Alloc (int,int ) ;
 int h_high ;
 int loadWord (int*) ;

void VM_PrepareInterpreter( vm_t *vm, vmHeader_t *header ) {
 int op;
 int pc;
 byte *code;
 int instruction;
 int *codeBase;

 vm->codeBase = Hunk_Alloc( vm->codeLength*4, h_high );




 pc = 0;
 instruction = 0;
 code = (byte *)header + header->codeOffset;
 codeBase = (int *)vm->codeBase;

 while ( instruction < header->instructionCount ) {
  vm->instructionPointers[ instruction ] = pc;
  instruction++;

  op = code[ pc ];
  codeBase[pc] = op;
  if ( pc > header->codeLength ) {
   Com_Error( ERR_FATAL, "VM_PrepareInterpreter: pc > header->codeLength" );
  }

  pc++;


  switch ( op ) {
  case 146:
  case 147:
  case 133:
  case 137:
  case 145:
  case 129:
  case 131:
  case 135:
  case 139:
  case 142:
  case 130:
  case 134:
  case 138:
  case 141:
  case 144:
  case 128:
  case 132:
  case 136:
  case 140:
  case 143:
  case 148:
   codeBase[pc+0] = loadWord(&code[pc]);
   pc += 4;
   break;
  case 149:
   codeBase[pc+0] = code[pc];
   pc += 1;
   break;
  default:
   break;
  }

 }
 pc = 0;
 instruction = 0;
 code = (byte *)header + header->codeOffset;
 codeBase = (int *)vm->codeBase;

 while ( instruction < header->instructionCount ) {
  op = code[ pc ];
  instruction++;
  pc++;
  switch ( op ) {
  case 146:
  case 147:
  case 133:
  case 137:
  case 145:
  case 129:
  case 131:
  case 135:
  case 139:
  case 142:
  case 130:
  case 134:
  case 138:
  case 141:
  case 144:
  case 128:
  case 132:
  case 136:
  case 140:
  case 143:
  case 148:
   switch(op) {
    case 145:
    case 129:
    case 131:
    case 135:
    case 139:
    case 142:
    case 130:
    case 134:
    case 138:
    case 141:
    case 144:
    case 128:
    case 132:
    case 136:
    case 140:
    case 143:
    codeBase[pc] = vm->instructionPointers[codeBase[pc]];
    break;
   default:
    break;
   }
   pc += 4;
   break;
  case 149:
   pc += 1;
   break;
  default:
   break;
  }

 }
}
