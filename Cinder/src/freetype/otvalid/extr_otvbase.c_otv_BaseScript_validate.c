
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int BaseValues ;
 int DefaultMinMax ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int OTV_TRACE (char*) ;
 int otv_BaseValues_validate (int,int ) ;
 int otv_MinMax_validate (int,int ) ;

__attribute__((used)) static void
  otv_BaseScript_validate( FT_Bytes table,
                           OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt table_size;
    FT_UInt BaseLangSysCount;

    OTV_OPTIONAL_TABLE( BaseValues );
    OTV_OPTIONAL_TABLE( DefaultMinMax );


    OTV_NAME_ENTER( "BaseScript" );

    OTV_LIMIT_CHECK( 6 );
    OTV_OPTIONAL_OFFSET( BaseValues );
    OTV_OPTIONAL_OFFSET( DefaultMinMax );
    BaseLangSysCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (BaseLangSysCount = %d)\n", BaseLangSysCount ));

    table_size = BaseLangSysCount * 6 + 6;

    OTV_SIZE_CHECK( BaseValues );
    if ( BaseValues )
      otv_BaseValues_validate( table + BaseValues, otvalid );

    OTV_SIZE_CHECK( DefaultMinMax );
    if ( DefaultMinMax )
      otv_MinMax_validate( table + DefaultMinMax, otvalid );

    OTV_LIMIT_CHECK( BaseLangSysCount * 6 );


    for ( ; BaseLangSysCount > 0; BaseLangSysCount-- )
    {
      p += 4;

      otv_MinMax_validate( table + FT_NEXT_USHORT( p ), otvalid );
    }

    OTV_EXIT;
  }
