
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_INT_LEVEL ;
 int M68K_INT_ACK_AUTOVECTOR ;
 int default_int_ack_callback_data ;

__attribute__((used)) static int default_int_ack_callback(int int_level)
{
 default_int_ack_callback_data = int_level;
 CPU_INT_LEVEL = 0;
 return M68K_INT_ACK_AUTOVECTOR;
}
