
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBException ;
typedef int eMBErrorCode ;





 int MB_EX_ILLEGAL_DATA_ADDRESS ;
 int MB_EX_NONE ;
 int MB_EX_SLAVE_BUSY ;
 int MB_EX_SLAVE_DEVICE_FAILURE ;

eMBException
prveMBError2Exception( eMBErrorCode eErrorCode )
{
    eMBException eStatus;

    switch ( eErrorCode )
    {
        case 130:
            eStatus = MB_EX_NONE;
            break;

        case 129:
            eStatus = MB_EX_ILLEGAL_DATA_ADDRESS;
            break;

        case 128:
            eStatus = MB_EX_SLAVE_BUSY;
            break;

        default:
            eStatus = MB_EX_SLAVE_DEVICE_FAILURE;
            break;
    }

    return eStatus;
}
