
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfFiles; int fileId; int lastKeyOnFile; int version; int lastRemove; int lastCreate; } ;
typedef TYPE_1__ SVnodeObj ;
typedef int FILE ;


 int SEEK_SET ;
 int TSDB_FILE_HEADER_LEN ;
 int fprintf (int *,char*,int ,int ,int ) ;
 int fseek (int *,int,int ) ;

void vnodeUpdateVnodeFileHeader(FILE *fp, SVnodeObj *pVnode) {
  fseek(fp, TSDB_FILE_HEADER_LEN * 1 / 4, SEEK_SET);





  fprintf(fp, "%ld %ld %ld ", pVnode->lastCreate, pVnode->lastRemove, pVnode->version);
  fprintf(fp, "%ld %d %d ", pVnode->lastKeyOnFile, pVnode->fileId, pVnode->numOfFiles);

}
