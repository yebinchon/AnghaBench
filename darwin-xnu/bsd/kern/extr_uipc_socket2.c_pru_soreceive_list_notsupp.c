
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct socket {int dummy; } ;
struct recv_msg_elem {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_soreceive_list_notsupp(struct socket *so,
    struct recv_msg_elem *recv_msg_array, u_int uiocnt, int *flagsp)
{
#pragma unused(so, recv_msg_array, uiocnt, flagsp)
 return (EOPNOTSUPP);
}
