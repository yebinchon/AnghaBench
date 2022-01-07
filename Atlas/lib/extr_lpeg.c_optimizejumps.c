
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ code; scalar_t__ offset; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IEnd ;
 int dest (TYPE_2__*,int) ;
 scalar_t__ isjmp (TYPE_2__*) ;
 scalar_t__ sizei (TYPE_2__*) ;
 scalar_t__ target (TYPE_2__*,int ) ;

__attribute__((used)) static void optimizejumps (Instruction *p) {
  int i;
  for (i = 0; p[i].i.code != IEnd; i += sizei(p + i)) {
    if (isjmp(p + i))
      p[i].i.offset = target(p, dest(p, i)) - i;
  }
}
