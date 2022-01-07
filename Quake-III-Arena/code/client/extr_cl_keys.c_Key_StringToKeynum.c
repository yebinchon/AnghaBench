
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keynum; scalar_t__ name; } ;
typedef TYPE_1__ keyname_t ;


 int Q_stricmp (char*,scalar_t__) ;
 TYPE_1__* keynames ;
 int strlen (char*) ;

int Key_StringToKeynum( char *str ) {
 keyname_t *kn;

 if ( !str || !str[0] ) {
  return -1;
 }
 if ( !str[1] ) {
  return str[0];
 }


 if ( str[0] == '0' && str[1] == 'x' && strlen( str ) == 4) {
  int n1, n2;

  n1 = str[2];
  if ( n1 >= '0' && n1 <= '9' ) {
   n1 -= '0';
  } else if ( n1 >= 'a' && n1 <= 'f' ) {
   n1 = n1 - 'a' + 10;
  } else {
   n1 = 0;
  }

  n2 = str[3];
  if ( n2 >= '0' && n2 <= '9' ) {
   n2 -= '0';
  } else if ( n2 >= 'a' && n2 <= 'f' ) {
   n2 = n2 - 'a' + 10;
  } else {
   n2 = 0;
  }

  return n1 * 16 + n2;
 }


 for ( kn=keynames ; kn->name ; kn++ ) {
  if ( !Q_stricmp( str,kn->name ) )
   return kn->keynum;
 }

 return -1;
}
