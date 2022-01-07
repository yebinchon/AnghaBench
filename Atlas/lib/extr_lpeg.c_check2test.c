
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offset; int code; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IAny ;
 scalar_t__ ITestAny ;
 int assert (int ) ;
 int ischeck (TYPE_2__*) ;

__attribute__((used)) static void check2test (Instruction *p, int n) {
  assert(ischeck(p));
  p->i.code += ITestAny - IAny;
  p->i.offset = n;
}
