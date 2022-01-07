
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int keynum; } ;
typedef TYPE_1__ keyname_t ;


 TYPE_1__* keynames ;

char *Key_KeynumToString( int keynum ) {
 keyname_t *kn;
 static char tinystr[5];
 int i, j;

 if ( keynum == -1 ) {
  return "<KEY NOT FOUND>";
 }

 if ( keynum < 0 || keynum > 255 ) {
  return "<OUT OF RANGE>";
 }


 if ( keynum > 32 && keynum < 127 && keynum != '"' && keynum != ';' ) {
  tinystr[0] = keynum;
  tinystr[1] = 0;
  return tinystr;
 }


 for ( kn=keynames ; kn->name ; kn++ ) {
  if (keynum == kn->keynum) {
   return kn->name;
  }
 }


 i = keynum >> 4;
 j = keynum & 15;

 tinystr[0] = '0';
 tinystr[1] = 'x';
 tinystr[2] = i > 9 ? i - 10 + 'a' : i + '0';
 tinystr[3] = j > 9 ? j - 10 + 'a' : j + '0';
 tinystr[4] = 0;

 return tinystr;
}
