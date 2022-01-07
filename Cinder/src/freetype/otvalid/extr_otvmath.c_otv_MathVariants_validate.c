
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Int ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int) ;
 int HCoverage ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int Offset ;
 int VCoverage ;
 int otv_Coverage_validate (int,int ,int ) ;
 int otv_MathGlyphConstruction_validate (int,int ) ;

__attribute__((used)) static void
  otv_MathVariants_validate( FT_Bytes table,
                             OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt vcnt, hcnt, i, table_size;

    OTV_OPTIONAL_TABLE( VCoverage );
    OTV_OPTIONAL_TABLE( HCoverage );
    OTV_OPTIONAL_TABLE( Offset );


    OTV_NAME_ENTER( "MathVariants" );

    OTV_LIMIT_CHECK( 10 );

    p += 2;
    OTV_OPTIONAL_OFFSET( VCoverage );
    OTV_OPTIONAL_OFFSET( HCoverage );
    vcnt = FT_NEXT_USHORT( p );
    hcnt = FT_NEXT_USHORT( p );

    OTV_LIMIT_CHECK( 2 * vcnt + 2 * hcnt );
    table_size = 10 + 2 * vcnt + 2 * hcnt;

    OTV_SIZE_CHECK( VCoverage );
    if ( VCoverage )
      otv_Coverage_validate( table + VCoverage, otvalid, (FT_Int)vcnt );

    OTV_SIZE_CHECK( HCoverage );
    if ( HCoverage )
      otv_Coverage_validate( table + HCoverage, otvalid, (FT_Int)hcnt );

    for ( i = 0; i < vcnt; i++ )
    {
      OTV_OPTIONAL_OFFSET( Offset );
      OTV_SIZE_CHECK( Offset );
      otv_MathGlyphConstruction_validate( table + Offset, otvalid );
    }

    for ( i = 0; i < hcnt; i++ )
    {
      OTV_OPTIONAL_OFFSET( Offset );
      OTV_SIZE_CHECK( Offset );
      otv_MathGlyphConstruction_validate( table + Offset, otvalid );
    }

    OTV_EXIT;
  }
