
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; scalar_t__ offset; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IJmp ;

__attribute__((used)) static int target (Instruction *p, int i) {
  while (p[i].i.code == IJmp) i += p[i].i.offset;
  return i;
}
