
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_Bytes ;


 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_just_pcActionRecord_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_just_pcLookupTable_validate (scalar_t__,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_postcompTable_validate( FT_Bytes table,
                                   FT_Bytes limit,
                                   GXV_Validator gxvalid )
  {
    FT_Bytes p = table;


    GXV_NAME_ENTER( "just postcompTable" );

    gxv_just_pcLookupTable_validate( p, limit, gxvalid );
    p += gxvalid->subtable_length;

    gxv_just_pcActionRecord_validate( p, limit, gxvalid );
    p += gxvalid->subtable_length;

    gxvalid->subtable_length = (FT_ULong)( p - table );

    GXV_EXIT;
  }
