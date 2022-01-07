
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; int aux; int code; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
typedef int Opcode ;
typedef TYPE_2__ Instruction ;



__attribute__((used)) static void setinstaux (Instruction *i, Opcode op, int offset, int aux) {
  i->i.code = op;
  i->i.offset = offset;
  i->i.aux = aux;
}
