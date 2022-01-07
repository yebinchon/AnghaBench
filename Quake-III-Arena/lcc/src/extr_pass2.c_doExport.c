
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* rcc_interface_ty ;
struct TYPE_9__ {int (* export ) (int ) ;} ;
struct TYPE_6__ {int p; } ;
struct TYPE_7__ {TYPE_1__ rcc_Export; } ;
struct TYPE_8__ {TYPE_2__ v; } ;


 TYPE_5__* IR ;
 int stub1 (int ) ;
 int uid2symbol (int ) ;

__attribute__((used)) static void doExport(rcc_interface_ty in) {
 (*IR->export)(uid2symbol(in->v.rcc_Export.p));
}
