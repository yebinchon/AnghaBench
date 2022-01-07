
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_FUNC_APERCT ;
 int TSDB_FUNC_AVG ;
 int TSDB_FUNC_BOTTOM ;
 int TSDB_FUNC_COUNT ;
 int TSDB_FUNC_DIFF ;
 int TSDB_FUNC_FIRST ;
 int TSDB_FUNC_INTERP ;
 int TSDB_FUNC_LAST ;
 int TSDB_FUNC_LAST_ROW ;
 int TSDB_FUNC_LEASTSQR ;
 int TSDB_FUNC_MAX ;
 int TSDB_FUNC_MIN ;
 int TSDB_FUNC_PERCT ;
 int TSDB_FUNC_SPREAD ;
 int TSDB_FUNC_STDDEV ;
 int TSDB_FUNC_SUM ;
 int TSDB_FUNC_TOP ;
 int TSDB_FUNC_TWA ;

int32_t changeFunctionID(int32_t optr, int16_t* functionId) {
  switch (optr) {
    case 142:
      *functionId = TSDB_FUNC_COUNT;
      break;
    case 130:
      *functionId = TSDB_FUNC_SUM;
      break;
    case 144:
      *functionId = TSDB_FUNC_AVG;
      break;
    case 134:
      *functionId = TSDB_FUNC_MIN;
      break;
    case 135:
      *functionId = TSDB_FUNC_MAX;
      break;
    case 131:
      *functionId = TSDB_FUNC_STDDEV;
      break;
    case 133:
      *functionId = TSDB_FUNC_PERCT;
      break;
    case 145:
      *functionId = TSDB_FUNC_APERCT;
      break;
    case 140:
      *functionId = TSDB_FUNC_FIRST;
      break;
    case 138:
      *functionId = TSDB_FUNC_LAST;
      break;
    case 136:
      *functionId = TSDB_FUNC_LEASTSQR;
      break;
    case 129:
      *functionId = TSDB_FUNC_TOP;
      break;
    case 143:
      *functionId = TSDB_FUNC_BOTTOM;
      break;
    case 141:
      *functionId = TSDB_FUNC_DIFF;
      break;
    case 132:
      *functionId = TSDB_FUNC_SPREAD;
      break;
    case 128:
      *functionId = TSDB_FUNC_TWA;
      break;
    case 139:
      *functionId = TSDB_FUNC_INTERP;
      break;
    case 137:
      *functionId = TSDB_FUNC_LAST_ROW;
      break;
    default:
      return -1;
  }

  return TSDB_CODE_SUCCESS;
}
