
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pipe_server_handle; } ;
typedef TYPE_1__ proc_instance_t ;
typedef scalar_t__* LPSTR ;
typedef size_t DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_NO_DATA ;
 scalar_t__ GetLastError () ;
 int PRINT_LAST_ERROR () ;
 int ReadFile (int ,scalar_t__*,size_t,size_t*,int *) ;

DWORD proc_get_output(proc_instance_t *inst, LPSTR dest, DWORD sz)
{
    DWORD read_bytes;
    BOOL res = ReadFile(inst->pipe_server_handle, dest,
            sz - 1, &read_bytes, ((void*)0));
    if (!res) {
        if (GetLastError() == ERROR_NO_DATA) {
            return 0;
        } else {
            PRINT_LAST_ERROR();
            return 0;
        }
    }
    dest[read_bytes] = 0;
    return read_bytes;
}
