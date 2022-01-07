
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int payload; } ;
struct TYPE_6__ {int rawBuf; } ;
struct TYPE_8__ {int path; scalar_t__ autoDelete; int f; TYPE_2__ block; int pData; TYPE_1__ tsData; int assistBuf; } ;
typedef TYPE_3__ STSBuf ;


 int fclose (int ) ;
 int free (TYPE_3__*) ;
 int tfree (int ) ;
 int unlink (int ) ;

void tsBufDestory(STSBuf* pTSBuf) {
  if (pTSBuf == ((void*)0)) {
    return;
  }

  tfree(pTSBuf->assistBuf);
  tfree(pTSBuf->tsData.rawBuf);

  tfree(pTSBuf->pData);
  tfree(pTSBuf->block.payload);

  fclose(pTSBuf->f);

  if (pTSBuf->autoDelete) {
    unlink(pTSBuf->path);
  }

  free(pTSBuf);
}
