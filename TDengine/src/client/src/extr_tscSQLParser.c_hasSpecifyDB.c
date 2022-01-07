
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t n; scalar_t__* z; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__* TS_PATH_DELIMITER ;

__attribute__((used)) static bool hasSpecifyDB(SSQLToken* pTableName) {
  for (int32_t i = 0; i < pTableName->n; ++i) {
    if (pTableName->z[i] == TS_PATH_DELIMITER[0]) {
      return 1;
    }
  }

  return 0;
}
