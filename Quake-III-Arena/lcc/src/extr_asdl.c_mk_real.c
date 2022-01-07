
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rcc_real_ty ;
struct TYPE_3__ {int d; } ;
typedef TYPE_1__ Value ;


 int rcc_real (unsigned int,unsigned int) ;
 size_t swap ;

__attribute__((used)) static rcc_real_ty mk_real(int size, Value v) {
 unsigned *p = (unsigned *)&v.d;
 return rcc_real(p[swap], p[1-swap]);
}
