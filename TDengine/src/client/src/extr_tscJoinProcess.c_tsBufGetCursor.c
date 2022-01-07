
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vnodeIndex; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;
typedef TYPE_1__ STSCursor ;
typedef TYPE_2__ STSBuf ;



STSCursor tsBufGetCursor(STSBuf* pTSBuf) {
  STSCursor c = {.vnodeIndex = -1};
  if (pTSBuf == ((void*)0)) {
    return c;
  }

  return pTSBuf->cur;
}
