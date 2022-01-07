
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int StrLen (char*) ;
 char* parson_strndup (char*,int ) ;

__attribute__((used)) static char * parson_strdup(char *string) {
 return parson_strndup(string, StrLen(string));
}
