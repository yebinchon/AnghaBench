
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double _atof( const char **stringPtr ) {
 const char *string;
 float sign;
 float value;
 int c = '0';

 string = *stringPtr;


 while ( *string <= ' ' ) {
  if ( !*string ) {
   *stringPtr = string;
   return 0;
  }
  string++;
 }


 switch ( *string ) {
 case '+':
  string++;
  sign = 1;
  break;
 case '-':
  string++;
  sign = -1;
  break;
 default:
  sign = 1;
  break;
 }


 value = 0;
 if ( string[0] != '.' ) {
  do {
   c = *string++;
   if ( c < '0' || c > '9' ) {
    break;
   }
   c -= '0';
   value = value * 10 + c;
  } while ( 1 );
 }


 if ( c == '.' ) {
  double fraction;

  fraction = 0.1;
  do {
   c = *string++;
   if ( c < '0' || c > '9' ) {
    break;
   }
   c -= '0';
   value += c * fraction;
   fraction *= 0.1;
  } while ( 1 );

 }


 *stringPtr = string;

 return value * sign;
}
