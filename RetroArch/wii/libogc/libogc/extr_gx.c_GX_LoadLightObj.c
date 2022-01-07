
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct __gx_litobj {int nz; int ny; int nx; int pz; int py; int px; int k2; int k1; int k0; int a2; int a1; int a0; scalar_t__ col; } ;
struct TYPE_2__ {int F32; scalar_t__ U32; } ;
typedef int GXLightObj ;
 int GX_LOAD_XF_REGS (int,int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* wgPipe ;

void GX_LoadLightObj(GXLightObj *lit_obj,u8 lit_id)
{
 u32 id;
 u16 reg;
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;

 switch(lit_id) {
  case 135:
   id = 0;
   break;
  case 134:
   id = 1;
   break;
  case 133:
   id = 2;
   break;
  case 132:
   id = 3;
   break;
  case 131:
   id = 4;
   break;
  case 130:
   id = 5;
   break;
  case 129:
   id = 6;
   break;
  case 128:
   id = 7;
   break;
  default:
   id = 0;
   break;
 }

 reg = 0x600|(_SHIFTL(id,4,8));
 GX_LOAD_XF_REGS(reg,16);
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = lit->col;
 wgPipe->F32 = lit->a0;
 wgPipe->F32 = lit->a1;
 wgPipe->F32 = lit->a2;
 wgPipe->F32 = lit->k0;
 wgPipe->F32 = lit->k1;
 wgPipe->F32 = lit->k2;
 wgPipe->F32 = lit->px;
 wgPipe->F32 = lit->py;
 wgPipe->F32 = lit->pz;
 wgPipe->F32 = lit->nx;
 wgPipe->F32 = lit->ny;
 wgPipe->F32 = lit->nz;
}
