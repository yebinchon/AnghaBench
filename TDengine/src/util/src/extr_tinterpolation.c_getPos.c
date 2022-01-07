
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ TSQL_SO_ASC ;

__attribute__((used)) static char* getPos(char* data, int32_t bytes, int32_t order, int32_t capacity, int32_t index) {
  if (order == TSQL_SO_ASC) {
    return data + index * bytes;
  } else {
    return data + (capacity - index - 1) * bytes;
  }
}
