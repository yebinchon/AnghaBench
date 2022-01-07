
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ used; scalar_t__ limit; } ;
struct TYPE_8__ {size_t data; int key; } ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_Hashnode ;
typedef int FT_Hashkey ;
typedef TYPE_2__* FT_Hash ;
typedef scalar_t__ FT_Error ;


 scalar_t__ FT_Err_Ok ;
 scalar_t__ FT_NEW (TYPE_1__*) ;
 TYPE_1__** hash_bucket (int ,TYPE_2__*) ;
 scalar_t__ hash_rehash (TYPE_2__*,int ) ;

__attribute__((used)) static FT_Error
  hash_insert( FT_Hashkey key,
               size_t data,
               FT_Hash hash,
               FT_Memory memory )
  {
    FT_Hashnode nn;
    FT_Hashnode* bp = hash_bucket( key, hash );
    FT_Error error = FT_Err_Ok;


    nn = *bp;
    if ( !nn )
    {
      if ( FT_NEW( nn ) )
        goto Exit;
      *bp = nn;

      nn->key = key;
      nn->data = data;

      if ( hash->used >= hash->limit )
      {
        error = hash_rehash( hash, memory );
        if ( error )
          goto Exit;
      }

      hash->used++;
    }
    else
      nn->data = data;

  Exit:
    return error;
  }
