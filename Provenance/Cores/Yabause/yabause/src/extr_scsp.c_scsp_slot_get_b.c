
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int SCSPLOG (char*,int,int,int,int) ;
 int new_scsp ;
 int* scsp_isr ;
 int scsp_slot_read_byte (int *,int) ;

__attribute__((used)) static u8
scsp_slot_get_b (u32 s, u32 a)
{



  u8 val = scsp_isr[a ^ 3];


  if ((a & 0x1F) == 0x00) val &= 0xEF;

  SCSPLOG ("r_b slot %d (%.2X) : reg %.2X = %.2X\n", s, a, a & 0x1F, val);

  return val;
}
