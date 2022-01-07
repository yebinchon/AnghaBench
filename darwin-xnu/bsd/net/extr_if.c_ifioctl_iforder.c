
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int u_long ;
typedef int u_int32_t ;
struct if_order {int ifo_count; int ifo_ordered_indices; } ;
typedef int * caddr_t ;


 int EINVAL ;
 int ENOMEM ;
 int FALSE ;
 int M_NECP ;
 int M_WAITOK ;

 int TRUE ;
 int USER_ADDR_NULL ;
 int VERIFY (int ) ;
 int _FREE (int*,int ) ;
 int* _MALLOC (size_t,int ,int ) ;
 int copyin (int ,int*,size_t) ;
 int if_index ;
 int ifnet_reset_order (int*,size_t) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_iforder(u_long cmd, caddr_t data)
{
 int error = 0;
 u_int32_t *ordered_indices = ((void*)0);
 if (data == ((void*)0)) {
  return (EINVAL);
 }

 switch (cmd) {
 case 128: {
  struct if_order *ifo = (struct if_order *)(void *)data;

  if (ifo->ifo_count > (u_int32_t)if_index) {
   error = EINVAL;
   break;
  }

  size_t length = (ifo->ifo_count * sizeof(u_int32_t));
  if (length > 0) {
   if (ifo->ifo_ordered_indices == USER_ADDR_NULL) {
    error = EINVAL;
    break;
   }
   ordered_indices = _MALLOC(length, M_NECP, M_WAITOK);
   if (ordered_indices == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   error = copyin(ifo->ifo_ordered_indices,
       ordered_indices, length);
   if (error != 0) {
    break;
   }


   bool found_duplicate = FALSE;
   for (uint32_t i = 0; i < (ifo->ifo_count - 1) && !found_duplicate ; i++){
    for (uint32_t j = i + 1; j < ifo->ifo_count && !found_duplicate ; j++){
     if (ordered_indices[j] == ordered_indices[i]){
      error = EINVAL;
      found_duplicate = TRUE;
      break;
     }
    }
   }
   if (found_duplicate) {
    break;
   }
  }

  error = ifnet_reset_order(ordered_indices, ifo->ifo_count);

  break;
 }

 default: {
  VERIFY(0);

 }
 }

 if (ordered_indices != ((void*)0)) {
  _FREE(ordered_indices, M_NECP);
 }

 return (error);
}
