
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double atof( const char *string ) {
 float sign;
 float value;
 int c;



 while ( *string <= ' ' ) {
  if ( !*string ) {
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
 c = string[0];
 if ( c != '.' ) {
  do {
   c = *string++;
   if ( c < '0' || c > '9' ) {
    break;
   }
   c -= '0';
   value = value * 10 + c;
  } while ( 1 );
 } else {
  string++;
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



 return value * sign;
}
