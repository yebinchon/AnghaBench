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
typedef  scalar_t__ FT_UShort ;
typedef  int /*<<< orphan*/  FT_Short ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                                         FT_Bytes       limit,
                                         FT_UShort      nPairs,
                                         GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;
    FT_UShort  i;

    FT_UShort  last_gid_left  = 0;
    FT_UShort  last_gid_right = 0;

    FUNC2( limit );


    FUNC3( "kern format 0 pairs" );

    for ( i = 0; i < nPairs; i++ )
    {
      FT_UShort  gid_left;
      FT_UShort  gid_right;
#ifdef GXV_LOAD_UNUSED_VARS
      FT_Short   kernValue;
#endif


      /* left */
      gid_left  = FUNC1( p );
      FUNC5( gid_left, gxvalid );

      /* right */
      gid_right = FUNC1( p );
      FUNC5( gid_right, gxvalid );

      /* Pairs of left and right GIDs must be unique and sorted. */
      FUNC4(( "left gid = %u, right gid = %u\n", gid_left, gid_right ));
      if ( gid_left == last_gid_left )
      {
        if ( last_gid_right < gid_right )
          last_gid_right = gid_right;
        else
          FT_INVALID_DATA;
      }
      else if ( last_gid_left < gid_left )
      {
        last_gid_left  = gid_left;
        last_gid_right = gid_right;
      }
      else
        FT_INVALID_DATA;

      /* skip the kern value */
#ifdef GXV_LOAD_UNUSED_VARS
      kernValue = FT_NEXT_SHORT( p );
#else
      p += 2;
#endif
    }

    GXV_EXIT;
  }