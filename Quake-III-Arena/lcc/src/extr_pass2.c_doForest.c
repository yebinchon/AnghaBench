
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* rcc_interface_ty ;
struct TYPE_10__ {TYPE_5__* forest; } ;
struct TYPE_15__ {TYPE_1__ u; } ;
struct TYPE_14__ {struct TYPE_14__* link; } ;
struct TYPE_11__ {int nodes; } ;
struct TYPE_12__ {TYPE_2__ rcc_Forest; } ;
struct TYPE_13__ {TYPE_3__ v; } ;
typedef TYPE_5__* Node ;


 int Gen ;
 int Seq_free (int *) ;
 int Seq_length (int ) ;
 int Seq_remlo (int ) ;
 int assert (TYPE_5__*) ;
 TYPE_8__* code (int ) ;
 TYPE_5__* visit (int ) ;

__attribute__((used)) static void doForest(rcc_interface_ty in) {
 Node *tail = &code(Gen)->u.forest;
 int i, n = Seq_length(in->v.rcc_Forest.nodes);

 for (i = 0; i < n; i++) {
  *tail = visit(Seq_remlo(in->v.rcc_Forest.nodes));
  assert(*tail);
  tail = &(*tail)->link;
 }
 *tail = ((void*)0);
 Seq_free(&in->v.rcc_Forest.nodes);
}
