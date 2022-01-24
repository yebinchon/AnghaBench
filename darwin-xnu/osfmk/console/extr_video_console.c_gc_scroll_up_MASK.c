#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* scroll_up ) (int,unsigned int,unsigned int) ;int /*<<< orphan*/  (* paint_char ) (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ATTR_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__* gc_buffer_attributes ; 
 char* gc_buffer_characters ; 
 unsigned char* gc_buffer_colorcodes ; 
 int gc_buffer_columns ; 
 unsigned int gc_buffer_rows ; 
 int /*<<< orphan*/  gc_buffer_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned char gc_color_code ; 
 TYPE_1__ gc_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int,unsigned int) ; 

__attribute__((used)) static void 
FUNC8(int num, unsigned int top, unsigned int bottom)
{
	if (!gc_buffer_size) return;

	if ( bottom <= gc_buffer_rows )
	{
		unsigned char colorcodesave = gc_color_code;
		uint32_t column, row;
		uint32_t index, jump;

		jump = num * gc_buffer_columns;

		for ( row = top ; row < bottom - num ; row++ )
		{
			index = row * gc_buffer_columns;

			for ( column = 0 ; column < gc_buffer_columns ; index++, column++ )
			{
				if ( gc_buffer_attributes[index] != gc_buffer_attributes[index + jump] || 
				     gc_buffer_characters[index] != gc_buffer_characters[index + jump] || 
				     gc_buffer_colorcodes[index] != gc_buffer_colorcodes[index + jump] )
				{
					if ( gc_color_code != gc_buffer_colorcodes[index + jump] )
					{
						FUNC2(FUNC0(gc_buffer_colorcodes[index + jump], TRUE ), TRUE );
						FUNC2(FUNC0(gc_buffer_colorcodes[index + jump], FALSE), FALSE);
					}

					if ( gc_buffer_colorcodes[index] != gc_buffer_colorcodes[index + jump] )
					{
						gc_ops.paint_char( /* xx             */ column,
						                   /* yy             */ row,
						                   /* ch             */ gc_buffer_characters[index + jump],
						                   /* attrs          */ gc_buffer_attributes[index + jump],
						                   /* ch_previous    */ 0,
						                   /* attrs_previous */ 0 );
					}
					else
					{
						gc_ops.paint_char( /* xx             */ column,
						                   /* yy             */ row,
						                   /* ch             */ gc_buffer_characters[index + jump],
						                   /* attrs          */ gc_buffer_attributes[index + jump],
						                   /* ch_previous    */ gc_buffer_characters[index],
						                   /* attrs_previous */ gc_buffer_attributes[index] );
					}

					gc_buffer_attributes[index] = gc_buffer_attributes[index + jump];
					gc_buffer_characters[index] = gc_buffer_characters[index + jump];
					gc_buffer_colorcodes[index] = gc_buffer_colorcodes[index + jump];
				}
			}
		}

		if ( colorcodesave != gc_color_code )
		{
			FUNC2(FUNC0(colorcodesave, TRUE ), TRUE );
			FUNC2(FUNC0(colorcodesave, FALSE), FALSE);
		}

		/* Now set the freed up lines to the background colour */

		for ( row = bottom - num ; row < bottom ; row++ )
		{
			index = row * gc_buffer_columns;

			for ( column = 0 ; column < gc_buffer_columns ; index++, column++ )
			{
				if ( gc_buffer_attributes[index] != ATTR_NONE     || 
				     gc_buffer_characters[index] != ' '           || 
				     gc_buffer_colorcodes[index] != gc_color_code )
				{
					if ( gc_buffer_colorcodes[index] != gc_color_code )
					{
						gc_ops.paint_char( /* xx             */ column,
						                   /* yy             */ row,
						                   /* ch             */ ' ',
						                   /* attrs          */ ATTR_NONE,
						                   /* ch_previous    */ 0,
						                   /* attrs_previous */ 0 );
					}
					else
					{
						gc_ops.paint_char( /* xx             */ column,
						                   /* yy             */ row,
						                   /* ch             */ ' ',
						                   /* attrs          */ ATTR_NONE,
						                   /* ch_previous    */ gc_buffer_characters[index],
						                   /* attrs_previous */ gc_buffer_attributes[index] );
					}

					gc_buffer_attributes[index] = ATTR_NONE;
					gc_buffer_characters[index] = ' ';
					gc_buffer_colorcodes[index] = gc_color_code;
				}
			}
		}
	}
	else
	{
		gc_ops.scroll_up(num, top, bottom);

		/* Now set the freed up lines to the background colour */

		FUNC1(0, bottom - num, top, bottom, 0);
	}
}