
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block {struct block* prev; TYPE_3__* begin; } ;
typedef int rcc_interface_ty ;
struct TYPE_6__ {int * types; int * identifiers; int ** locals; int level; } ;
struct TYPE_5__ {TYPE_2__ block; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_3__* Code ;


 int Blockbeg ;
 int FUNC ;
 int NEW (struct block*,int ) ;
 struct block* blockstack ;
 TYPE_3__* code (int ) ;
 int enterscope () ;
 int level ;
 int ** newarray (int,int,int ) ;

__attribute__((used)) static void doBlockbeg(rcc_interface_ty in) {
 struct block *b;
 Code cp = code(Blockbeg);

 enterscope();
 cp->u.block.level = level;
 cp->u.block.locals = newarray(1, sizeof *cp->u.block.locals, FUNC);
 cp->u.block.locals[0] = ((void*)0);
 cp->u.block.identifiers = ((void*)0);
 cp->u.block.types = ((void*)0);
 NEW(b, FUNC);
 b->begin = cp;
 b->prev = blockstack;
 blockstack = b;
}
