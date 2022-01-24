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
typedef  int GLenum ;

/* Variables and functions */
#define  GL_DST_ALPHA 134 
#define  GL_DST_COLOR 133 
#define  GL_ONE 132 
#define  GL_ONE_MINUS_DST_COLOR 131 
#define  GL_ONE_MINUS_SRC_ALPHA 130 
#define  GL_SRC_ALPHA 129 
#define  GL_ZERO 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2( char *n, GLenum f )
{
	switch ( f )
	{
	case GL_ONE:
		FUNC1( n, "GL_ONE" );
		break;
	case GL_ZERO:
		FUNC1( n, "GL_ZERO" );
		break;
	case GL_SRC_ALPHA:
		FUNC1( n, "GL_SRC_ALPHA" );
		break;
	case GL_ONE_MINUS_SRC_ALPHA:
		FUNC1( n, "GL_ONE_MINUS_SRC_ALPHA" );
		break;
	case GL_DST_COLOR:
		FUNC1( n, "GL_DST_COLOR" );
		break;
	case GL_ONE_MINUS_DST_COLOR:
		FUNC1( n, "GL_ONE_MINUS_DST_COLOR" );
		break;
	case GL_DST_ALPHA:
		FUNC1( n, "GL_DST_ALPHA" );
		break;
	default:
		FUNC0( n, "0x%x", f );
	}
}