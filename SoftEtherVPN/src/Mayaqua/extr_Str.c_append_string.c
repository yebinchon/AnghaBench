
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int append_string(char *buf, char *string) {
 if (buf == ((void*)0)) {
  return (int)strlen(string);
 }
 return sprintf(buf, "%s", string);
}
