
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;


 int vn_open_modflags (struct nameidata*,int*,int) ;

int
vn_open(struct nameidata *ndp, int fmode, int cmode)
{
 return(vn_open_modflags(ndp, &fmode, cmode));
}
