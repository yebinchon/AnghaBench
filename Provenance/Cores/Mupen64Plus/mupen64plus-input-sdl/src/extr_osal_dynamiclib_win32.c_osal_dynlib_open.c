
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m64p_error ;
typedef int * m64p_dynlib_handle ;
typedef int LPTSTR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int * LoadLibrary (char const*) ;
 int LocalFree (char*) ;
 int M64ERR_INPUT_ASSERT ;
 int M64ERR_INPUT_NOT_FOUND ;
 int M64ERR_SUCCESS ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

m64p_error osal_dynlib_open(m64p_dynlib_handle *pLibHandle, const char *pccLibraryPath)
{
    if (pLibHandle == ((void*)0) || pccLibraryPath == ((void*)0))
        return M64ERR_INPUT_ASSERT;

    *pLibHandle = LoadLibrary(pccLibraryPath);

    if (*pLibHandle == ((void*)0))
    {
        char *pchErrMsg;
        DWORD dwErr = GetLastError();
        FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, ((void*)0), dwErr,
                      MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPTSTR) &pchErrMsg, 0, ((void*)0));
        fprintf(stderr, "LoadLibrary('%s') error: %s\n", pccLibraryPath, pchErrMsg);
        LocalFree(pchErrMsg);
        return M64ERR_INPUT_NOT_FOUND;
    }

    return M64ERR_SUCCESS;
}
