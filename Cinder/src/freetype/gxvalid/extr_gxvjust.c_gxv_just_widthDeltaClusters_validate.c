
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_OFFSET ;
 int GXV_EXIT ;
 scalar_t__ GXV_JUST_DATA (int ) ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_just_wdc_entry_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int wdc_offset_max ;

__attribute__((used)) static void
  gxv_just_widthDeltaClusters_validate( FT_Bytes table,
                                        FT_Bytes limit,
                                        GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_Bytes wdc_end = table + GXV_JUST_DATA( wdc_offset_max );
    FT_UInt i;


    GXV_NAME_ENTER( "just justDeltaClusters" );

    if ( limit <= wdc_end )
      FT_INVALID_OFFSET;

    for ( i = 0; p <= wdc_end; i++ )
    {
      gxv_just_wdc_entry_validate( p, limit, gxvalid );
      p += gxvalid->subtable_length;
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );

    GXV_EXIT;
  }
