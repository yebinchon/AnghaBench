
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int SCSPLOG (char*,int,int,int,int) ;
 int new_scsp ;
 int * scsp_isr ;
 int scsp_slot_read_word (int *,int) ;

__attribute__((used)) static u16 scsp_slot_get_w(u32 s, u32 a)
{



  u16 val = *(u16 *)&scsp_isr[a ^ 2];

  if ((a & 0x1E) == 0x00) return val &= 0xEFFF;

  SCSPLOG ("r_w slot %d (%.2X) : reg %.2X = %.4X\n", s, a, a & 0x1E, val);

  return val;
}
