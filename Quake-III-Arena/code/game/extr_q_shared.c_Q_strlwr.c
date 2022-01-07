
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

char *Q_strlwr( char *s1 ) {
    char *s;

    s = s1;
 while ( *s ) {
  *s = tolower(*s);
  s++;
 }
    return s1;
}
