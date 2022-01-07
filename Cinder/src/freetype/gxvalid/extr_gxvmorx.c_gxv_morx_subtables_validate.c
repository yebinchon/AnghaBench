
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int (* GXV_Validate_Func ) (scalar_t__,scalar_t__,TYPE_1__*) ;
typedef scalar_t__ FT_UShort ;
typedef int FT_ULong ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_ULONG (scalar_t__) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;
 int gxv_mort_coverage_validate (scalar_t__,TYPE_1__*) ;
 int gxv_morx_subtable_type0_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_morx_subtable_type1_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_morx_subtable_type2_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_morx_subtable_type4_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_morx_subtable_type5_validate (scalar_t__,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_morx_subtables_validate( FT_Bytes table,
                               FT_Bytes limit,
                               FT_UShort nSubtables,
                               GXV_Validator gxvalid )
  {
    FT_Bytes p = table;

    GXV_Validate_Func fmt_funcs_table[] =
    {
      gxv_morx_subtable_type0_validate,
      gxv_morx_subtable_type1_validate,
      gxv_morx_subtable_type2_validate,
      ((void*)0),
      gxv_morx_subtable_type4_validate,
      gxv_morx_subtable_type5_validate,

    };

    FT_UShort i;


    GXV_NAME_ENTER( "subtables in a chain" );

    for ( i = 0; i < nSubtables; i++ )
    {
      GXV_Validate_Func func;

      FT_ULong length;
      FT_ULong coverage;



      FT_ULong type;
      FT_ULong rest;


      GXV_LIMIT_CHECK( 4 + 4 + 4 );
      length = FT_NEXT_ULONG( p );
      coverage = FT_NEXT_ULONG( p );



      p += 4;


      GXV_TRACE(( "validating chain subtable %d/%d (%d bytes)\n",
                  i + 1, nSubtables, length ));

      type = coverage & 0x0007;
      rest = length - ( 4 + 4 + 4 );
      GXV_LIMIT_CHECK( rest );


      gxv_mort_coverage_validate( (FT_UShort)( ( coverage >> 16 ) | coverage ),
                                  gxvalid );
      if ( type > 5 )
        FT_INVALID_FORMAT;

      func = fmt_funcs_table[type];
      if ( !func )
        GXV_TRACE(( "morx type %d is reserved\n", type ));

      func( p, p + rest, gxvalid );


      p += rest;
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );

    GXV_EXIT;
  }
