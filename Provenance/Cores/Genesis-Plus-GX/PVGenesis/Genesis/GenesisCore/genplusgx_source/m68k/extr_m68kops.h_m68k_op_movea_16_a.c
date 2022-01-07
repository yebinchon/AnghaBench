
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int AY ;
 int MAKE_INT_16 (int ) ;

__attribute__((used)) static void m68k_op_movea_16_a(void)
{
  AX = MAKE_INT_16(AY);
}
