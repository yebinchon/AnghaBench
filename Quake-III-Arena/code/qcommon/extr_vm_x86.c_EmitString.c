
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Emit1 (int) ;
 int Hex (int) ;

__attribute__((used)) static void EmitString( const char *string ) {
 int c1, c2;
 int v;

 while ( 1 ) {
  c1 = string[0];
  c2 = string[1];

  v = ( Hex( c1 ) << 4 ) | Hex( c2 );
  Emit1( v );

  if ( !string[2] ) {
   break;
  }
  string += 3;
 }
}
