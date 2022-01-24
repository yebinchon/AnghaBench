#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_18__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_17__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_16__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_23__ {scalar_t__ op; TYPE_5__ pt3; TYPE_4__ pt2; TYPE_3__ pt1; TYPE_2__ pt0; } ;
struct TYPE_22__ {TYPE_1__* decoder; } ;
struct TYPE_21__ {void** error; } ;
struct TYPE_20__ {int /*<<< orphan*/  path_begun; } ;
struct TYPE_15__ {TYPE_6__ builder; } ;
typedef  TYPE_6__ PS_Builder ;
typedef  void* FT_Error ;
typedef  TYPE_7__* CF2_OutlineCallbacks ;
typedef  TYPE_8__* CF2_Outline ;
typedef  TYPE_9__* CF2_CallbackParams ;

/* Variables and functions */
 scalar_t__ CF2_PathOpCubeTo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (TYPE_6__*,int) ; 
 void* FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC4( CF2_OutlineCallbacks      callbacks,
                      const CF2_CallbackParams  params )
  {
    FT_Error  error;

    /* downcast the object pointer */
    CF2_Outline  outline = (CF2_Outline)callbacks;
    PS_Builder*  builder;


    FUNC0( outline && outline->decoder );
    FUNC0( params->op == CF2_PathOpCubeTo );

    builder = &outline->decoder->builder;

    if ( !builder->path_begun )
    {
      /* record the move before the line; also check points and set */
      /* `path_begun'                                               */
      error = FUNC3( builder,
                                      params->pt0.x,
                                      params->pt0.y );
      if ( error )
      {
        if ( !*callbacks->error )
          *callbacks->error =  error;
        return;
      }
    }

    /* prepare room for 3 points: 2 off-curve, 1 on-curve */
    error = FUNC2( builder, 3 );
    if ( error )
    {
      if ( !*callbacks->error )
        *callbacks->error =  error;
      return;
    }

    FUNC1( builder,
                          params->pt1.x,
                          params->pt1.y, 0 );
    FUNC1( builder,
                          params->pt2.x,
                          params->pt2.y, 0 );
    FUNC1( builder,
                          params->pt3.x,
                          params->pt3.y, 1 );
  }