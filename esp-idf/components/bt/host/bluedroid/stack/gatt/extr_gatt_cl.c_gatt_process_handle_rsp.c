
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_CLCB ;


 int GATT_SUCCESS ;
 int gatt_end_operation (int *,int ,int *) ;

void gatt_process_handle_rsp(tGATT_CLCB *p_clcb)
{
    gatt_end_operation(p_clcb, GATT_SUCCESS, ((void*)0));
}
