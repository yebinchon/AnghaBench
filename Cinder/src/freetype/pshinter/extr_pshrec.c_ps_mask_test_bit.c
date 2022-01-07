
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_bits; int* bytes; } ;
typedef TYPE_1__* PS_Mask ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Int ;



__attribute__((used)) static FT_Int
  ps_mask_test_bit( PS_Mask mask,
                    FT_Int idx )
  {
    if ( (FT_UInt)idx >= mask->num_bits )
      return 0;

    return mask->bytes[idx >> 3] & ( 0x80 >> ( idx & 7 ) );
  }
