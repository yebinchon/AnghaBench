
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,...) ;

void unity_send_signal_param(const char* signal_name, const char *parameter)
{
    if (parameter == ((void*)0)) {
        printf("Send signal: [%s]!\n", signal_name);
    } else {
        printf("Send signal: [%s][%s]!\n", signal_name, parameter);
    }
}
