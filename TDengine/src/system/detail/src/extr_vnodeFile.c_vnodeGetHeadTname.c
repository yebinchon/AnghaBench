
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,int,int,int) ;
 char* tsDirectory ;

void vnodeGetHeadTname(char *nHeadName, char *nLastName, int vnode, int fileId) {
  sprintf(nHeadName, "%s/vnode%d/db/v%df%d.t", tsDirectory, vnode, vnode, fileId);
  sprintf(nLastName, "%s/vnode%d/db/v%df%d.l", tsDirectory, vnode, vnode, fileId);
}
