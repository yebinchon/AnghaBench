
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef int GXV_StateTable_GlyphOffsetCPtr ;
typedef int FT_UShort ;
typedef int FT_Bytes ;
typedef int FT_Byte ;


 int FT_UNUSED (int ) ;
 int gxv_mort_subtable_type2_ligActionOffset_validate (int ,int,int ) ;

__attribute__((used)) static void
  gxv_mort_subtable_type2_entry_validate(
    FT_Byte state,
    FT_UShort flags,
    GXV_StateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {




    FT_UShort offset;

    FT_UNUSED( state );
    FT_UNUSED( glyphOffset_p );
    FT_UNUSED( limit );







    offset = (FT_UShort)( flags & 0x3FFFU );

    if ( 0 < offset )
      gxv_mort_subtable_type2_ligActionOffset_validate( table, offset,
                                                        gxvalid );
  }
