
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SERVICE_ID ;
typedef int BOOLEAN ;


 int btc_in_execute_service_request (int ,int ) ;

void btc_dm_execute_service_request(BOOLEAN enable, char *p_param)
{
    btc_in_execute_service_request(*((tBTA_SERVICE_ID *)p_param), enable);
}
