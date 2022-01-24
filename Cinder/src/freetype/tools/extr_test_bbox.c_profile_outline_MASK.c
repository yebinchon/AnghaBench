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
struct TYPE_4__ {int xMin; int yMin; int xMax; int yMax; } ;
typedef  int /*<<< orphan*/  FT_Outline ;
typedef  TYPE_1__ FT_BBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 double FUNC2 (int) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,...) ; 

__attribute__((used)) static void
  FUNC5( FT_Outline*   outline,
                   long          repeat )
  {
    FT_BBox  bbox;
    long     count;
    long     time0;

    time0 = FUNC3();
    for ( count = repeat; count > 0; count-- )
      FUNC1( outline, &bbox );

    time0 = FUNC3() - time0;
    FUNC4( "time = %6.3f cbox = [%8.4f %8.4f %8.4f %8.4f]\n",
             ((double)time0/10000.0),
             FUNC2( bbox.xMin ),
             FUNC2( bbox.yMin ),
             FUNC2( bbox.xMax ),
             FUNC2( bbox.yMax ) );
    FUNC4( "cbox_hex = [%08X %08X %08X %08X]\n",
             bbox.xMin, bbox.yMin, bbox.xMax, bbox.yMax );


    time0 = FUNC3();
    for ( count = repeat; count > 0; count-- )
      FUNC0( outline, &bbox );

    time0 = FUNC3() - time0;
    FUNC4( "time = %6.3f bbox = [%8.4f %8.4f %8.4f %8.4f]\n",
             ((double)time0/10000.0),
             FUNC2( bbox.xMin ),
             FUNC2( bbox.yMin ),
             FUNC2( bbox.xMax ),
             FUNC2( bbox.yMax ) );
    FUNC4( "bbox_hex = [%08X %08X %08X %08X]\n",
             bbox.xMin, bbox.yMin, bbox.xMax, bbox.yMax );
  }