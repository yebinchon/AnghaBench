
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_instance_t ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;

__attribute__((used)) static proc_instance_t *proc_instance_allocate(void)
{
    return (proc_instance_t*) HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(proc_instance_t));
}
