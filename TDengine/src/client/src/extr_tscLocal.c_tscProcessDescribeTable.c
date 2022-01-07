
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {int * pMeterMeta; } ;
struct TYPE_7__ {int cmd; } ;
typedef TYPE_1__ SSqlObj ;


 int assert (int ) ;
 scalar_t__ tscBuildMeterSchemaResultFields (TYPE_1__*,scalar_t__ const,scalar_t__ const,scalar_t__) ;
 int tscFieldInfoCalOffset (int *) ;
 TYPE_5__* tscGetMeterMetaInfo (int *,int ) ;
 scalar_t__ tscMaxLengthOfTagsFields (TYPE_1__*) ;
 scalar_t__ tscSetValueToResObj (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int32_t tscProcessDescribeTable(SSqlObj *pSql) {
  assert(tscGetMeterMetaInfo(&pSql->cmd, 0)->pMeterMeta != ((void*)0));

  const int32_t NUM_OF_DESCRIBE_TABLE_COLUMNS = 4;
  const int32_t TYPE_COLUMN_LENGTH = 16;
  const int32_t NOTE_COLUMN_MIN_LENGTH = 8;

  int32_t note_field_length = tscMaxLengthOfTagsFields(pSql);
  if (note_field_length == 0) {
    note_field_length = NOTE_COLUMN_MIN_LENGTH;
  }

  int32_t rowLen =
      tscBuildMeterSchemaResultFields(pSql, NUM_OF_DESCRIBE_TABLE_COLUMNS, TYPE_COLUMN_LENGTH, note_field_length);
  tscFieldInfoCalOffset(&pSql->cmd);
  return tscSetValueToResObj(pSql, rowLen);
}
