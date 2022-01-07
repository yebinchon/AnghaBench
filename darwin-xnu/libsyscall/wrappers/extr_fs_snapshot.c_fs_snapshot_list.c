
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct attrlist {int dummy; } ;


 int EINVAL ;
 int FSOPT_LIST_SNAPSHOT ;
 int errno ;
 int getattrlistbulk (int,struct attrlist*,void*,size_t,int ) ;

int
fs_snapshot_list(int dirfd, struct attrlist *alist, void *attrbuf, size_t bufsize,
    uint32_t flags)
{
 if (flags != 0) {
  errno = EINVAL;
  return (-1);
 }

 return (getattrlistbulk(dirfd, alist, attrbuf, bufsize,
     FSOPT_LIST_SNAPSHOT));
}
