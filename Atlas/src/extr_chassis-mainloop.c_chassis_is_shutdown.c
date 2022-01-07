
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int signal_shutdown ;

gboolean chassis_is_shutdown() {
 return signal_shutdown == 1;
}
