
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sign ;


 scalar_t__ OK ;
 int UartRxString (int *,int) ;
 int printf (char*,char const*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ uart_rx_one_char (int *) ;

__attribute__((used)) static void prompt_to_continue(const char* str)
{
    printf("%s , please press \"Enter\" to go on!\n", str);
    char sign[5] = {0};
    while(strlen(sign) == 0) {

        while(uart_rx_one_char((uint8_t *) sign) == OK) {
        }

        UartRxString((uint8_t*) sign, sizeof(sign) - 1);
    }
}
