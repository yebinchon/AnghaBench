
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m64p_error ;
typedef int m64p_dynlib_handle ;
typedef int LPTSTR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int FreeLibrary (int ) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int M64ERR_INTERNAL ;
 int M64ERR_SUCCESS ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

m64p_error osal_dynlib_close(m64p_dynlib_handle LibHandle)
{
    int rval = FreeLibrary(LibHandle);

    if (rval == 0)
    {
        char *pchErrMsg;
        DWORD dwErr = GetLastError();
        FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, ((void*)0), dwErr,
                      MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPTSTR) &pchErrMsg, 0, ((void*)0));
        fprintf(stderr, "FreeLibrary() error: %s\n", pchErrMsg);
        LocalFree(pchErrMsg);
        return M64ERR_INTERNAL;
    }

    return M64ERR_SUCCESS;
}
