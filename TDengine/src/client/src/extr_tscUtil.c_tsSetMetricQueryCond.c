
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int cond; int uid; } ;
struct TYPE_4__ {size_t numOfTagCond; TYPE_2__* cond; } ;
typedef TYPE_1__ STagCond ;
typedef TYPE_2__ SCond ;


 int SStringCreate (char const*) ;
 size_t strlen (char const*) ;

void tsSetMetricQueryCond(STagCond* pTagCond, uint64_t uid, const char* str) {
  size_t len = strlen(str);
  if (len == 0) {
    return;
  }

  SCond* pDest = &pTagCond->cond[pTagCond->numOfTagCond];
  pDest->uid = uid;
  pDest->cond = SStringCreate(str);

  pTagCond->numOfTagCond += 1;
}
