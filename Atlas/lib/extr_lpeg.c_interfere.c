
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tag; int cs; } ;
struct TYPE_7__ {int code; int aux; } ;
struct TYPE_8__ {TYPE_1__ i; int buff; } ;
typedef TYPE_2__ Instruction ;
typedef TYPE_3__ CharsetTag ;


 int ITestAny ;


 scalar_t__ NOINFO ;
 int assert (int) ;
 int exclusiveset (int ,int ) ;
 scalar_t__ nofail (TYPE_2__*,int) ;
 int testchar (int ,int ) ;

__attribute__((used)) static int interfere (Instruction *p1, int l1, CharsetTag *st2) {
  if (nofail(p1, l1))
    return 0;
  if (st2->tag == NOINFO) return 1;
  switch (p1->i.code) {
    case 129: return testchar(st2->cs, p1->i.aux);
    case 128: return !exclusiveset(st2->cs, (p1 + 1)->buff);
    default: assert(p1->i.code == ITestAny); return 1;
  }
}
