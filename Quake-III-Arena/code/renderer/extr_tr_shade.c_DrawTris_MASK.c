#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; int /*<<< orphan*/  numVertexes; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_1__ shaderCommands_t ;
struct TYPE_5__ {int /*<<< orphan*/  whiteImage; } ;

/* Variables and functions */
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_POLYMODE_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ tr ; 

__attribute__((used)) static void FUNC10 (shaderCommands_t *input) {
	FUNC0( tr.whiteImage );
	FUNC4 (1,1,1);

	FUNC1( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );
	FUNC5( 0, 0 );

	FUNC6 (GL_COLOR_ARRAY);
	FUNC6 (GL_TEXTURE_COORD_ARRAY);

	FUNC9 (3, GL_FLOAT, 16, input->xyz);	// padded for SIMD

	if (&qglLockArraysEXT) {
		FUNC7(0, input->numVertexes);
		FUNC2( "glLockArraysEXT\n" );
	}

	FUNC3( input->numIndexes, input->indexes );

	if (&qglUnlockArraysEXT) {
		FUNC8();
		FUNC2( "glUnlockArraysEXT\n" );
	}
	FUNC5( 0, 1 );
}