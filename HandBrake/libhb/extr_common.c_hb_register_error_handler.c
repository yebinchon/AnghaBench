
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_error_handler_t ;


 int * error_handler ;

void hb_register_error_handler( hb_error_handler_t * handler )
{
    error_handler = handler;
}
