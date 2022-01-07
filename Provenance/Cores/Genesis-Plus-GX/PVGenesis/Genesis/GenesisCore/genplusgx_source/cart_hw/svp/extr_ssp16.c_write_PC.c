
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SET_PC (int ) ;
 int g_cycles ;

__attribute__((used)) static void write_PC(u32 d)
{
  SET_PC(d);
  g_cycles--;
}
