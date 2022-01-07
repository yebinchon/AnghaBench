
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int q68_get_dreg (int ,int ) ;
 int state ;

__attribute__((used)) static u32 m68kq68_get_dreg(u32 num)
{
    return q68_get_dreg(state, num);
}
