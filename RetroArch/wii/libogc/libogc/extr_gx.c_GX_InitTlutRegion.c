
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct __gx_tlutregion {int tmem_addr_conf; } ;
typedef int GXTlutRegion ;


 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;

void GX_InitTlutRegion(GXTlutRegion *region,u32 tmem_addr,u8 tlut_sz)
{
 struct __gx_tlutregion *ptr = (struct __gx_tlutregion*)region;

 tmem_addr -= 0x80000;

 ptr->tmem_addr_conf = 0;
 ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0x3ff)|(_SHIFTR(tmem_addr,9,10));
 ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0x1FFC00)|(_SHIFTL(tlut_sz,10,10));
 ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0xff000000)|(_SHIFTL(0x65,24,8));
}
