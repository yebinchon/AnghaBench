
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int default_set_fc_callback_data ;

__attribute__((used)) static void default_set_fc_callback(unsigned int new_fc)
{
 default_set_fc_callback_data = new_fc;
}
