
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t data; } ;
typedef TYPE_1__* FT_Hashnode ;
typedef int FT_Hashkey ;
typedef int FT_Hash ;


 TYPE_1__** hash_bucket (int ,int ) ;

__attribute__((used)) static size_t*
  hash_lookup( FT_Hashkey key,
               FT_Hash hash )
  {
    FT_Hashnode* np = hash_bucket( key, hash );


    return (*np) ? &(*np)->data
                 : ((void*)0);
  }
