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
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
  FUNC4( FT_Bytes       table,
                            OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   BaseTagCount;


    FUNC2( "BaseTagList" );

    FUNC1( 2 );

    BaseTagCount = FUNC0( p );

    FUNC3(( " (BaseTagCount = %d)\n", BaseTagCount ));

    FUNC1( BaseTagCount * 4 );          /* BaselineTag */

    OTV_EXIT;
  }