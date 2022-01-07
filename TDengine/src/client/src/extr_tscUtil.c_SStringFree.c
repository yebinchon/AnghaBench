
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ alloc; int z; } ;
typedef TYPE_1__ SString ;


 int tfree (int ) ;

void SStringFree(SString* pStr) {
  if (pStr->alloc > 0) {
    tfree(pStr->z);
    pStr->alloc = 0;
  }
}
