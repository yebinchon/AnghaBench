
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* td0 ) (char) ;int (* tr0 ) () ;} ;


 TYPE_1__* gPESF ;
 scalar_t__ legacy_uart_enabled ;
 scalar_t__ lpss_uart_enabled ;
 scalar_t__ pcie_uart_enabled ;
 int stub1 () ;
 int stub2 (char) ;
 scalar_t__ uart_initted ;

__attribute__((used)) static void
uart_putc(char c)
{
 if (uart_initted && (legacy_uart_enabled || lpss_uart_enabled || pcie_uart_enabled)) {
        while (!gPESF->tr0());
        gPESF->td0(c);
    }
}
