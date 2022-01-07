
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_ssf2_write8 (int,int ) ;
 int * ssf2_banks ;

__attribute__((used)) static void carthw_ssf2_statef(void)
{
 int i;
 for (i = 1; i < 8; i++)
  carthw_ssf2_write8(0xa130f0 | (i << 1), ssf2_banks[i]);
}
