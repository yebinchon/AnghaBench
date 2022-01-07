
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS_PATH_DELIMITER ;
 char* strstr (char*,int ) ;

void mgmtGetAcctStr(char *src, char *dest) {
  char *pos = strstr(src, TS_PATH_DELIMITER);
  while ((pos != ((void*)0)) && (*src != *pos)) {
    *dest = *src;
    src++;
    dest++;
  }

  *dest = 0;
}
