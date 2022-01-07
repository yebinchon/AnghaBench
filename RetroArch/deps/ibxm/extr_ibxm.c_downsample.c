
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void downsample( int *buf, int count ) {
 int idx, out_idx, out_len = count * 2;
 for( idx = 0, out_idx = 0; out_idx < out_len; idx += 4, out_idx += 2 ) {
  buf[ out_idx ] = ( buf[ idx ] >> 2 ) + ( buf[ idx + 2 ] >> 1 ) + ( buf[ idx + 4 ] >> 2 );
  buf[ out_idx + 1 ] = ( buf[ idx + 1 ] >> 2 ) + ( buf[ idx + 3 ] >> 1 ) + ( buf[ idx + 5 ] >> 2 );
 }
}
