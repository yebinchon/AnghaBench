
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mz_stream_os_vtbl ;

void *mz_stream_os_get_interface(void)
{
    return (void *)&mz_stream_os_vtbl;
}
