
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ uid; scalar_t__ sversion; int numOfColumns; scalar_t__ numOfTags; } ;
struct TYPE_9__ {scalar_t__ bytes; } ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SMeterMeta ;


 scalar_t__ memcmp (TYPE_2__*,TYPE_2__*,size_t) ;
 TYPE_1__* tsGetColumnSchema (TYPE_2__*,scalar_t__) ;

bool tsMeterMetaIdentical(SMeterMeta* p1, SMeterMeta* p2) {
  if (p1 == ((void*)0) || p2 == ((void*)0) || p1->uid != p2->uid || p1->sversion != p2->sversion) {
    return 0;
  }

  if (p1 == p2) {
    return 1;
  }

  size_t size = sizeof(SMeterMeta) + p1->numOfColumns * sizeof(SSchema);

  for (int32_t i = 0; i < p1->numOfTags; ++i) {
    SSchema* pColSchema = tsGetColumnSchema(p1, i + p1->numOfColumns);
    size += pColSchema->bytes;
  }

  return memcmp(p1, p2, size) == 0;
}
