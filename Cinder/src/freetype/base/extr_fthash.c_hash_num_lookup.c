
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef int FT_ULong ;
typedef TYPE_1__ FT_Hashkey ;



__attribute__((used)) static FT_ULong
  hash_num_lookup( FT_Hashkey* key )
  {
    FT_ULong num = (FT_ULong)key->num;
    FT_ULong res;



    res = num & 0xFF;
    res = ( res << 5 ) - res + ( ( num >> 8 ) & 0xFF );
    res = ( res << 5 ) - res + ( ( num >> 16 ) & 0xFF );
    res = ( res << 5 ) - res + ( ( num >> 24 ) & 0xFF );

    return res;
  }
