
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int optdata; } ;
struct TYPE_7__ {TYPE_1__ statetable; } ;
struct TYPE_6__ {int valueTable; int valueTable_length; } ;
typedef TYPE_2__* GXV_kern_fmt1_StateOptRecData ;
typedef TYPE_3__* GXV_Validator ;
typedef int GXV_StateTable_GlyphOffsetCPtr ;
typedef int FT_UShort ;
typedef int FT_Bytes ;
typedef int FT_Byte ;


 int FT_INVALID_OFFSET ;
 int FT_NEXT_USHORT (int) ;
 int FT_UNUSED (int ) ;
 int GXV_LIMIT_CHECK (int) ;

__attribute__((used)) static void
  gxv_kern_subtable_fmt1_entry_validate(
    FT_Byte state,
    FT_UShort flags,
    GXV_StateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {




    FT_UShort valueOffset;





    FT_UNUSED( state );
    FT_UNUSED( glyphOffset_p );






    valueOffset = (FT_UShort)( flags & 0x3FFF );

    {
      GXV_kern_fmt1_StateOptRecData vt_rec =
        (GXV_kern_fmt1_StateOptRecData)gxvalid->statetable.optdata;
      FT_Bytes p;


      if ( valueOffset < vt_rec->valueTable )
        FT_INVALID_OFFSET;

      p = table + valueOffset;
      limit = table + vt_rec->valueTable + vt_rec->valueTable_length;

      GXV_LIMIT_CHECK( 2 + 2 );




    }
  }
