
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_err_t ;





 int STATUS__InternalError ;
 int STATUS__InvalidArgument ;
 int STATUS__InvalidProto ;
 int STATUS__Success ;

__attribute__((used)) static uint16_t err_to_status(esp_err_t err)
{
    uint16_t status;
    switch (err) {
        case 128:
            status = STATUS__Success;
            break;
        case 130:
            status = STATUS__InvalidArgument;
            break;
        case 129:
            status = STATUS__InvalidProto;
            break;
        default:
            status = STATUS__InternalError;
    }
    return status;
}
