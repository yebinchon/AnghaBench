
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECUR_DEPTH ;
 int SW_ISR_LEVEL_1 ;
 int SW_ISR_LEVEL_3 ;
 int recursive_func (int ,int ) ;
 int xt_set_intclear (int) ;

__attribute__((used)) static void level_one_isr(void *arg)
{
    xt_set_intclear(1 << SW_ISR_LEVEL_1);
    recursive_func(RECUR_DEPTH, SW_ISR_LEVEL_3);
}
