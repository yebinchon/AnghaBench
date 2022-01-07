
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CMD; int ARG; } ;
struct TYPE_4__ {int SDIO_Response; int SDIO_Wait; int SDIO_CPSM; scalar_t__ SDIO_CmdIndex; int SDIO_Argument; } ;
typedef TYPE_1__ SDIO_CmdInitTypeDef ;


 int CMD_CLEAR_MASK ;
 int IS_SDIO_CMD_INDEX (scalar_t__) ;
 int IS_SDIO_CPSM (int) ;
 int IS_SDIO_RESPONSE (int) ;
 int IS_SDIO_WAIT (int) ;
 TYPE_3__* SDIO ;
 int assert_param (int ) ;

void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_SDIO_CMD_INDEX(SDIO_CmdInitStruct->SDIO_CmdIndex));
  assert_param(IS_SDIO_RESPONSE(SDIO_CmdInitStruct->SDIO_Response));
  assert_param(IS_SDIO_WAIT(SDIO_CmdInitStruct->SDIO_Wait));
  assert_param(IS_SDIO_CPSM(SDIO_CmdInitStruct->SDIO_CPSM));



  SDIO->ARG = SDIO_CmdInitStruct->SDIO_Argument;



  tmpreg = SDIO->CMD;

  tmpreg &= CMD_CLEAR_MASK;




  tmpreg |= (uint32_t)SDIO_CmdInitStruct->SDIO_CmdIndex | SDIO_CmdInitStruct->SDIO_Response
           | SDIO_CmdInitStruct->SDIO_Wait | SDIO_CmdInitStruct->SDIO_CPSM;


  SDIO->CMD = tmpreg;
}
