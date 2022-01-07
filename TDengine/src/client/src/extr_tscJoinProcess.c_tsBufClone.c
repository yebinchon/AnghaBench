
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
typedef TYPE_1__ STSBuf ;


 TYPE_1__* tsBufCreateFromFile (int ,int) ;

STSBuf* tsBufClone(STSBuf* pTSBuf) {
  if (pTSBuf == ((void*)0)) {
    return ((void*)0);
  }

  return tsBufCreateFromFile(pTSBuf->path, 0);
}
