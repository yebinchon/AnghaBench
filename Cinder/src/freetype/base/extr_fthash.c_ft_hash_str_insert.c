
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* str; } ;
typedef int FT_Memory ;
typedef TYPE_1__ FT_Hashkey ;
typedef int FT_Hash ;
typedef int FT_Error ;


 int hash_insert (TYPE_1__,size_t,int ,int ) ;

FT_Error
  ft_hash_str_insert( const char* key,
                      size_t data,
                      FT_Hash hash,
                      FT_Memory memory )
  {
    FT_Hashkey hk;


    hk.str = key;

    return hash_insert( hk, data, hash, memory );
  }
