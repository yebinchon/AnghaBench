
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_4__* rcc_interface_ty ;
struct TYPE_11__ {int (* defstring ) (int ,char*) ;} ;
struct TYPE_7__ {scalar_t__ str; int len; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ rcc_Defstring; } ;
struct TYPE_10__ {TYPE_3__ v; } ;


 TYPE_6__* IR ;
 int free (char*) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void doDefstring(rcc_interface_ty in) {
 (*IR->defstring)(in->v.rcc_Defstring.s.len, (char *)in->v.rcc_Defstring.s.str);
 free((char *)in->v.rcc_Defstring.s.str);
}
