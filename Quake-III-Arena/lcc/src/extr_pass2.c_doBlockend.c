
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rcc_interface_ty ;
struct TYPE_7__ {struct TYPE_7__* prev; int begin; } ;
struct TYPE_5__ {int begin; } ;
struct TYPE_6__ {TYPE_1__ u; } ;


 int Blockend ;
 int assert (TYPE_3__*) ;
 TYPE_3__* blockstack ;
 TYPE_2__* code (int ) ;
 int exitscope () ;

__attribute__((used)) static void doBlockend(rcc_interface_ty in) {
 assert(blockstack);
 code(Blockend)->u.begin = blockstack->begin;
 blockstack = blockstack->prev;
 exitscope();
}
