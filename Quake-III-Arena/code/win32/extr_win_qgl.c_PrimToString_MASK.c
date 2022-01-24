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
 int GL_LINES ; 
 int GL_LINE_LOOP ; 
 int GL_LINE_STRIP ; 
 int GL_POINTS ; 
 int GL_POLYGON ; 
 int GL_QUADS ; 
 int GL_QUAD_STRIP ; 
 int GL_TRIANGLES ; 
 int GL_TRIANGLE_FAN ; 
 int GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const char * FUNC2( GLenum mode )
{
	static char prim[1024];

	if ( mode == GL_TRIANGLES )
		FUNC1( prim, "GL_TRIANGLES" );
	else if ( mode == GL_TRIANGLE_STRIP )
		FUNC1( prim, "GL_TRIANGLE_STRIP" );
	else if ( mode == GL_TRIANGLE_FAN )
		FUNC1( prim, "GL_TRIANGLE_FAN" );
	else if ( mode == GL_QUADS )
		FUNC1( prim, "GL_QUADS" );
	else if ( mode == GL_QUAD_STRIP )
		FUNC1( prim, "GL_QUAD_STRIP" );
	else if ( mode == GL_POLYGON )
		FUNC1( prim, "GL_POLYGON" );
	else if ( mode == GL_POINTS )
		FUNC1( prim, "GL_POINTS" );
	else if ( mode == GL_LINES )
		FUNC1( prim, "GL_LINES" );
	else if ( mode == GL_LINE_STRIP )
		FUNC1( prim, "GL_LINE_STRIP" );
	else if ( mode == GL_LINE_LOOP )
		FUNC1( prim, "GL_LINE_LOOP" );
	else
		FUNC0( prim, "0x%x", mode );

	return prim;
}