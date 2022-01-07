
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int USART_Mode; int USART_HardwareFlowControl; int USART_Parity; int USART_StopBits; int USART_WordLength; int USART_BaudRate; } ;
typedef TYPE_1__ USART_InitTypeDef ;
struct TYPE_9__ {int configured; scalar_t__ frame_available; int USARTx; int baud; int IRQn; int num_pins; int pins; int apb2; int apb1; int ahb1; int rx_buf_size; int rx_buf; int rx_fifo; } ;
struct TYPE_8__ {int NVIC_IRQChannelCmd; scalar_t__ NVIC_IRQChannelSubPriority; scalar_t__ NVIC_IRQChannelPreemptionPriority; int NVIC_IRQChannel; } ;
typedef TYPE_2__ NVIC_InitTypeDef ;
typedef TYPE_3__ CONFIG_USART_ConfigState ;


 int CONFIG_pins (int ,int ) ;
 int ENABLE ;
 int FIFO_InitStruct (int ,int ,int ) ;
 int NVIC_Init (TYPE_2__*) ;
 int RCC_AHB1PeriphClockCmd (int ,int ) ;
 int RCC_APB1PeriphClockCmd (int ,int ) ;
 int RCC_APB2PeriphClockCmd (int ,int ) ;
 int USART_Cmd (int ,int ) ;
 int USART_DeInit (int ) ;
 int USART_HardwareFlowControl_None ;
 int USART_ITConfig (int ,int ,int ) ;
 int USART_IT_IDLE ;
 int USART_IT_RXNE ;
 int USART_Init (int ,TYPE_1__*) ;
 int USART_Mode_Rx ;
 int USART_Mode_Tx ;
 int USART_Parity_No ;
 int USART_StopBits_1 ;
 int USART_WordLength_8b ;

void UART_Config(CONFIG_USART_ConfigState *cfg) {
 USART_InitTypeDef USART_InitStructure;
 NVIC_InitTypeDef NVIC_InitStructure;

 FIFO_InitStruct(cfg->rx_fifo, cfg->rx_buf, cfg->rx_buf_size);


 RCC_AHB1PeriphClockCmd(cfg->ahb1, ENABLE);
 RCC_APB1PeriphClockCmd(cfg->apb1, ENABLE);
 RCC_APB2PeriphClockCmd(cfg->apb2, ENABLE);


 CONFIG_pins(cfg->pins, cfg->num_pins);


 NVIC_InitStructure.NVIC_IRQChannel = cfg->IRQn;
 NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
 NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
 NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
 NVIC_Init(&NVIC_InitStructure);


 USART_DeInit(cfg->USARTx);
 USART_InitStructure.USART_BaudRate = cfg->baud;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
 USART_Init(cfg->USARTx, &USART_InitStructure);


 USART_ITConfig(cfg->USARTx, USART_IT_RXNE, ENABLE);
    USART_ITConfig(cfg->USARTx, USART_IT_IDLE, ENABLE);


 USART_Cmd(cfg->USARTx, ENABLE);
 cfg->configured = 1;
 cfg->frame_available = 0;
}
