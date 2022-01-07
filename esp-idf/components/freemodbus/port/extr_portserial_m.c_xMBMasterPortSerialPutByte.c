
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int CHAR ;
typedef int BOOL ;


 int uart_write_bytes (int ,int *,int) ;
 int ucUartNumber ;

BOOL xMBMasterPortSerialPutByte(CHAR ucByte)
{


    UCHAR ucLength = uart_write_bytes(ucUartNumber, &ucByte, 1);
    return (ucLength == 1);
}
