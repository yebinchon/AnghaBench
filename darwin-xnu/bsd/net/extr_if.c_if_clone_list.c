
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct if_clone {int ifc_name; } ;
typedef int outbuf ;


 int EINVAL ;
 int IFNAMSIZ ;
 struct if_clone* LIST_FIRST (int *) ;
 struct if_clone* LIST_NEXT (struct if_clone*,int ) ;
 int USER_ADDR_NULL ;
 int bzero (char*,int) ;
 int copyout (char*,int ,int) ;
 int if_cloners ;
 int if_cloners_count ;
 int ifc_list ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
if_clone_list(int count, int *ret_total, user_addr_t dst)
{
 char outbuf[IFNAMSIZ];
 struct if_clone *ifc;
 int error = 0;

 *ret_total = if_cloners_count;
 if (dst == USER_ADDR_NULL) {

  return (0);
 }

 if (count < 0)
  return (EINVAL);

 count = (if_cloners_count < count) ? if_cloners_count : count;

 for (ifc = LIST_FIRST(&if_cloners); ifc != ((void*)0) && count != 0;
     ifc = LIST_NEXT(ifc, ifc_list), count--, dst += IFNAMSIZ) {
  bzero(outbuf, sizeof(outbuf));
  strlcpy(outbuf, ifc->ifc_name, IFNAMSIZ);
  error = copyout(outbuf, dst, IFNAMSIZ);
  if (error)
   break;
 }

 return (error);
}
