
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct necp_fd_data {int dummy; } ;
typedef scalar_t__ proc_t ;


 int ASSERT (int) ;
 scalar_t__ PROC_NULL ;

void
necp_fd_memstatus(proc_t proc, uint32_t status,
    struct necp_fd_data *client_fd)
{
#pragma unused(proc, status, client_fd)
 ASSERT(proc != PROC_NULL);
 ASSERT(client_fd != ((void*)0));



}
