
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long i; unsigned long u; scalar_t__ p; } ;
typedef TYPE_1__ Value ;






 int assert (int ) ;
 int mk_real (int,TYPE_1__) ;
 int put (int ) ;
 int rcc_Defconst (int,int,unsigned long) ;
 int rcc_Defconstf (int,int ) ;

__attribute__((used)) static void asdl_defconst(int suffix, int size, Value v) {
 switch (suffix) {
 case 130: put(rcc_Defconst(suffix, size, v.i)); return;
 case 128: put(rcc_Defconst(suffix, size, v.u)); return;
 case 129: put(rcc_Defconst(suffix, size, (unsigned long)v.p)); return;
 case 131: put(rcc_Defconstf(size, mk_real(size, v))); return;
 assert(0);
 }
}
