
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int DY ;
 int MAKE_INT_16 (int ) ;

void m68k_op_movea_16_d(void)
{
 AX = MAKE_INT_16(DY);
}
