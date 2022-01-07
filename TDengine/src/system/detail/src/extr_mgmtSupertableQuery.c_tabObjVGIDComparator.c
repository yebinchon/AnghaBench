
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ vgId; } ;
struct TYPE_4__ {TYPE_1__ gid; } ;
typedef TYPE_2__ STabObj ;



__attribute__((used)) static int32_t tabObjVGIDComparator(const void* pLeft, const void* pRight) {
  STabObj* p1 = *(STabObj**)pLeft;
  STabObj* p2 = *(STabObj**)pRight;

  int32_t ret = p1->gid.vgId - p2->gid.vgId;
  if (ret == 0) {
    return ret;
  } else {
    return ret > 0 ? 1 : -1;
  }
}
