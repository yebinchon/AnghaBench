
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef int FT_UShort ;
typedef scalar_t__ FT_Short ;
typedef int FT_Bytes ;


 scalar_t__ FT_NEXT_SHORT (int ) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;
 int gxv_sfntName_validate (int ,int,unsigned int,int ) ;

__attribute__((used)) static void
  gxv_feat_name_index_validate( FT_Bytes table,
                                FT_Bytes limit,
                                GXV_Validator gxvalid )
  {
    FT_Bytes p = table;

    FT_Short nameIndex;


    GXV_NAME_ENTER( "nameIndex" );

    GXV_LIMIT_CHECK( 2 );
    nameIndex = FT_NEXT_SHORT ( p );
    GXV_TRACE(( " (nameIndex = %d)\n", nameIndex ));

    gxv_sfntName_validate( (FT_UShort)nameIndex,
                           255,
                           32768U,
                           gxvalid );

    GXV_EXIT;
  }
