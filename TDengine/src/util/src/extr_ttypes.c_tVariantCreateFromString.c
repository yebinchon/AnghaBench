
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int nType; int pz; int nLen; int dKey; int i64Key; } ;
typedef TYPE_1__ tVariant ;
typedef int int32_t ;
 int TSDB_DATA_TYPE_NULL ;


 int TSDB_FALSE ;
 int TSDB_TRUE ;
 int assert (int) ;
 int strdequote (int ) ;
 int strncasecmp (char*,char*,int) ;
 int strndup (char*,int) ;
 int strtod (char*,int *) ;
 int strtoll (char*,int *,int) ;

void tVariantCreateFromString(tVariant *pVar, char *pz, uint32_t len, uint32_t type) {
  switch (type) {
    case 133: {
      int32_t k = strncasecmp(pz, "true", 4);
      if (k == 0) {
        pVar->i64Key = TSDB_TRUE;
      } else {
        assert(strncasecmp(pz, "false", 5) == 0);
        pVar->i64Key = TSDB_FALSE;
      }
      break;
    }
    case 128:
    case 129:
    case 135:
    case 130:
      pVar->i64Key = strtoll(pz, ((void*)0), 10);
      break;
    case 132:
    case 131:
      pVar->dKey = strtod(pz, ((void*)0));
      break;
    case 134: {
      pVar->pz = strndup(pz, len);
      pVar->nLen = strdequote(pVar->pz);
      break;
    }

    default: {
      type = TSDB_DATA_TYPE_NULL;
    }
  }

  pVar->nType = type;
}
