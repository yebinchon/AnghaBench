
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t code; int aux; int offset; } ;
struct TYPE_10__ {TYPE_1__ i; int buff; } ;
typedef int Opcode ;
typedef TYPE_2__ Instruction ;
 int getkind (TYPE_2__ const*) ;
 int getoff (TYPE_2__ const*) ;
 int printcapkind (int ) ;
 int printcharset (int ) ;
 int printf (char*,...) ;
 int printjmp (TYPE_2__ const*,TYPE_2__ const*) ;

__attribute__((used)) static void printinst (const Instruction *op, const Instruction *p) {
  const char *const names[] = {
    "any", "char", "set", "zset",
    "testany", "testchar", "testset", "testzset",
    "span", "spanz",
    "ret", "end",
    "choice", "jmp", "call", "open_call",
    "commit", "partial_commit", "back_commit", "failtwice", "fail", "giveup",
     "func",
     "fullcapture", "emptycapture", "emptycaptureidx", "opencapture",
     "closecapture", "closeruntime"
  };
  printf("%02ld: %s ", (long)(p - op), names[p->i.code]);
  switch ((Opcode)p->i.code) {
    case 147: {
      printf("'%c'", p->i.aux);
      break;
    }
    case 131: {
      printf("'%c'", p->i.aux);
      printjmp(op, p);
      break;
    }
    case 150: {
      printf("* %d", p->i.aux);
      break;
    }
    case 132: {
      printf("* %d", p->i.aux);
      printjmp(op, p);
      break;
    }
    case 140: case 137:
    case 142: case 141:
    case 145: case 144: {
      printcapkind(getkind(p));
      printf("(n = %d)  (off = %d)", getoff(p), p->i.offset);
      break;
    }
    case 135: case 128: case 134: case 133: {
      printcharset((p+1)->buff);
      break;
    }
    case 130: case 129: {
      printcharset((p+1)->buff);
      printjmp(op, p);
      break;
    }
    case 138: {
      printf("-> %d", p->i.offset);
      break;
    }
    case 146: {
      printjmp(op, p);
      printf(" (%d)", p->i.aux);
      break;
    }
    case 139: case 148: case 143:
    case 136: case 149: {
      printjmp(op, p);
      break;
    }
    default: break;
  }
  printf("\n");
}
