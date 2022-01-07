
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPN_MAX ;
 int EXPN_SZ ;
 int _ccv_expn_init ;
 int * _ccv_expn_tab ;
 int exp (double) ;

__attribute__((used)) static void _ccv_precomputed_expn()
{
 int i;
 for(i = 0; i < EXPN_SZ + 1; i++)
  _ccv_expn_tab[i] = exp(-(double)i * (EXPN_MAX / EXPN_SZ));
 _ccv_expn_init = 1;
}
