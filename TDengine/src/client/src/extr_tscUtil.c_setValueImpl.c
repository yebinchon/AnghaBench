
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_3__ {int bytes; int name; int type; } ;
typedef TYPE_1__ TAOS_FIELD ;


 int TSDB_COL_NAME_LEN ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void setValueImpl(TAOS_FIELD* pField, int8_t type, char* name, int16_t bytes) {
  pField->type = type;
  strncpy(pField->name, name, TSDB_COL_NAME_LEN);
  pField->bytes = bytes;
}
