
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;
 int rand () ;
 int sprintf (char*,char*,char const) ;

void rand_string(char *str, int size) {
  memset(str, 0, size);
  const char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJK1234567890";
  char *sptr = str;
  if (size) {
    --size;
    for (size_t n = 0; n < size; n++) {
      int key = rand() % (int)(sizeof charset - 1);
      sptr += sprintf(sptr, "%c", charset[key]);
    }
  }
}
