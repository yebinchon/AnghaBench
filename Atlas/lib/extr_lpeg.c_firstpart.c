
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offset; scalar_t__ code; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IChoice ;
 scalar_t__ ICommit ;
 scalar_t__ IJmp ;
 scalar_t__ istest (TYPE_2__*) ;

__attribute__((used)) static int firstpart (Instruction *p, int l) {
  if (istest(p)) {
    int e = p[0].i.offset - 1;
    if ((p[e].i.code == IJmp || p[e].i.code == ICommit) &&
        e + p[e].i.offset == l)
      return e + 1;
  }
  else if (p[0].i.code == IChoice) {
    int e = p[0].i.offset - 1;
    if (p[e].i.code == ICommit && e + p[e].i.offset == l)
      return e + 1;
  }
  return 0;
}
