
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {int z; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_BIN ;
 scalar_t__ TK_HEX ;
 scalar_t__ TK_ILLEGAL ;
 scalar_t__ TK_OCT ;
 scalar_t__ isValidNumber (TYPE_1__*) ;
 int strtoll (int ,char**,scalar_t__) ;

__attribute__((used)) static int32_t tscToInteger(SSQLToken *pToken, int64_t *value, char **endPtr) {
  int32_t numType = isValidNumber(pToken);
  if (TK_ILLEGAL == numType) {
    return numType;
  }

  int32_t radix = 10;
  if (numType == TK_HEX) {
    radix = 16;
  } else if (numType == TK_OCT) {
    radix = 8;
  } else if (numType == TK_BIN) {
    radix = 2;
  }

  *value = strtoll(pToken->z, endPtr, radix);

  return numType;
}
