
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* rcc_interface_ty ;
struct TYPE_15__ {int (* global ) (TYPE_5__*) ;} ;
struct TYPE_10__ {int seg; } ;
struct TYPE_14__ {int defined; TYPE_1__ u; } ;
struct TYPE_11__ {int seg; int p; } ;
struct TYPE_12__ {TYPE_2__ rcc_Global; } ;
struct TYPE_13__ {TYPE_3__ v; } ;
typedef TYPE_5__* Symbol ;


 TYPE_9__* IR ;
 int stub1 (TYPE_5__*) ;
 TYPE_5__* uid2symbol (int ) ;

__attribute__((used)) static void doGlobal(rcc_interface_ty in) {
 Symbol p = uid2symbol(in->v.rcc_Global.p);

 p->u.seg = in->v.rcc_Global.seg;
 (*IR->global)(p);
 p->defined = 1;
}
