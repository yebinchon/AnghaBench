
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Q68WriteFunc ;
typedef int M68K_WRITE ;


 int q68_set_writeb_func (int ,int *) ;
 int * real_writeb ;
 int state ;
 int * writeb_trampoline ;

__attribute__((used)) static void m68kq68_set_writeb(M68K_WRITE *func)
{




    q68_set_writeb_func(state, (Q68WriteFunc *)func);

}
