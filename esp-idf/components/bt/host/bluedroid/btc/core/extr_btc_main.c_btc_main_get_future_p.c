
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int future_t ;
typedef size_t btc_main_future_type_t ;


 int ** main_future ;

future_t **btc_main_get_future_p(btc_main_future_type_t type)
{
    return &main_future[type];
}
