
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Bytes ;


 int FALSE ;
 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int TRUE ;
 int otv_Coverage_validate (scalar_t__,int ,int) ;
 int otv_MathItalicsCorrectionInfo_validate (scalar_t__,int ,int ) ;
 int otv_MathKernInfo_validate (scalar_t__,int ) ;

__attribute__((used)) static void
  otv_MathGlyphInfo_validate( FT_Bytes table,
                              OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt MathItalicsCorrectionInfo, MathTopAccentAttachment;
    FT_UInt ExtendedShapeCoverage, MathKernInfo;


    OTV_NAME_ENTER( "MathGlyphInfo" );

    OTV_LIMIT_CHECK( 8 );

    MathItalicsCorrectionInfo = FT_NEXT_USHORT( p );
    MathTopAccentAttachment = FT_NEXT_USHORT( p );
    ExtendedShapeCoverage = FT_NEXT_USHORT( p );
    MathKernInfo = FT_NEXT_USHORT( p );

    if ( MathItalicsCorrectionInfo )
      otv_MathItalicsCorrectionInfo_validate(
        table + MathItalicsCorrectionInfo, otvalid, TRUE );


    if ( MathTopAccentAttachment )
      otv_MathItalicsCorrectionInfo_validate(
        table + MathTopAccentAttachment, otvalid, FALSE );

    if ( ExtendedShapeCoverage )
    {
      OTV_NAME_ENTER( "ExtendedShapeCoverage" );
      otv_Coverage_validate( table + ExtendedShapeCoverage, otvalid, -1 );
      OTV_EXIT;
    }

    if ( MathKernInfo )
      otv_MathKernInfo_validate( table + MathKernInfo, otvalid );

    OTV_EXIT;
  }
