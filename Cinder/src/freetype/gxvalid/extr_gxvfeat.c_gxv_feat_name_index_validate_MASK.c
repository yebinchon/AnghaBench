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
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int /*<<< orphan*/  FT_UShort ;
typedef  scalar_t__ FT_Short ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC5( FT_Bytes       table,
                                FT_Bytes       limit,
                                GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table;

    FT_Short  nameIndex;


    FUNC2( "nameIndex" );

    FUNC1( 2 );
    nameIndex = FUNC0 ( p );
    FUNC3(( " (nameIndex = %d)\n", nameIndex ));

    FUNC4( (FT_UShort)nameIndex,
                           255,
                           32768U,
                           gxvalid );

    GXV_EXIT;
  }