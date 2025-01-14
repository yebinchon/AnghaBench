
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Fixed ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_DATA ;
 scalar_t__ FT_NEXT_LONG (scalar_t__) ;
 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;
 int gxv_just_check_max_gid (scalar_t__,char*,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_actSubrecord_type0_validate( FT_Bytes table,
                                        FT_Bytes limit,
                                        GXV_Validator gxvalid )
  {
    FT_Bytes p = table;

    FT_Fixed lowerLimit;
    FT_Fixed upperLimit;



    FT_UShort decomposedCount;

    FT_UInt i;


    GXV_LIMIT_CHECK( 4 + 4 + 2 + 2 );
    lowerLimit = FT_NEXT_LONG( p );
    upperLimit = FT_NEXT_LONG( p );



    p += 2;

    decomposedCount = FT_NEXT_USHORT( p );

    if ( lowerLimit >= upperLimit )
    {
      GXV_TRACE(( "just table includes invalid range spec:"
                  " lowerLimit(%d) > upperLimit(%d)\n" ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
    }

    for ( i = 0; i < decomposedCount; i++ )
    {
      FT_UShort glyphs;


      GXV_LIMIT_CHECK( 2 );
      glyphs = FT_NEXT_USHORT( p );
      gxv_just_check_max_gid( glyphs, "type0:glyphs", gxvalid );
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }
