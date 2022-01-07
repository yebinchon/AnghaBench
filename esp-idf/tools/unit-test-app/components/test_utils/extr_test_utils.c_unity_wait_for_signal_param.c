
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;
 int wait_user_control (char*,int ) ;

void unity_wait_for_signal_param(const char* signal_name, char* parameter_buf, uint8_t buf_len)
{
    printf("Waiting for signal: [%s]!\n", signal_name);
    if (parameter_buf == ((void*)0)) {
        printf("Please press \"Enter\" key once any board send this signal.\n");
    } else {
        printf("Please input parameter value from any board send this signal and press \"Enter\" key.\n");
    }
    wait_user_control(parameter_buf, buf_len);
}
