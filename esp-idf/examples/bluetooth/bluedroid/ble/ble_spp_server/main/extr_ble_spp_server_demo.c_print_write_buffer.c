
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* first_node; } ;
struct TYPE_3__ {struct TYPE_3__* next_node; int len; scalar_t__ node_buff; } ;


 TYPE_2__ SppRecvDataBuff ;
 int UART_NUM_0 ;
 TYPE_1__* temp_spp_recv_data_node_p1 ;
 int uart_write_bytes (int ,char*,int ) ;

__attribute__((used)) static void print_write_buffer(void)
{
    temp_spp_recv_data_node_p1 = SppRecvDataBuff.first_node;

    while(temp_spp_recv_data_node_p1 != ((void*)0)){
        uart_write_bytes(UART_NUM_0, (char *)(temp_spp_recv_data_node_p1->node_buff), temp_spp_recv_data_node_p1->len);
        temp_spp_recv_data_node_p1 = temp_spp_recv_data_node_p1->next_node;
    }
}
