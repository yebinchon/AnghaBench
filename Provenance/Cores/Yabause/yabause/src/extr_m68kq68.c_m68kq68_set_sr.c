
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int q68_set_sr (int ,int ) ;
 int state ;

__attribute__((used)) static void m68kq68_set_sr(u32 val)
{
    q68_set_sr(state, val);
}
