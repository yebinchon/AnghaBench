
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_Bytes ;


 scalar_t__ FT_NEXT_ULONG (scalar_t__) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_TRACE (char*) ;
 int gxv_just_actSubrecord_validate (scalar_t__,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_pcActionRecord_validate( FT_Bytes table,
                                    FT_Bytes limit,
                                    GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_ULong actionCount;
    FT_ULong i;


    GXV_LIMIT_CHECK( 4 );
    actionCount = FT_NEXT_ULONG( p );
    GXV_TRACE(( "actionCount = %d\n", actionCount ));

    for ( i = 0; i < actionCount; i++ )
    {
      gxv_just_actSubrecord_validate( p, limit, gxvalid );
      p += gxvalid->subtable_length;
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );

    GXV_EXIT;
  }
