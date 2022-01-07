
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtok_pos ;
 char* strtok_r (char*,char const*,int *) ;

char* strtok( char* s, const char* delim ) {
    return strtok_r( s, delim, &strtok_pos );
}
