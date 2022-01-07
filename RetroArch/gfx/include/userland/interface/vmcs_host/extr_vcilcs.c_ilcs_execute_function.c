
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IL_FUNCTION_T ;
typedef int ILCS_SERVICE_T ;


 int VCHI_MEM_HANDLE_INVALID ;
 int ilcs_execute_function_ex (int *,int ,void*,int,int *,int ,int ,int ,int ,void*,int*) ;

int ilcs_execute_function(ILCS_SERVICE_T *st, IL_FUNCTION_T func, void *data, int len, void *resp, int *rlen)
{
   return ilcs_execute_function_ex(st, func, data, len, ((void*)0), 0, VCHI_MEM_HANDLE_INVALID, 0, 0, resp, rlen);
}
