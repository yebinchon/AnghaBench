
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_7__ {int uid; int cond; } ;
struct TYPE_9__ {size_t numOfTagCond; int relType; TYPE_2__* cond; int joinInfo; TYPE_1__ tbnameCond; } ;
struct TYPE_8__ {int uid; int cond; } ;
typedef TYPE_3__ STagCond ;
typedef int SJoinInfo ;


 int SStringCopy (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;

void tscTagCondCopy(STagCond* dest, const STagCond* src) {
  memset(dest, 0, sizeof(STagCond));

  SStringCopy(&dest->tbnameCond.cond, &src->tbnameCond.cond);
  dest->tbnameCond.uid = src->tbnameCond.uid;

  memcpy(&dest->joinInfo, &src->joinInfo, sizeof(SJoinInfo));

  for (int32_t i = 0; i < src->numOfTagCond; ++i) {
    SStringCopy(&dest->cond[i].cond, &src->cond[i].cond);
    dest->cond[i].uid = src->cond[i].uid;
  }

  dest->relType = src->relType;
  dest->numOfTagCond = src->numOfTagCond;
}
