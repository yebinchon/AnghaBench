
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;



__attribute__((used)) static FT_UInt
  otv_value_length( FT_UInt format )
  {
    FT_UInt count;


    count = ( ( format & 0xAA ) >> 1 ) + ( format & 0x55 );
    count = ( ( count & 0xCC ) >> 2 ) + ( count & 0x33 );
    count = ( ( count & 0xF0 ) >> 4 ) + ( count & 0x0F );

    return count * 2;
  }
