
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int length; int* buffer; } ;



__attribute__((used)) static unsigned int data_u32le( struct data *data, int offset ) {
 unsigned int value = 0;
 if( offset + 3 < data->length ) {
  value = ( data->buffer[ offset ] & 0xFF )
   | ( ( data->buffer[ offset + 1 ] & 0xFF ) << 8 )
   | ( ( data->buffer[ offset + 2 ] & 0xFF ) << 16 )
   | ( ( data->buffer[ offset + 3 ] & 0xFF ) << 24 );
 }
 return value;
}
