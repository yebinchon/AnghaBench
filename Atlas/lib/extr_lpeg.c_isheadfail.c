
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ code; } ;
struct TYPE_8__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IEnd ;
 int ischeck (TYPE_2__*) ;
 int isnofail (TYPE_2__*) ;
 int sizei (TYPE_2__*) ;

__attribute__((used)) static int isheadfail (Instruction *p) {
  if (!ischeck(p)) return 0;

  for (p += sizei(p); p->i.code != IEnd; p += sizei(p))
    if (!isnofail(p)) return 0;
  return 1;
}
