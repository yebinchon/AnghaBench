
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int length; int* buffer; } ;



__attribute__((used)) static int data_u8( struct data *data, int offset ) {
 int value = 0;
 if( offset < data->length ) {
  value = data->buffer[ offset ] & 0xFF;
 }
 return value;
}
