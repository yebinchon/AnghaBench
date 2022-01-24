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
struct TYPE_4__ {int /*<<< orphan*/  yMax; int /*<<< orphan*/  xMax; int /*<<< orphan*/  yMin; int /*<<< orphan*/  xMin; } ;
typedef  int /*<<< orphan*/  FT_Outline ;
typedef  TYPE_1__ FT_BBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,double,double,double,double) ; 

__attribute__((used)) static void
  FUNC4( FT_Outline*  outline )
  {
    FT_BBox  bbox;

    /* compute and display cbox */
    FUNC1( outline, &bbox );
    FUNC3( "cbox = [%.2f %.2f %.2f %.2f]\n",
             FUNC2( bbox.xMin ),
             FUNC2( bbox.yMin ),
             FUNC2( bbox.xMax ),
             FUNC2( bbox.yMax ) );

    /* compute and display bbox */
    FUNC0( outline, &bbox );
    FUNC3( "bbox = [%.2f %.2f %.2f %.2f]\n",
             FUNC2( bbox.xMin ),
             FUNC2( bbox.yMin ),
             FUNC2( bbox.xMax ),
             FUNC2( bbox.yMax ) );
  }