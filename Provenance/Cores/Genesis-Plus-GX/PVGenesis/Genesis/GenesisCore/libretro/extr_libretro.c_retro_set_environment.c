
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_environment_t ;


 int environ_cb ;

void retro_set_environment(retro_environment_t cb) { environ_cb = cb; }
