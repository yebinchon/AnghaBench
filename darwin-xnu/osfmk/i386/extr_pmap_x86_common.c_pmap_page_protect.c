
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int ppnum_t ;


 int pmap_page_protect_options (int ,int ,int ,int *) ;

void
pmap_page_protect(
        ppnum_t pn,
 vm_prot_t prot)
{
 pmap_page_protect_options(pn, prot, 0, ((void*)0));
}
