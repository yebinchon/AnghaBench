
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int m68k_register_t ;
struct TYPE_2__ {unsigned int* dar; int t1_flag; int s_flag; int int_mask; int x_flag; int n_flag; int v_flag; int c_flag; unsigned int* sp; unsigned int pref_addr; unsigned int pref_data; unsigned int ir; int not_z_flag; int pc; } ;


 int CFLAG_SET ;
 unsigned int MASK_OUT_ABOVE_32 (int ) ;
 int NFLAG_SET ;
 int VFLAG_SET ;
 int XFLAG_SET ;
 TYPE_1__ m68ki_cpu ;

unsigned int s68k_get_reg(m68k_register_t regnum)
{
  switch(regnum)
  {
    case 143: return m68ki_cpu.dar[0];
    case 142: return m68ki_cpu.dar[1];
    case 141: return m68ki_cpu.dar[2];
    case 140: return m68ki_cpu.dar[3];
    case 139: return m68ki_cpu.dar[4];
    case 138: return m68ki_cpu.dar[5];
    case 137: return m68ki_cpu.dar[6];
    case 136: return m68ki_cpu.dar[7];
    case 151: return m68ki_cpu.dar[8];
    case 150: return m68ki_cpu.dar[9];
    case 149: return m68ki_cpu.dar[10];
    case 148: return m68ki_cpu.dar[11];
    case 147: return m68ki_cpu.dar[12];
    case 146: return m68ki_cpu.dar[13];
    case 145: return m68ki_cpu.dar[14];
    case 144: return m68ki_cpu.dar[15];
    case 133: return MASK_OUT_ABOVE_32(m68ki_cpu.pc);
    case 129: return m68ki_cpu.t1_flag |
                  (m68ki_cpu.s_flag << 11) |
                   m68ki_cpu.int_mask |
                  ((m68ki_cpu.x_flag & XFLAG_SET) >> 4) |
                  ((m68ki_cpu.n_flag & NFLAG_SET) >> 4) |
                  ((!m68ki_cpu.not_z_flag) << 2) |
                  ((m68ki_cpu.v_flag & VFLAG_SET) >> 6) |
                  ((m68ki_cpu.c_flag & CFLAG_SET) >> 8);
    case 130: return m68ki_cpu.dar[15];
    case 128: return m68ki_cpu.s_flag ? m68ki_cpu.sp[0] : m68ki_cpu.dar[15];
    case 134: return m68ki_cpu.s_flag ? m68ki_cpu.dar[15] : m68ki_cpu.sp[4];




    case 135: return m68ki_cpu.ir;
    default: return 0;
  }
}
