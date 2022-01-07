
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct __gx_tlutobj {int tlut_fmt; int tlut_maddr; int tlut_nentries; } ;
typedef int GXTlutObj ;


 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 int memset (int *,int ,int) ;

void GX_InitTlutObj(GXTlutObj *obj,void *lut,u8 fmt,u16 entries)
{
 struct __gx_tlutobj *ptr = (struct __gx_tlutobj*)obj;

 memset(obj,0,sizeof(GXTlutObj));

 ptr->tlut_fmt = _SHIFTL(fmt,10,2);
 ptr->tlut_maddr = (ptr->tlut_maddr&~0x00ffffff)|(_SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(lut),5,24));
 ptr->tlut_maddr = (ptr->tlut_maddr&~0xff000000)|(_SHIFTL(0x64,24,8));
 ptr->tlut_nentries = entries;
}
