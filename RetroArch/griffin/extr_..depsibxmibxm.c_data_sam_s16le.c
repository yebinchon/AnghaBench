
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int length; char* buffer; } ;



__attribute__((used)) static void data_sam_s16le( struct data *data, int offset, int count, short *dest ) {
 int idx, amp, length = data->length;
 char *buffer = data->buffer;
 if( offset > length ) {
  offset = length;
 }
 if( offset + count * 2 > length ) {
  count = ( length - offset ) / 2;
 }
 for( idx = 0; idx < count; idx++ ) {
  amp = ( buffer[ offset + idx * 2 ] & 0xFF ) | ( buffer[ offset + idx * 2 + 1 ] << 8 );
  dest[ idx ] = ( amp & 0x7FFF ) - ( amp & 0x8000 );
 }
}
