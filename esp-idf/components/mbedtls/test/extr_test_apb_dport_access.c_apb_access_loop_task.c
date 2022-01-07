
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ REG_READ (int ) ;
 int UART_DATE_REG (int ) ;
 int apb_access_corrupt ;

__attribute__((used)) static void apb_access_loop_task(void *ignore)
{
    uint32_t initial = REG_READ(UART_DATE_REG(0));
    while(1) {
        if (REG_READ(UART_DATE_REG(0)) != initial) {
            apb_access_corrupt = 1;
        }
    }
}
