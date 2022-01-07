
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code; int offset; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 int CHARSETINSTSIZE ;
 scalar_t__ IFunc ;
 scalar_t__ hascharset (TYPE_2__ const*) ;

__attribute__((used)) static int sizei (const Instruction *i) {
  if (hascharset(i)) return CHARSETINSTSIZE;
  else if (i->i.code == IFunc) return i->i.offset;
  else return 1;
}
