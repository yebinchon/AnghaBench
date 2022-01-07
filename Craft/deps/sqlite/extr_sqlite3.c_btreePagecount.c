
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nPage; } ;
typedef int Pgno ;
typedef TYPE_1__ BtShared ;



__attribute__((used)) static Pgno btreePagecount(BtShared *pBt){
  return pBt->nPage;
}
