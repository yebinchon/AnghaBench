
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_desa_move () ;
 int desa_dcw () ;

__attribute__((used)) static void desa_li123(void)
{
  if(!check_desa_move())
    desa_dcw();
}
