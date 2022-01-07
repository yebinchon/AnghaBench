
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numOfBuffer; scalar_t__ numOfCompleted; } ;
typedef TYPE_1__ SLocalReducer ;



__attribute__((used)) static bool isAllSourcesCompleted(SLocalReducer *pLocalReducer) {
  return (pLocalReducer->numOfBuffer == pLocalReducer->numOfCompleted);
}
