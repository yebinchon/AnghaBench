
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Emit1 (int) ;

__attribute__((used)) static void Emit4( int v ) {
 Emit1( v & 255 );
 Emit1( ( v >> 8 ) & 255 );
 Emit1( ( v >> 16 ) & 255 );
 Emit1( ( v >> 24 ) & 255 );
}
