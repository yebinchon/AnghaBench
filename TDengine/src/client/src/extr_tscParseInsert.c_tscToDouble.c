
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {int z; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_ILLEGAL ;
 scalar_t__ isValidNumber (TYPE_1__*) ;
 double strtod (int ,char**) ;

__attribute__((used)) static int32_t tscToDouble(SSQLToken *pToken, double *value, char **endPtr) {
  int32_t numType = isValidNumber(pToken);
  if (TK_ILLEGAL == numType) {
    return numType;
  }
  *value = strtod(pToken->z, endPtr);
  return numType;
}
