
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct recv_msg_elem {int * controlp; struct recv_msg_elem* psa; int * uio; } ;


 int M_TEMP ;
 int _FREE (struct recv_msg_elem*,int ) ;
 int m_freem (int *) ;
 int uio_free (int *) ;

void
free_recv_msg_array(struct recv_msg_elem *recv_msg_array, u_int count)
{
 u_int i;

 for (i = 0; i < count; i++) {
  struct recv_msg_elem *recv_msg_elem = recv_msg_array + i;

  if (recv_msg_elem->uio != ((void*)0))
   uio_free(recv_msg_elem->uio);
  if (recv_msg_elem->psa != ((void*)0))
   _FREE(recv_msg_elem->psa, M_TEMP);
  if (recv_msg_elem->controlp != ((void*)0))
   m_freem(recv_msg_elem->controlp);
 }
 _FREE(recv_msg_array, M_TEMP);
}
