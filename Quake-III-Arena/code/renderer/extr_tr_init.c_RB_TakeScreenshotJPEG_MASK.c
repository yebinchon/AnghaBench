#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {int vidWidth; int vidHeight; scalar_t__ deviceSupportsGamma; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* FS_WriteFile ) (char*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/ * (* Hunk_AllocateTempMemory ) (int) ;} ;
struct TYPE_4__ {scalar_t__ overbrightBits; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int /*<<< orphan*/ *) ; 
 TYPE_3__ glConfig ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ ri ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tr ; 

void FUNC6( int x, int y, int width, int height, char *fileName ) {
	byte		*buffer;

	buffer = ri.Hunk_AllocateTempMemory(glConfig.vidWidth*glConfig.vidHeight*4);

	FUNC2( x, y, width, height, GL_RGBA, GL_UNSIGNED_BYTE, buffer ); 

	// gamma correct
	if ( ( tr.overbrightBits > 0 ) && glConfig.deviceSupportsGamma ) {
		FUNC0( buffer, glConfig.vidWidth * glConfig.vidHeight * 4 );
	}

	ri.FS_WriteFile( fileName, buffer, 1 );		// create path
	FUNC1( fileName, 95, glConfig.vidWidth, glConfig.vidHeight, buffer);

	ri.Hunk_FreeTempMemory( buffer );
}