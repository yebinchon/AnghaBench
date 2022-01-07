
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * io_rate_update_callback_t ;


 int * io_rate_update_cb ;
 int * io_rate_update_cb_default ;

void io_rate_update_register(io_rate_update_callback_t io_rate_update_cb_new) {
 if (io_rate_update_cb_new != ((void*)0)) {
  io_rate_update_cb = io_rate_update_cb_new;
 } else {
  io_rate_update_cb = io_rate_update_cb_default;
 }
}
