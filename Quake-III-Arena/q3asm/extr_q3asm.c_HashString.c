
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int HashString( char *s ) {
 int v = 0;

 while ( *s ) {
  v += *s;
  s++;
 }
 return v;
}
