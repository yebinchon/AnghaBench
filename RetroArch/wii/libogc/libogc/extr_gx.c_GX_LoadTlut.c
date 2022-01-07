
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gx_tlutregion {int tmem_addr_conf; int tmem_addr_base; int tlut_maddr; int tlut_nentries; } ;
struct __gx_tlutobj {int tlut_maddr; int tlut_fmt; int tlut_nentries; } ;
typedef int GXTlutObj ;


 int GX_LOAD_BP_REG (int) ;
 int __GX_FlushTextureState () ;
 scalar_t__ tlut_regionCB (int ) ;

void GX_LoadTlut(GXTlutObj *obj,u32 tlut_name)
{
 struct __gx_tlutregion *region = ((void*)0);
 struct __gx_tlutobj *ptr = (struct __gx_tlutobj*)obj;

 if(tlut_regionCB)
  region = (struct __gx_tlutregion*)tlut_regionCB(tlut_name);

 __GX_FlushTextureState();
 GX_LOAD_BP_REG(ptr->tlut_maddr);
 GX_LOAD_BP_REG(region->tmem_addr_conf);
 __GX_FlushTextureState();

 region->tmem_addr_base = (ptr->tlut_fmt&~0x3ff)|(region->tmem_addr_conf&0x3ff);
 region->tlut_maddr = ptr->tlut_maddr;
 region->tlut_nentries = ptr->tlut_nentries;
}
