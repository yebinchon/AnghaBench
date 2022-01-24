#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ extra3; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_ULong ;
typedef  int FT_UInt ;
typedef  scalar_t__ FT_PtrDist ;
typedef  int FT_Int ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ device ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC7( FT_Bytes       table,
                            FT_UInt        format,
                            OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   count;

#ifdef FT_DEBUG_LEVEL_TRACE
    FT_Int    loop;
    FT_ULong  res = 0;


    OTV_NAME_ENTER( "ValueRecord" );

    /* display `format' in dual representation */
    for ( loop = 7; loop >= 0; loop-- )
    {
      res <<= 4;
      res  += ( format >> loop ) & 1;
    }

    OTV_TRACE(( " (format 0b%08lx)\n", res ));
#endif

    if ( format >= 0x100 )
      FT_INVALID_FORMAT;

    for ( count = 4; count > 0; count-- )
    {
      if ( format & 1 )
      {
        /* XPlacement, YPlacement, XAdvance, YAdvance */
        FUNC0( 2 );
        p += 2;
      }

      format >>= 1;
    }

    for ( count = 4; count > 0; count-- )
    {
      if ( format & 1 )
      {
        FT_PtrDist  table_size;

        FUNC3( device );


        /* XPlaDevice, YPlaDevice, XAdvDevice, YAdvDevice */
        FUNC0( 2 );
        FUNC2( device );

        table_size = p - otvalid->extra3;

        FUNC4( device );
        if ( device )
          FUNC6( otvalid->extra3 + device, otvalid );
      }
      format >>= 1;
    }

    OTV_EXIT;
  }