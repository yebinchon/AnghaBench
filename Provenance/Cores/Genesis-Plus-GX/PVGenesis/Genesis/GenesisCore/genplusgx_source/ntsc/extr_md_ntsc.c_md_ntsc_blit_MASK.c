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
typedef  int /*<<< orphan*/  md_ntsc_t ;
typedef  int /*<<< orphan*/  md_ntsc_out_t ;
struct TYPE_2__ {int pitch; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  MD_NTSC_IN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ bitmap ; 
 int md_ntsc_in_chunk ; 

void FUNC4( md_ntsc_t const* ntsc, MD_NTSC_IN_T const* table, unsigned char* input,
                   int in_width, int vline)
{
  int const chunk_count = in_width / md_ntsc_in_chunk - 1;

  /* use palette entry 0 for unused pixels */
  MD_NTSC_IN_T border = table[0];

  FUNC1( ntsc, border,
        FUNC0( table[*input++] ),
        FUNC0( table[*input++] ),
        FUNC0( table[*input++] ) );

  md_ntsc_out_t* restrict line_out  = (md_ntsc_out_t*)(&bitmap.data[(vline * bitmap.pitch)]);

  int n;

  for ( n = chunk_count; n; --n )
  {
    /* order of input and output pixels must not be altered */
    FUNC2( 0, ntsc, FUNC0( table[*input++] ) );
    FUNC3( 0, *line_out++ );
    FUNC3( 1, *line_out++ );

    FUNC2( 1, ntsc, FUNC0( table[*input++] ) );
    FUNC3( 2, *line_out++ );
    FUNC3( 3, *line_out++ );

    FUNC2( 2, ntsc, FUNC0( table[*input++] ) );
    FUNC3( 4, *line_out++ );
    FUNC3( 5, *line_out++ );

    FUNC2( 3, ntsc, FUNC0( table[*input++] ) );
    FUNC3( 6, *line_out++ );
    FUNC3( 7, *line_out++ );
  }

  /* finish final pixels */
  FUNC2( 0, ntsc, FUNC0( table[*input++] ) );
  FUNC3( 0, *line_out++ );
  FUNC3( 1, *line_out++ );

  FUNC2( 1, ntsc, border );
  FUNC3( 2, *line_out++ );
  FUNC3( 3, *line_out++ );

  FUNC2( 2, ntsc, border );
  FUNC3( 4, *line_out++ );
  FUNC3( 5, *line_out++ );

  FUNC2( 3, ntsc, border );
  FUNC3( 6, *line_out++ );
  FUNC3( 7, *line_out++ );
}