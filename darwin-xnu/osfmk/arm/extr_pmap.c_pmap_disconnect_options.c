
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 unsigned int PMAP_OPTIONS_COMPRESSOR ;
 unsigned int PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED ;
 unsigned int pmap_get_refmod (int ) ;
 scalar_t__ pmap_is_modified (int ) ;
 int pmap_page_protect_options (int ,int ,unsigned int,void*) ;

unsigned int
pmap_disconnect_options(
 ppnum_t pn,
 unsigned int options,
 void *arg)
{
 if ((options & PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED)) {
  if (pmap_is_modified(pn)) {




   options |= PMAP_OPTIONS_COMPRESSOR;
  } else {




  }
 }


 pmap_page_protect_options(pn, 0, options, arg);


 return (pmap_get_refmod(pn));
}
