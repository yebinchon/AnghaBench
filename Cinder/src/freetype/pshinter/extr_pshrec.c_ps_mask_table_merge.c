
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ num_bits; int* bytes; scalar_t__ end_point; } ;
struct TYPE_9__ {scalar_t__ num_masks; scalar_t__ masks; } ;
typedef TYPE_1__* PS_Mask_Table ;
typedef TYPE_2__ PS_MaskRec ;
typedef TYPE_2__* PS_Mask ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Int ;
typedef int FT_Error ;
typedef int FT_Byte ;


 int FT_Err_Ok ;
 int FT_TRACE0 (char*) ;
 int ft_memmove (TYPE_2__*,TYPE_2__*,scalar_t__) ;
 int ps_mask_clear_bit (TYPE_2__*,scalar_t__) ;
 int ps_mask_ensure (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static FT_Error
  ps_mask_table_merge( PS_Mask_Table table,
                       FT_UInt index1,
                       FT_UInt index2,
                       FT_Memory memory )
  {
    FT_Error error = FT_Err_Ok;



    if ( index1 > index2 )
    {
      FT_UInt temp;


      temp = index1;
      index1 = index2;
      index2 = temp;
    }

    if ( index1 < index2 && index2 < table->num_masks )
    {


      PS_Mask mask1 = table->masks + index1;
      PS_Mask mask2 = table->masks + index2;
      FT_UInt count1 = mask1->num_bits;
      FT_UInt count2 = mask2->num_bits;
      FT_Int delta;


      if ( count2 > 0 )
      {
        FT_UInt pos;
        FT_Byte* read;
        FT_Byte* write;




        if ( count2 > count1 )
        {
          error = ps_mask_ensure( mask1, count2, memory );
          if ( error )
            goto Exit;

          for ( pos = count1; pos < count2; pos++ )
            ps_mask_clear_bit( mask1, pos );
        }


        read = mask2->bytes;
        write = mask1->bytes;
        pos = ( count2 + 7 ) >> 3;

        for ( ; pos > 0; pos-- )
        {
          write[0] = (FT_Byte)( write[0] | read[0] );
          write++;
          read++;
        }
      }



      mask2->num_bits = 0;
      mask2->end_point = 0;


      delta = (FT_Int)( table->num_masks - 1 - index2 );
      if ( delta > 0 )
      {

        PS_MaskRec dummy = *mask2;


        ft_memmove( mask2,
                    mask2 + 1,
                    (FT_UInt)delta * sizeof ( PS_MaskRec ) );

        mask2[delta] = dummy;
      }

      table->num_masks--;
    }
    else
      FT_TRACE0(( "ps_mask_table_merge: ignoring invalid indices (%d,%d)\n",
                  index1, index2 ));

  Exit:
    return error;
  }
