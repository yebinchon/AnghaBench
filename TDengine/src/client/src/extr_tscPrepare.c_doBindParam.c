
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; int offset; scalar_t__ bytes; } ;
struct TYPE_5__ {int buffer_type; int buffer; scalar_t__* length; scalar_t__* is_null; } ;
typedef TYPE_1__ TAOS_BIND ;
typedef TYPE_2__ SParamInfo ;


 int TSDB_CODE_INVALID_VALUE ;
 int TSDB_CODE_SUCCESS ;
 int assert (int) ;
 int memcpy (char*,int ,short) ;
 int setNull (char*,int,scalar_t__) ;
 int taosMbsToUcs4 (int ,scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static int doBindParam(char* data, SParamInfo* param, TAOS_BIND* bind) {
  if (bind->is_null != ((void*)0) && *(bind->is_null)) {
    setNull(data, param->type, param->bytes);
    return TSDB_CODE_SUCCESS;
  }

  if (bind->buffer_type != param->type) {
    return TSDB_CODE_INVALID_VALUE;
  }

  short size = 0;
  switch(param->type) {
    case 135:
    case 128:
      size = 1;
      break;

    case 130:
      size = 2;
      break;

    case 132:
    case 133:
      size = 4;
      break;

    case 137:
    case 134:
    case 129:
      size = 8;
      break;

    case 136:
      if ((*bind->length) > param->bytes) {
        return TSDB_CODE_INVALID_VALUE;
      }
      size = (short)*bind->length;
      break;

    case 131:
      if (!taosMbsToUcs4(bind->buffer, *bind->length, data + param->offset, param->bytes)) {
        return TSDB_CODE_INVALID_VALUE;
      }
      return TSDB_CODE_SUCCESS;

    default:
      assert(0);
      return TSDB_CODE_INVALID_VALUE;
  }

  memcpy(data + param->offset, bind->buffer, size);
  return TSDB_CODE_SUCCESS;
}
