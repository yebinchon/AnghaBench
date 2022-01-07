
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_ABORT ;
 int ACTION_INT_WDT ;
 int abort () ;
 int portDISABLE_INTERRUPTS () ;
 int xt_set_intset (int) ;

__attribute__((used)) static void __attribute__((__noinline__)) recursive_func(int recur_depth, int action)
{
    if (recur_depth > 1) {
        recursive_func(recur_depth - 1, action);
    } else if (action >= 0) {
        xt_set_intset(1 << action);
    } else if (action == ACTION_ABORT) {
        abort();

    } else if (action == ACTION_INT_WDT) {
        portDISABLE_INTERRUPTS();
        while (1) {
            ;
        }
    }
}
