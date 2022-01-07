
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tr_mov16 (int ,int) ;

__attribute__((used)) static void tr_GR0_to_r0(int op)
{
 tr_mov16(0, 0xffff);
}
