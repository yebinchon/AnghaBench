
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_UShort ;
typedef scalar_t__ FT_ULong ;
typedef int FT_Fixed ;
typedef scalar_t__ FT_Bytes ;


 int FT_NEXT_ULONG (scalar_t__) ;
 int FT_NEXT_USHORT (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int gxv_just_check_max_gid (int,char*,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_actSubrecord_type2_validate( FT_Bytes table,
                                        FT_Bytes limit,
                                        GXV_Validator gxvalid )
  {
    FT_Bytes p = table;



    FT_UShort addGlyph;
    FT_UShort substGlyph;


    GXV_LIMIT_CHECK( 4 + 2 + 2 );



    p += 4;

    addGlyph = FT_NEXT_USHORT( p );
    substGlyph = FT_NEXT_USHORT( p );

    if ( addGlyph != 0xFFFF )
      gxv_just_check_max_gid( addGlyph, "type2:addGlyph", gxvalid );

    gxv_just_check_max_gid( substGlyph, "type2:substGlyph", gxvalid );

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }
