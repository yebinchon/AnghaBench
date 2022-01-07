
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* rcc_interface_ty ;
struct TYPE_12__ {int d; } ;
typedef TYPE_4__ Value ;
struct TYPE_14__ {int (* defconst ) (int ,int ,TYPE_4__) ;} ;
struct TYPE_13__ {unsigned int msb; unsigned int lsb; } ;
struct TYPE_10__ {TYPE_6__* value; int size; } ;
struct TYPE_9__ {TYPE_2__ rcc_Defconstf; } ;
struct TYPE_11__ {TYPE_1__ v; } ;


 int F ;
 TYPE_8__* IR ;
 int free (TYPE_6__*) ;
 int stub1 (int ,int ,TYPE_4__) ;
 size_t swap ;

__attribute__((used)) static void doDefconstf(rcc_interface_ty in) {
 Value v;
 unsigned *p = (unsigned *)&v.d;

 p[swap] = in->v.rcc_Defconstf.value->msb;
 p[1-swap] = in->v.rcc_Defconstf.value->lsb;
 (*IR->defconst)(F, in->v.rcc_Defconstf.size, v);
 free(in->v.rcc_Defconstf.value);
}
