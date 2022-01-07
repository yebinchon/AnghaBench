
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int pmap_clear_refmod_options (int ,unsigned int,int ,int *) ;

void
pmap_clear_refmod(
 ppnum_t pn,
 unsigned int mask)
{
 pmap_clear_refmod_options(pn, mask, 0, ((void*)0));
}
