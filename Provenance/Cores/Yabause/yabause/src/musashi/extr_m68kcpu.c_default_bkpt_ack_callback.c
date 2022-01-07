
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int default_bkpt_ack_callback_data ;

__attribute__((used)) static void default_bkpt_ack_callback(unsigned int data)
{
 default_bkpt_ack_callback_data = data;
}
