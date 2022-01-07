
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct recv_msg_elem {int dummy; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 struct recv_msg_elem* _MALLOC (int,int ,int) ;

struct recv_msg_elem *
alloc_recv_msg_array(u_int count)
{
 struct recv_msg_elem *recv_msg_array;

 recv_msg_array = _MALLOC(count * sizeof(struct recv_msg_elem),
     M_TEMP, M_WAITOK | M_ZERO);

 return (recv_msg_array);
}
