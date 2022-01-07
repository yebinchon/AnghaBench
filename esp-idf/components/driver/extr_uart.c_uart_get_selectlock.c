
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int portMUX_TYPE ;


 int uart_selectlock ;

portMUX_TYPE *uart_get_selectlock(void)
{
    return &uart_selectlock;
}
