
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num_tables; TYPE_1__* dir_tables; } ;
struct TYPE_4__ {size_t Tag; size_t Offset; size_t Length; } ;
typedef TYPE_2__* TT_Face ;
typedef size_t FT_ULong ;
typedef size_t FT_UInt ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int Invalid_Argument ;
 int Table_Missing ;

__attribute__((used)) static FT_Error
  sfnt_table_info( TT_Face face,
                   FT_UInt idx,
                   FT_ULong *tag,
                   FT_ULong *offset,
                   FT_ULong *length )
  {
    if ( !offset || !length )
      return FT_THROW( Invalid_Argument );

    if ( !tag )
      *length = face->num_tables;
    else
    {
      if ( idx >= face->num_tables )
        return FT_THROW( Table_Missing );

      *tag = face->dir_tables[idx].Tag;
      *offset = face->dir_tables[idx].Offset;
      *length = face->dir_tables[idx].Length;
    }

    return FT_Err_Ok;
  }
