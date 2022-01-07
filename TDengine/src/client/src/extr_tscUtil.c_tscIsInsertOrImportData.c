
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_IMPORT ;
 scalar_t__ TK_INSERT ;
 TYPE_1__ tStrGetToken (char*,int *,int,int ,int *) ;

bool tscIsInsertOrImportData(char* sqlstr) {
  int32_t index = 0;
  SSQLToken t0 = tStrGetToken(sqlstr, &index, 0, 0, ((void*)0));
  return t0.type == TK_INSERT || t0.type == TK_IMPORT;
}
