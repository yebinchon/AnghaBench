
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int module; } ;
typedef TYPE_1__ HttpDecodeMethod ;


 scalar_t__ strcmp (int ,int ) ;

bool httpCompareMethod(HttpDecodeMethod *pSrc, HttpDecodeMethod *pCmp) {
  if (strcmp(pSrc->module, pCmp->module) != 0) {
    return 0;
  }
  return 1;
}
