
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVnodeObj ;
typedef int FILE ;


 int fclose (int *) ;
 int * vnodeList ;
 int * vnodeOpenMeterObjFile (int) ;
 int vnodeUpdateVnodeFileHeader (int *,int *) ;

int vnodeSaveVnodeInfo(int vnode) {
  FILE * fp;
  SVnodeObj *pVnode = &vnodeList[vnode];

  fp = vnodeOpenMeterObjFile(vnode);
  if (fp == ((void*)0)) return -1;

  vnodeUpdateVnodeFileHeader(fp, pVnode);

  fclose(fp);

  return 0;
}
