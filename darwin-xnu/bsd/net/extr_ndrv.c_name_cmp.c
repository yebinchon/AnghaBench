
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int IFNAMSIZ ;
 int ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,char*) ;
 int sprint_d (int ,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (int ) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int name_cmp(struct ifnet *ifp, char *q)
{ char *r;
 int len;
 char buf[IFNAMSIZ];

 r = buf;
 len = strlen(ifnet_name(ifp));
 strlcpy(r, ifnet_name(ifp), IFNAMSIZ);
 r += len;
 sprint_d(ifnet_unit(ifp), r, IFNAMSIZ-(r-buf));



 return(strncmp(buf, q, IFNAMSIZ));
}
