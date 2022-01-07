
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_input_state_t ;


 int input_state_cb ;

void retro_set_input_state(retro_input_state_t cb) { input_state_cb = cb; }
