
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_RESET_HI ;
 int SYSTEM_MD ;
 int SYSTEM_SMS ;
 int gen_reset (int ) ;
 int * io_reg ;
 int system_hw ;

__attribute__((used)) static void Reset_cb(void)
{
  if (system_hw & SYSTEM_MD)
  {

    gen_reset(0);
  }
  else if (system_hw == SYSTEM_SMS)
  {

    io_reg[0x0D] &= ~IO_RESET_HI;
  }
}
