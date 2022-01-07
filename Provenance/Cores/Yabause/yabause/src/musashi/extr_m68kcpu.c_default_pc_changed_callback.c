
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int default_pc_changed_callback_data ;

__attribute__((used)) static void default_pc_changed_callback(unsigned int new_pc)
{
 default_pc_changed_callback_data = new_pc;
}
