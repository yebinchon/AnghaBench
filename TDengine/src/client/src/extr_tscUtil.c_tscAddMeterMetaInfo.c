
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_8__ {int numOfTags; int tagColumnIndex; int * pMetricMeta; int * pMeterMeta; int name; } ;
struct TYPE_7__ {int numOfTables; TYPE_2__** pMeterInfo; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SMetricMeta ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef int SMeterMeta ;


 int POINTER_BYTES ;
 scalar_t__ TSDB_METER_ID_LEN ;
 int assert (int) ;
 TYPE_2__* calloc (int,int) ;
 int memcpy (int ,int*,int) ;
 void* realloc (TYPE_2__**,int) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

SMeterMetaInfo* tscAddMeterMetaInfo(SSqlCmd* pCmd, const char* name, SMeterMeta* pMeterMeta, SMetricMeta* pMetricMeta,
                                    int16_t numOfTags, int16_t* tags) {
  void* pAlloc = realloc(pCmd->pMeterInfo, (pCmd->numOfTables + 1) * POINTER_BYTES);
  if (pAlloc == ((void*)0)) {
    return ((void*)0);
  }

  pCmd->pMeterInfo = pAlloc;
  pCmd->pMeterInfo[pCmd->numOfTables] = calloc(1, sizeof(SMeterMetaInfo));

  SMeterMetaInfo* pMeterMetaInfo = pCmd->pMeterInfo[pCmd->numOfTables];
  assert(pMeterMetaInfo != ((void*)0));

  if (name != ((void*)0)) {
    assert(strlen(name) <= TSDB_METER_ID_LEN);
    strcpy(pMeterMetaInfo->name, name);
  }

  pMeterMetaInfo->pMeterMeta = pMeterMeta;
  pMeterMetaInfo->pMetricMeta = pMetricMeta;
  pMeterMetaInfo->numOfTags = numOfTags;

  if (tags != ((void*)0)) {
    memcpy(pMeterMetaInfo->tagColumnIndex, tags, sizeof(int16_t) * numOfTags);
  }

  pCmd->numOfTables += 1;

  return pMeterMetaInfo;
}
