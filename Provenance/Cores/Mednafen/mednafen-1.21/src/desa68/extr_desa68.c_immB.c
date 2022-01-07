
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;
typedef int s32 ;


 scalar_t__ read_pc () ;

__attribute__((used)) static s32 immB(void)
{
  return (s32)(s8)read_pc();
}
