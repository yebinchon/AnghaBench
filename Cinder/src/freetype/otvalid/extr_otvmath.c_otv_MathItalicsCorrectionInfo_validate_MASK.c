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
typedef  scalar_t__ FT_Int ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int Coverage ; 
 int DeviceTableOffset ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC9( FT_Bytes       table,
                                          OTV_Validator  otvalid,
                                          FT_Int         isItalic )
  {
    FT_Bytes  p = table;
    FT_UInt   i, cnt, table_size;

    FUNC5( Coverage );
    FUNC5( DeviceTableOffset );

    FUNC1( isItalic );  /* only used if tracing is active */


    FUNC3( isItalic ? "MathItalicsCorrectionInfo"
                             : "MathTopAccentAttachment" );

    FUNC2( 4 );

    FUNC4( Coverage );
    cnt = FUNC0( p );

    FUNC2( 4 * cnt );
    table_size = 4 + 4 * cnt;

    FUNC6( Coverage );
    FUNC7( table + Coverage, otvalid, (FT_Int)cnt );

    for ( i = 0; i < cnt; i++ )
    {
      p += 2;                                            /* Skip the value */
      FUNC4( DeviceTableOffset );
      FUNC6( DeviceTableOffset );
      if ( DeviceTableOffset )
        FUNC8( table + DeviceTableOffset, otvalid );
    }

    OTV_EXIT;
  }