
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long size; int field; int memory; } ;
typedef TYPE_1__ _bdf_list_t ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_INT_MAX ;
 scalar_t__ FT_RENEW_ARRAY (int ,unsigned long,unsigned long) ;
 int FT_THROW (int ) ;
 int Out_Of_Memory ;

__attribute__((used)) static FT_Error
  _bdf_list_ensure( _bdf_list_t* list,
                    unsigned long num_items )
  {
    FT_Error error = FT_Err_Ok;


    if ( num_items > list->size )
    {
      unsigned long oldsize = list->size;
      unsigned long newsize = oldsize + ( oldsize >> 1 ) + 5;
      unsigned long bigsize = (unsigned long)( FT_INT_MAX / sizeof ( char* ) );
      FT_Memory memory = list->memory;


      if ( oldsize == bigsize )
      {
        error = FT_THROW( Out_Of_Memory );
        goto Exit;
      }
      else if ( newsize < oldsize || newsize > bigsize )
        newsize = bigsize;

      if ( FT_RENEW_ARRAY( list->field, oldsize, newsize ) )
        goto Exit;

      list->size = newsize;
    }

  Exit:
    return error;
  }
