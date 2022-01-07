
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m64p_dynlib_handle ;


 void* dlsym (int ,char const*) ;

void * osal_dynlib_getproc(m64p_dynlib_handle LibHandle, const char *pccProcedureName)
{
    if (pccProcedureName == ((void*)0))
        return ((void*)0);

    return dlsym(LibHandle, pccProcedureName);
}
