
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_int32_t ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int ENOMEM ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int USER_ADDR_NULL ;
 int* _MALLOC (int,int ,int) ;
 int copyout (int ,int ,int) ;
 int if_free_protolist (int*) ;
 int if_get_protolist (struct ifnet*,int*,int) ;

__attribute__((used)) static int
ifioctl_get_protolist(struct ifnet *ifp, u_int32_t * ret_count,
    user_addr_t ifpl)
{
 u_int32_t actual_count;
 u_int32_t count;
 int error = 0;
 u_int32_t *list = ((void*)0);


 count = if_get_protolist(ifp, ((void*)0), 0);
 if (ifpl == USER_ADDR_NULL) {
  goto done;
 }


 if (*ret_count < count) {
  count = *ret_count;
 }
 if (count == 0) {
  goto done;
 }
 list = _MALLOC(count * sizeof(*list), M_TEMP, M_WAITOK | M_ZERO);
 if (list == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }
 actual_count = if_get_protolist(ifp, list, count);
 if (actual_count < count) {
  count = actual_count;
 }
 if (count != 0) {
  error = copyout((caddr_t)list, ifpl, count * sizeof(*list));
 }

 done:
 if (list != ((void*)0)) {
  if_free_protolist(list);
 }
 *ret_count = count;
 return (error);
}
