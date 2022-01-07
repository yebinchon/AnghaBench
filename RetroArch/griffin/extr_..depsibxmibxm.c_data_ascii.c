
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int length; int* buffer; } ;


 int memset (char*,int,int) ;

__attribute__((used)) static char* data_ascii( struct data *data, int offset, int length, char *dest ) {
 int idx, chr;
 memset( dest, 32, length );
 if( offset > data->length ) {
  offset = data->length;
 }
 if( ( unsigned int ) offset + length > ( unsigned int ) data->length ) {
  length = data->length - offset;
 }
 for( idx = 0; idx < length; idx++ ) {
  chr = data->buffer[ offset + idx ] & 0xFF;
  if( chr > 32 ) {
   dest[ idx ] = chr;
  }
 }
 return dest;
}
