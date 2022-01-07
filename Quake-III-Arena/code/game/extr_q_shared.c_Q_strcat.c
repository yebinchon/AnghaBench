
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int Q_strncpyz (char*,char const*,int) ;
 int strlen (char*) ;

void Q_strcat( char *dest, int size, const char *src ) {
 int l1;

 l1 = strlen( dest );
 if ( l1 >= size ) {
  Com_Error( ERR_FATAL, "Q_strcat: already overflowed" );
 }
 Q_strncpyz( dest + l1, src, size - l1 );
}
