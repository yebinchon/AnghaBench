
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;


 int * parse_value (char**,int ) ;

JSON_VALUE * JsonParseString(char *string) {
 if (string == ((void*)0)) {
  return ((void*)0);
 }
 if (string[0] == '\xEF' && string[1] == '\xBB' && string[2] == '\xBF') {
  string = string + 3;
 }
 return parse_value((char**)&string, 0);
}
