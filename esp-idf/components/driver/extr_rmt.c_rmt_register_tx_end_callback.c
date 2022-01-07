
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rmt_tx_end_fn_t ;
struct TYPE_4__ {void* arg; int function; } ;
typedef TYPE_1__ rmt_tx_end_callback_t ;


 TYPE_1__ rmt_tx_end_callback ;

rmt_tx_end_callback_t rmt_register_tx_end_callback(rmt_tx_end_fn_t function, void *arg)
{
    rmt_tx_end_callback_t previous = rmt_tx_end_callback;
    rmt_tx_end_callback.function = function;
    rmt_tx_end_callback.arg = arg;
    return previous;
}
