
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef void* int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int iMinVal; int iMaxVal; void* i64MinVal; void* i64MaxVal; double dMinVal; double dMaxVal; } ;
typedef TYPE_1__ MinMaxEntry ;
 int assert (int) ;

void tMemBucketUpdateBoundingBox(MinMaxEntry *r, char *data, int32_t dataType) {
  switch (dataType) {
    case 130: {
      int32_t val = *(int32_t *)data;
      if (r->iMinVal > val) {
        r->iMinVal = val;
      }

      if (r->iMaxVal < val) {
        r->iMaxVal = val;
      }
      break;
    };
    case 133: {
      int64_t val = *(int64_t *)data;
      if (r->i64MinVal > val) {
        r->i64MinVal = val;
      }

      if (r->i64MaxVal < val) {
        r->i64MaxVal = val;
      }
      break;
    };
    case 129: {
      int32_t val = *(int16_t *)data;
      if (r->iMinVal > val) {
        r->iMinVal = val;
      }

      if (r->iMaxVal < val) {
        r->iMaxVal = val;
      }
      break;
    };
    case 128: {
      int32_t val = *(int8_t *)data;
      if (r->iMinVal > val) {
        r->iMinVal = val;
      }

      if (r->iMaxVal < val) {
        r->iMaxVal = val;
      }

      break;
    };
    case 132: {
      double val = *(double *)data;
      if (r->dMinVal > val) {
        r->dMinVal = val;
      }

      if (r->dMaxVal < val) {
        r->dMaxVal = val;
      }
      break;
    };
    case 131: {
      double val = *(float *)data;

      if (r->dMinVal > val) {
        r->dMinVal = val;
      }

      if (r->dMaxVal < val) {
        r->dMaxVal = val;
      }
      break;
    };
    default: { assert(0); }
  }
}
