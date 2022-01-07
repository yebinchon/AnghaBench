
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,int) ;

void Q_strncpyz( char *dest, const char *src, int destsize ) {
 strncpy( dest, src, destsize-1 );
    dest[destsize-1] = 0;
}
