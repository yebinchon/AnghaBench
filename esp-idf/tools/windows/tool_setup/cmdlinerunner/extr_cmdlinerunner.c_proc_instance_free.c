
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hThread; scalar_t__ hProcess; } ;
struct TYPE_6__ {TYPE_1__ child_process; scalar_t__ pipe_client_handle; scalar_t__ pipe_server_handle; } ;
typedef TYPE_2__ proc_instance_t ;


 int CloseHandle (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int TerminateProcess (scalar_t__,int) ;

__attribute__((used)) static void proc_instance_free(proc_instance_t *instance)
{
    if (instance->pipe_server_handle) {
        CloseHandle(instance->pipe_server_handle);
    }
    if (instance->pipe_client_handle) {
        CloseHandle(instance->pipe_client_handle);
    }
    if (instance->child_process.hProcess) {
        TerminateProcess(instance->child_process.hProcess, 1);
        CloseHandle(instance->child_process.hProcess);
        CloseHandle(instance->child_process.hThread);
    }
    HeapFree(GetProcessHeap(), 0, instance);
}
