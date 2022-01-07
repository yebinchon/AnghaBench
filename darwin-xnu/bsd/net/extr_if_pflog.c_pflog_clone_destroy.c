
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ifnet_detach (struct ifnet*) ;
 int pflog_remove (struct ifnet*) ;

__attribute__((used)) static int
pflog_clone_destroy(struct ifnet *ifp)
{
 int error = 0;

 if ((error = pflog_remove(ifp)) != 0)
  goto done;

 (void)ifnet_detach(ifp);
done:
 return (error);
}
