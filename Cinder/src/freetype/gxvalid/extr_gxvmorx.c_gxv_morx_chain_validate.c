
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef int FT_Bytes ;


 int FT_INVALID_DATA ;
 int FT_NEXT_ULONG (int) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_mort_featurearray_validate (int,int,int,TYPE_1__*) ;
 int gxv_morx_subtables_validate (int,int,int ,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_morx_chain_validate( FT_Bytes table,
                           FT_Bytes limit,
                           GXV_Validator gxvalid )
  {
    FT_Bytes p = table;



    FT_ULong chainLength;
    FT_ULong nFeatureFlags;
    FT_ULong nSubtables;


    GXV_NAME_ENTER( "morx chain header" );

    GXV_LIMIT_CHECK( 4 + 4 + 4 + 4 );



    p += 4;

    chainLength = FT_NEXT_ULONG( p );
    nFeatureFlags = FT_NEXT_ULONG( p );
    nSubtables = FT_NEXT_ULONG( p );


    gxv_mort_featurearray_validate( p, limit, nFeatureFlags, gxvalid );
    p += gxvalid->subtable_length;

    if ( nSubtables >= 0x10000L )
      FT_INVALID_DATA;

    gxv_morx_subtables_validate( p, table + chainLength,
                                 (FT_UShort)nSubtables, gxvalid );

    gxvalid->subtable_length = chainLength;



    GXV_EXIT;
  }
