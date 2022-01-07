
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pad_connection_listener_t ;


 int * pad_connection_listener ;

void set_connection_listener(pad_connection_listener_t *listener)
{
   pad_connection_listener = listener;
}
