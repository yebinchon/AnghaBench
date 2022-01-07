
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef double int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {scalar_t__ functionId; int type; } ;
typedef TYPE_1__ SSrcColumnInfo ;
 scalar_t__ TSDB_FUNC_AVG ;
 scalar_t__ TSDB_FUNC_LAST_DST ;
 int TSDB_KEYSIZE ;
 int printf (char*,...) ;

__attribute__((used)) static void printBinaryDataEx(char *data, int32_t len, SSrcColumnInfo *param) {
  if (param->functionId == TSDB_FUNC_LAST_DST) {
    switch (param->type) {
      case 128:printf("%lld,%d\t", *(int64_t *) data, *(int8_t *) (data + TSDB_KEYSIZE + 1));
        break;
      case 130:printf("%lld,%d\t", *(int64_t *) data, *(int16_t *) (data + TSDB_KEYSIZE + 1));
        break;
      case 129:
      case 135:printf("%lld,%lld\t", *(int64_t *) data, *(int64_t *) (data + TSDB_KEYSIZE + 1));
        break;
      case 132:printf("%lld,%d\t", *(int64_t *) data, *(float *) (data + TSDB_KEYSIZE + 1));
        break;
      case 133:printf("%lld,%d\t", *(int64_t *) data, *(double *) (data + TSDB_KEYSIZE + 1));
        break;
      case 134:printf("%lld,%s\t", *(int64_t *) data, (data + TSDB_KEYSIZE + 1));
        break;

      case 131:
      default:printf("%lld,%d\t", *(int64_t *) data, *(int32_t *) (data + TSDB_KEYSIZE + 1));
        break;
    }
  } else if (param->functionId == TSDB_FUNC_AVG) {
      printf("%f,%lld\t", *(double *) data, *(int64_t *) (data + sizeof(double) + 1));
  } else {

    switch (param->type) {
      case 128:
        printf("%d\t", *(int8_t *)data);
        break;
      case 130:
        printf("%d\t", *(int16_t *)data);
        break;
      case 129:
      case 135:
        printf("%lld\t", *(int64_t *)data);
        break;
      case 132:
        printf("%d\t", *(float *)data);
        break;
      case 133:
        printf("%d\t", *(double *)data);
        break;
      case 134:
        printf("%s\t", data);
        break;

      case 131:
      default:
        printf("%d\t", *(double *)data);
        break;
    }
  }
}
