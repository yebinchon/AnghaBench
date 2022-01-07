
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 unsigned int pmap_get_refmod (int ) ;
 int pmap_page_protect (int ,int ) ;

unsigned int
pmap_disconnect(
 ppnum_t pn)
{
 pmap_page_protect(pn, 0);
 return (pmap_get_refmod(pn));
}
