
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t precision; int daysPerFile; } ;
struct TYPE_5__ {int fileId; int numOfFiles; int maxFiles; int vnode; TYPE_1__ cfg; } ;
typedef TYPE_2__ SVnodeObj ;


 int taosGetTimestamp (size_t) ;
 int* tsMsPerDay ;
 int vnodeRemoveFile (int ,int) ;

void vnodeAdustVnodeFile(SVnodeObj *pVnode) {

  int fileId = pVnode->fileId - pVnode->numOfFiles + 1;
  int cfile = taosGetTimestamp(pVnode->cfg.precision)/pVnode->cfg.daysPerFile/tsMsPerDay[pVnode->cfg.precision];
  while (fileId <= cfile - pVnode->maxFiles) {
    vnodeRemoveFile(pVnode->vnode, fileId);
    pVnode->numOfFiles--;
    fileId++;
  }
}
