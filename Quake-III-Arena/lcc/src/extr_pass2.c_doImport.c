
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* rcc_interface_ty ;
struct TYPE_13__ {int (* import ) (TYPE_4__*) ;} ;
struct TYPE_12__ {int defined; } ;
struct TYPE_9__ {int p; } ;
struct TYPE_10__ {TYPE_1__ rcc_Export; } ;
struct TYPE_11__ {TYPE_2__ v; } ;
typedef TYPE_4__* Symbol ;


 TYPE_8__* IR ;
 int stub1 (TYPE_4__*) ;
 TYPE_4__* uid2symbol (int ) ;

__attribute__((used)) static void doImport(rcc_interface_ty in) {
 Symbol p = uid2symbol(in->v.rcc_Export.p);

 (*IR->import)(p);
 p->defined = 1;
}
