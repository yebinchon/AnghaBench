
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nField; TYPE_1__* p; } ;
typedef TYPE_2__ tFieldList ;
typedef size_t int32_t ;
struct TYPE_6__ {size_t bytes; scalar_t__ type; int name; } ;
typedef int SSqlCmd ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_BOOL ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 int TSDB_MAX_TAGS ;
 size_t TSDB_MAX_TAGS_LEN ;
 int assert (int ) ;
 int has (TYPE_2__*,size_t,int ) ;
 int setErrMsg (int *,char const*) ;
 scalar_t__ validateColumnName (int ) ;

__attribute__((used)) static bool validateTagParams(tFieldList* pTagsList, tFieldList* pFieldList, SSqlCmd* pCmd) {
  assert(pTagsList != ((void*)0));

  const char* msg1 = "invalid number of tag columns";
  const char* msg2 = "tag length too long";
  const char* msg3 = "duplicated column names";
  const char* msg4 = "timestamp not allowed in tags";
  const char* msg5 = "invalid data type in tags";
  const char* msg6 = "invalid tag name";
  const char* msg7 = "invalid binary/nchar tag length";


  if (pTagsList->nField < 1 || pTagsList->nField > TSDB_MAX_TAGS) {
    setErrMsg(pCmd, msg1);
    return 0;
  }

  int32_t nLen = 0;
  for (int32_t i = 0; i < pTagsList->nField; ++i) {
    nLen += pTagsList->p[i].bytes;
  }


  if (nLen > TSDB_MAX_TAGS_LEN) {
    setErrMsg(pCmd, msg2);
    return 0;
  }


  for (int32_t i = 0; i < pTagsList->nField; ++i) {
    if (has(pFieldList, 0, pTagsList->p[i].name) == 1) {
      setErrMsg(pCmd, msg3);
      return 0;
    }
  }


  for (int32_t i = 0; i < pTagsList->nField; ++i) {
    if (pTagsList->p[i].type == TSDB_DATA_TYPE_TIMESTAMP) {
      setErrMsg(pCmd, msg4);
      return 0;
    }

    if (pTagsList->p[i].type < TSDB_DATA_TYPE_BOOL || pTagsList->p[i].type > TSDB_DATA_TYPE_NCHAR) {
      setErrMsg(pCmd, msg5);
      return 0;
    }

    if ((pTagsList->p[i].type == TSDB_DATA_TYPE_BINARY && pTagsList->p[i].bytes <= 0) ||
        (pTagsList->p[i].type == TSDB_DATA_TYPE_NCHAR && pTagsList->p[i].bytes <= 0)) {
      setErrMsg(pCmd, msg7);
      return 0;
    }

    if (validateColumnName(pTagsList->p[i].name) != TSDB_CODE_SUCCESS) {
      setErrMsg(pCmd, msg6);
      return 0;
    }

    if (has(pTagsList, i + 1, pTagsList->p[i].name) == 1) {
      setErrMsg(pCmd, msg3);
      return 0;
    }
  }

  return 1;
}
