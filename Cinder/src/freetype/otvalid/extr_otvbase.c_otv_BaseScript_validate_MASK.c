#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int BaseValues ; 
 int DefaultMinMax ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC9( FT_Bytes       table,
                           OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   table_size;
    FT_UInt   BaseLangSysCount;

    FUNC4( BaseValues    );
    FUNC4( DefaultMinMax );


    FUNC2( "BaseScript" );

    FUNC1( 6 );
    FUNC3( BaseValues    );
    FUNC3( DefaultMinMax );
    BaseLangSysCount = FUNC0( p );

    FUNC6(( " (BaseLangSysCount = %d)\n", BaseLangSysCount ));

    table_size = BaseLangSysCount * 6 + 6;

    FUNC5( BaseValues );
    if ( BaseValues )
      FUNC7( table + BaseValues, otvalid );

    FUNC5( DefaultMinMax );
    if ( DefaultMinMax )
      FUNC8( table + DefaultMinMax, otvalid );

    FUNC1( BaseLangSysCount * 6 );

    /* BaseLangSysRecord */
    for ( ; BaseLangSysCount > 0; BaseLangSysCount-- )
    {
      p += 4;       /* skip BaseLangSysTag */

      FUNC8( table + FUNC0( p ), otvalid );
    }

    OTV_EXIT;
  }