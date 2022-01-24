#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; scalar_t__ height; scalar_t__ width; scalar_t__ pixel; int /*<<< orphan*/  face_id; } ;
typedef  int /*<<< orphan*/ * FT_Size ;
typedef  int /*<<< orphan*/  FT_Face ;
typedef  int /*<<< orphan*/  FT_F26Dot6 ;
typedef  scalar_t__ FT_Error ;
typedef  TYPE_1__* FTC_Scaler ;
typedef  int /*<<< orphan*/  FTC_Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static FT_Error
  FUNC6( FTC_Manager  manager,
                          FTC_Scaler   scaler,
                          FT_Size     *asize )
  {
    FT_Face   face;
    FT_Size   size = NULL;
    FT_Error  error;


    error = FUNC0( manager, scaler->face_id, &face );
    if ( error )
      goto Exit;

    error = FUNC3( face, &size );
    if ( error )
      goto Exit;

    FUNC1( size );

    if ( scaler->pixel )
      error = FUNC5( face, scaler->width, scaler->height );
    else
      error = FUNC4( face,
                                (FT_F26Dot6)scaler->width,
                                (FT_F26Dot6)scaler->height,
                                scaler->x_res,
                                scaler->y_res );
    if ( error )
    {
      FUNC2( size );
      size = NULL;
    }

  Exit:
    *asize = size;
    return error;
  }