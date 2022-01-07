
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int16_t ;
struct TYPE_8__ {int tagCol; } ;
struct TYPE_7__ {scalar_t__ uid; int tagCol; } ;
struct TYPE_9__ {TYPE_2__ right; TYPE_1__ left; } ;
struct TYPE_10__ {TYPE_3__ joinInfo; } ;
struct TYPE_11__ {TYPE_4__ tagCond; } ;
typedef TYPE_4__ STagCond ;
typedef TYPE_5__ SSqlCmd ;



int16_t tscGetJoinTagColIndexByUid(SSqlCmd* pCmd, uint64_t uid) {
  STagCond* pTagCond = &pCmd->tagCond;

  if (pTagCond->joinInfo.left.uid == uid) {
    return pTagCond->joinInfo.left.tagCol;
  } else {
    return pTagCond->joinInfo.right.tagCol;
  }
}
