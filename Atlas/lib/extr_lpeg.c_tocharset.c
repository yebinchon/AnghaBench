
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum charsetanswer { ____Placeholder_charsetanswer } charsetanswer ;
struct TYPE_12__ {int tag; int cs; } ;
struct TYPE_10__ {scalar_t__ code; } ;
struct TYPE_11__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;
typedef TYPE_3__ CharsetTag ;


 scalar_t__ IEnd ;
 int ISCHARSET ;
 int NOINFO ;
 int VALIDSTARTS ;
 int fillcharset (TYPE_2__*,int ) ;
 scalar_t__ ischeck (TYPE_2__*) ;
 int op_step (TYPE_2__*) ;
 int sizei (TYPE_2__*) ;

__attribute__((used)) static enum charsetanswer tocharset (Instruction *p, CharsetTag *c) {
  if (ischeck(p)) {
    fillcharset(p, c->cs);
    if ((p + sizei(p))->i.code == IEnd && op_step(p) == 1)
      c->tag = ISCHARSET;
    else
      c->tag = VALIDSTARTS;
  }
  else
    c->tag = NOINFO;
  return c->tag;
}
