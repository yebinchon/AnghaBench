
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;


 int CDCHKSUM_LEN ;
 int CDKEY_LEN ;
 int Q_stricmp (char*,char const*) ;
 int qfalse ;
 int qtrue ;
 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;

qboolean CL_CDKeyValidate( const char *key, const char *checksum ) {
 char ch;
 byte sum;
 char chs[3];
 int i, len;

 len = strlen(key);
 if( len != CDKEY_LEN ) {
  return qfalse;
 }

 if( checksum && strlen( checksum ) != CDCHKSUM_LEN ) {
  return qfalse;
 }

 sum = 0;

 for (i = 0; i < len; i++) {
  ch = *key++;
  if (ch>='a' && ch<='z') {
   ch -= 32;
  }
  switch( ch ) {
  case '2':
  case '3':
  case '7':
  case 'A':
  case 'B':
  case 'C':
  case 'D':
  case 'G':
  case 'H':
  case 'J':
  case 'L':
  case 'P':
  case 'R':
  case 'S':
  case 'T':
  case 'W':
   sum += ch;
   continue;
  default:
   return qfalse;
  }
 }

 sprintf(chs, "%02x", sum);

 if (checksum && !Q_stricmp(chs, checksum)) {
  return qtrue;
 }

 if (!checksum) {
  return qtrue;
 }

 return qfalse;
}
