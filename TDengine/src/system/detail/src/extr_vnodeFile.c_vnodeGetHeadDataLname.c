
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,int,int,int) ;
 char* tsDirectory ;

void vnodeGetHeadDataLname(char *headName, char *dataName, char *lastName, int vnode, int fileId) {
  if (headName != ((void*)0)) sprintf(headName, "%s/vnode%d/db/v%df%d.head", tsDirectory, vnode, vnode, fileId);
  if (dataName != ((void*)0)) sprintf(dataName, "%s/vnode%d/db/v%df%d.data", tsDirectory, vnode, vnode, fileId);
  if (lastName != ((void*)0)) sprintf(lastName, "%s/vnode%d/db/v%df%d.last", tsDirectory, vnode, vnode, fileId);
}
