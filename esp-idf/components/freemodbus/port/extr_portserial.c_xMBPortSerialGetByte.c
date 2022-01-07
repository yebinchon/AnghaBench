
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int MB_PORT_CHECK (int,int ,char*) ;
 size_t MB_SERIAL_BUF_SIZE ;
 int TRUE ;
 int assert (int ) ;
 int * ucBuffer ;
 size_t uiRxBufferPos ;

BOOL xMBPortSerialGetByte(CHAR* pucByte)
{
    assert(pucByte != ((void*)0));
    MB_PORT_CHECK((uiRxBufferPos < MB_SERIAL_BUF_SIZE),
            FALSE, "mb stack serial get byte failure.");
    *pucByte = ucBuffer[uiRxBufferPos];
    uiRxBufferPos++;
    return TRUE;
}
