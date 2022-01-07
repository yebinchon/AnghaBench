
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int read_pc () ;

__attribute__((used)) static s32 immL(void)
{
  return (read_pc()<<16) | (read_pc()&0xffff );
}
