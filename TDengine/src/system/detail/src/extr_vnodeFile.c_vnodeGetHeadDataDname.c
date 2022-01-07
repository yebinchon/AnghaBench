
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,int,int,int) ;

void vnodeGetHeadDataDname(char *dHeadName, char *dDataName, char *dLastName, int vnode, int fileId, char *path) {
  if (dHeadName != ((void*)0)) sprintf(dHeadName, "%s/data/vnode%d/v%df%d.head0", path, vnode, vnode, fileId);
  if (dDataName != ((void*)0)) sprintf(dDataName, "%s/data/vnode%d/v%df%d.data", path, vnode, vnode, fileId);
  if (dLastName != ((void*)0)) sprintf(dLastName, "%s/data/vnode%d/v%df%d.last0", path, vnode, vnode, fileId);
}
