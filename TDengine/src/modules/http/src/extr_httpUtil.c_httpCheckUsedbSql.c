
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strstr (char*,char*) ;

bool httpCheckUsedbSql(char *sql) {
  if (strstr(sql, "use ") != ((void*)0)) {
    return 1;
  }
  return 0;
}
