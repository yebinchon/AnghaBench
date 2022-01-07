
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int,int,...) ;
 int PMAP__ATTRIBUTE_CLEAR ;
 int phys_attribute_clear_internal (int ,unsigned int,int,void*) ;

__attribute__((used)) static void
phys_attribute_clear(
 ppnum_t pn,
 unsigned int bits,
 int options,
 void *arg)
{




 PMAP_TRACE(3, PMAP_CODE(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_START, pn, bits);

 phys_attribute_clear_internal(pn, bits, options, arg);

 PMAP_TRACE(3, PMAP_CODE(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_END);
}
