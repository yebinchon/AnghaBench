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
typedef  int /*<<< orphan*/ * FT_Service_MetricsVariations ;
typedef  int /*<<< orphan*/  FT_Face ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  Invalid_Face_Handle ; 
 int /*<<< orphan*/  METRICS_VARIATIONS ; 

__attribute__((used)) static FT_Error
  FUNC4( FT_Face                        face,
                            FT_Service_MetricsVariations  *aservice )
  {
    FT_Error  error;


    *aservice = NULL;

    if ( !face )
      return FUNC3( Invalid_Face_Handle );

    error = FUNC0( Invalid_Argument );

    if ( FUNC2( face ) )
    {
      FUNC1( face,
                              *aservice,
                              METRICS_VARIATIONS );

      if ( *aservice )
        error = FT_Err_Ok;
    }

    return error;
  }