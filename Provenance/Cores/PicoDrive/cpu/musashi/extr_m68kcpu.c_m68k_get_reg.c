
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* dar; int t1_flag; int t0_flag; int s_flag; int m_flag; int int_mask; int x_flag; int n_flag; int v_flag; int c_flag; unsigned int* sp; unsigned int sfc; unsigned int dfc; unsigned int vbr; unsigned int cacr; unsigned int caar; unsigned int pref_addr; unsigned int pref_data; unsigned int ir; int cpu_type; int ppc; int not_z_flag; int pc; } ;
typedef TYPE_1__ m68ki_cpu_core ;
typedef int m68k_register_t ;


 int CFLAG_SET ;






 scalar_t__ M68K_CPU_TYPE_68000 ;
 scalar_t__ M68K_CPU_TYPE_68008 ;
 scalar_t__ M68K_CPU_TYPE_68010 ;
 scalar_t__ M68K_CPU_TYPE_68020 ;
 scalar_t__ M68K_CPU_TYPE_68040 ;
 scalar_t__ M68K_CPU_TYPE_68EC020 ;
 unsigned int M68K_CPU_TYPE_INVALID ;
 unsigned int MASK_OUT_ABOVE_32 (int ) ;
 int NFLAG_SET ;
 int VFLAG_SET ;
 int XFLAG_SET ;
 TYPE_1__ m68ki_cpu ;

unsigned int m68k_get_reg(void* context, m68k_register_t regnum)
{
 m68ki_cpu_core* cpu = context != ((void*)0) ?(m68ki_cpu_core*)context : &m68ki_cpu;

 switch(regnum)
 {
  case 148: return cpu->dar[0];
  case 147: return cpu->dar[1];
  case 146: return cpu->dar[2];
  case 145: return cpu->dar[3];
  case 144: return cpu->dar[4];
  case 143: return cpu->dar[5];
  case 142: return cpu->dar[6];
  case 141: return cpu->dar[7];
  case 159: return cpu->dar[8];
  case 158: return cpu->dar[9];
  case 157: return cpu->dar[10];
  case 156: return cpu->dar[11];
  case 155: return cpu->dar[12];
  case 154: return cpu->dar[13];
  case 153: return cpu->dar[14];
  case 152: return cpu->dar[15];
  case 136: return MASK_OUT_ABOVE_32(cpu->pc);
  case 130: return cpu->t1_flag |
         cpu->t0_flag |
         (cpu->s_flag << 11) |
         (cpu->m_flag << 11) |
         cpu->int_mask |
         ((cpu->x_flag & XFLAG_SET) >> 4) |
         ((cpu->n_flag & NFLAG_SET) >> 4) |
         ((!cpu->not_z_flag) << 2) |
         ((cpu->v_flag & VFLAG_SET) >> 6) |
         ((cpu->c_flag & CFLAG_SET) >> 8);
  case 131: return cpu->dar[15];
  case 129: return cpu->s_flag ? cpu->sp[0] : cpu->dar[15];
  case 138: return cpu->s_flag && !cpu->m_flag ? cpu->dar[15] : cpu->sp[4];
  case 137: return cpu->s_flag && cpu->m_flag ? cpu->dar[15] : cpu->sp[6];
  case 132: return cpu->sfc;
  case 140: return cpu->dfc;
  case 128: return cpu->vbr;
  case 150: return cpu->cacr;
  case 151: return cpu->caar;
  case 134: return cpu->pref_addr;
  case 133: return cpu->pref_data;
  case 135: return MASK_OUT_ABOVE_32(cpu->ppc);
  case 139: return cpu->ir;
  case 149:
   switch(cpu->cpu_type)
   {
    case 165: return (unsigned int)M68K_CPU_TYPE_68000;
    case 164: return (unsigned int)M68K_CPU_TYPE_68008;
    case 163: return (unsigned int)M68K_CPU_TYPE_68010;
    case 160: return (unsigned int)M68K_CPU_TYPE_68EC020;
    case 162: return (unsigned int)M68K_CPU_TYPE_68020;
    case 161: return (unsigned int)M68K_CPU_TYPE_68040;
   }
   return M68K_CPU_TYPE_INVALID;
  default: return 0;
 }
 return 0;
}
