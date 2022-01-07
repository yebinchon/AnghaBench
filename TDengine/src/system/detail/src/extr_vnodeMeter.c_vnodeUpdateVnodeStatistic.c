
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vnodeStatistic; } ;
typedef int SVnodeStatisticInfo ;
typedef TYPE_1__ SVnodeObj ;
typedef int FILE ;


 int SEEK_SET ;
 int TSDB_FILE_HEADER_VERSION_SIZE ;
 int fseek (int *,int ,int ) ;
 int fwrite (int *,int,int,int *) ;

int vnodeUpdateVnodeStatistic(FILE *fp, SVnodeObj *pVnode) {
  fseek(fp, TSDB_FILE_HEADER_VERSION_SIZE, SEEK_SET);
  fwrite(&(pVnode->vnodeStatistic), sizeof(SVnodeStatisticInfo), 1, fp);

  return 0;
}
