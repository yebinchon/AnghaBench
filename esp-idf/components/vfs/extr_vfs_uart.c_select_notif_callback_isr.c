
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uart_select_notif_t ;
struct TYPE_3__ {int select_sem; int errorfds; int errorfds_orig; int writefds; int writefds_orig; int readfds; int readfds_orig; } ;
typedef TYPE_1__ uart_select_args_t ;
typedef int uart_port_t ;
typedef int BaseType_t ;


 int FD_ISSET (int ,int *) ;
 int FD_SET (int ,int ) ;



 int esp_vfs_select_triggered_isr (int ,int *) ;
 int portENTER_CRITICAL_ISR (int *) ;
 int portEXIT_CRITICAL_ISR (int *) ;
 int s_registered_select_lock ;
 int s_registered_select_num ;
 TYPE_1__** s_registered_selects ;

__attribute__((used)) static void select_notif_callback_isr(uart_port_t uart_num, uart_select_notif_t uart_select_notif, BaseType_t *task_woken)
{
    portENTER_CRITICAL_ISR(&s_registered_select_lock);
    for (int i = 0; i < s_registered_select_num; ++i) {
        uart_select_args_t *args = s_registered_selects[i];
        if (args) {
            switch (uart_select_notif) {
                case 129:
                    if (FD_ISSET(uart_num, &args->readfds_orig)) {
                        FD_SET(uart_num, args->readfds);
                        esp_vfs_select_triggered_isr(args->select_sem, task_woken);
                    }
                    break;
                case 128:
                    if (FD_ISSET(uart_num, &args->writefds_orig)) {
                        FD_SET(uart_num, args->writefds);
                        esp_vfs_select_triggered_isr(args->select_sem, task_woken);
                    }
                    break;
                case 130:
                    if (FD_ISSET(uart_num, &args->errorfds_orig)) {
                        FD_SET(uart_num, args->errorfds);
                        esp_vfs_select_triggered_isr(args->select_sem, task_woken);
                    }
                    break;
            }
        }
    }
    portEXIT_CRITICAL_ISR(&s_registered_select_lock);
}
