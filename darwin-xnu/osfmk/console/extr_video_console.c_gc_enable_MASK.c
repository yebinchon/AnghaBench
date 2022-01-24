#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable ) (void*) ;int /*<<< orphan*/  (* show_cursor ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* clear_screen ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_3__ {int v_columns; int v_rows; } ;

/* Variables and functions */
 char ATTR_NONE ; 
 char FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  COLOR_FOREGROUND ; 
 scalar_t__ FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 void* disableConsoleOutput ; 
 unsigned char* gc_buffer_attributes ; 
 unsigned char* gc_buffer_characters ; 
 unsigned char* gc_buffer_colorcodes ; 
 int gc_buffer_columns ; 
 int gc_buffer_rows ; 
 int gc_buffer_size ; 
 unsigned char* gc_buffer_tab_stops ; 
 void* gc_enabled ; 
 TYPE_2__ gc_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  gc_x ; 
 int /*<<< orphan*/  gc_y ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 TYPE_1__ vinfo ; 
 scalar_t__ vm_initialized ; 

__attribute__((used)) static void
FUNC14( boolean_t enable )
{
	unsigned char *buffer_attributes = NULL;
	unsigned char *buffer_characters = NULL;
	unsigned char *buffer_colorcodes = NULL;
	unsigned char *buffer_tab_stops  = NULL;
	uint32_t buffer_columns = 0;
	uint32_t buffer_rows = 0;
	uint32_t buffer_size = 0;
	spl_t s;

	if ( enable == FALSE )
	{
		// only disable console output if it goes to the graphics console
		if ( FUNC3() == FALSE )
			disableConsoleOutput = TRUE;
		gc_enabled           = FALSE;
		gc_ops.enable(FALSE);
	}

	s = FUNC8( );
	FUNC1( );

	if ( gc_buffer_size )
	{
		buffer_attributes = gc_buffer_attributes;
		buffer_characters = gc_buffer_characters;
		buffer_colorcodes = gc_buffer_colorcodes;
		buffer_tab_stops  = gc_buffer_tab_stops;
		buffer_columns    = gc_buffer_columns;
		buffer_rows       = gc_buffer_rows;
		buffer_size       = gc_buffer_size;

		gc_buffer_attributes = NULL;
		gc_buffer_characters = NULL;
		gc_buffer_colorcodes = NULL;
		gc_buffer_tab_stops  = NULL;
		gc_buffer_columns    = 0;
		gc_buffer_rows       = 0;
		gc_buffer_size       = 0;

		FUNC2( );
		FUNC9( s );

		FUNC6( buffer_attributes, buffer_size );
		FUNC6( buffer_characters, buffer_size );
		FUNC6( buffer_colorcodes, buffer_size );
		FUNC6( buffer_tab_stops,  buffer_columns );
	}
	else
	{
		FUNC2( );
		FUNC9( s );
	}

	if ( enable )
	{
		if ( vm_initialized )
		{
			buffer_columns = vinfo.v_columns;
			buffer_rows    = vinfo.v_rows;
			buffer_size    = buffer_columns * buffer_rows;

			if ( buffer_size )
			{
				buffer_attributes = (unsigned char *) FUNC5( buffer_size );
				buffer_characters = (unsigned char *) FUNC5( buffer_size );
				buffer_colorcodes = (unsigned char *) FUNC5( buffer_size );
				buffer_tab_stops  = (unsigned char *) FUNC5( buffer_columns );

				if ( buffer_attributes == NULL ||
				     buffer_characters == NULL ||
				     buffer_colorcodes == NULL ||
				     buffer_tab_stops  == NULL )
				{
					if ( buffer_attributes ) FUNC6( buffer_attributes, buffer_size );
					if ( buffer_characters ) FUNC6( buffer_characters, buffer_size );
					if ( buffer_colorcodes ) FUNC6( buffer_colorcodes, buffer_size );
					if ( buffer_tab_stops  ) FUNC6( buffer_tab_stops,  buffer_columns );

					buffer_attributes = NULL;
					buffer_characters = NULL;
					buffer_colorcodes = NULL;
					buffer_tab_stops  = NULL;
					buffer_columns = 0;
					buffer_rows    = 0;
					buffer_size    = 0;
				}
				else
				{
					FUNC7( buffer_attributes, ATTR_NONE, buffer_size );
					FUNC7( buffer_characters, ' ', buffer_size );
					FUNC7( buffer_colorcodes, FUNC0( 0, COLOR_FOREGROUND, TRUE ), buffer_size );
					FUNC7( buffer_tab_stops, 0, buffer_columns );
				}
			}
		}

		s = FUNC8( );
		FUNC1( );

		gc_buffer_attributes = buffer_attributes;
		gc_buffer_characters = buffer_characters;
		gc_buffer_colorcodes = buffer_colorcodes;
		gc_buffer_tab_stops  = buffer_tab_stops;
		gc_buffer_columns    = buffer_columns;
		gc_buffer_rows       = buffer_rows;
		gc_buffer_size       = buffer_size;

		FUNC4();

		FUNC2( );
		FUNC9( s );

		gc_ops.clear_screen(gc_x, gc_y, 0, vinfo.v_rows, 2);
		gc_ops.show_cursor(gc_x, gc_y);

		gc_ops.enable(TRUE);
		gc_enabled           = TRUE;
		disableConsoleOutput = FALSE;
	}
}