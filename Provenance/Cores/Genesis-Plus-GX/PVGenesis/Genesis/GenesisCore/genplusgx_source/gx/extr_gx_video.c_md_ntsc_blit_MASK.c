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
typedef  int /*<<< orphan*/  md_ntsc_t ;
typedef  int /*<<< orphan*/  md_ntsc_out_t ;
typedef  int /*<<< orphan*/  MD_NTSC_IN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int md_ntsc_in_chunk ; 
 scalar_t__ texturemem ; 

void FUNC5( md_ntsc_t const* ntsc, MD_NTSC_IN_T const* table, unsigned char* input,
                   int in_width, int vline)
{
  int const chunk_count = in_width / md_ntsc_in_chunk - 1;

  /* use palette entry 0 for unused pixels */
  MD_NTSC_IN_T border = table[0];

  FUNC1( ntsc, border,
        FUNC0( table[*input++] ),
        FUNC0( table[*input++] ),
        FUNC0( table[*input++] ) );

  /* directly fill the RGB565 texture */
  /* one tile is 32 byte = 4x4 pixels */
  /* tiles are stored continuously in texture memory */
  in_width = FUNC3(in_width) >> 2;
  int offset = ((in_width << 5) * (vline >> 2)) + ((vline & 3) * 8);
  md_ntsc_out_t* __restrict__ line_out  = (md_ntsc_out_t*)(texturemem + offset);

  int n;

  for ( n = chunk_count; n; --n )
  {
    /* order of input and output pixels must not be altered */
    FUNC2( 0, ntsc, FUNC0( table[*input++] ) );
    FUNC4( 0, *line_out++ );
    FUNC4( 1, *line_out++ );

    FUNC2( 1, ntsc, FUNC0( table[*input++] ) );
    FUNC4( 2, *line_out++ );
    FUNC4( 3, *line_out++ );

    line_out += 12;

    FUNC2( 2, ntsc, FUNC0( table[*input++] ) );
    FUNC4( 4, *line_out++ );
    FUNC4( 5, *line_out++ );

    FUNC2( 3, ntsc, FUNC0( table[*input++] ) );
    FUNC4( 6, *line_out++ );
    FUNC4( 7, *line_out++ );

    line_out += 12;
}

  /* finish final pixels */
  FUNC2( 0, ntsc, FUNC0( table[*input++] ) );
  FUNC4( 0, *line_out++ );
  FUNC4( 1, *line_out++ );

  FUNC2( 1, ntsc, border );
  FUNC4( 2, *line_out++ );
  FUNC4( 3, *line_out++ );

  line_out += 12;

  FUNC2( 2, ntsc, border );
  FUNC4( 4, *line_out++ );
  FUNC4( 5, *line_out++ );

  FUNC2( 3, ntsc, border );
  FUNC4( 6, *line_out++ );
  FUNC4( 7, *line_out++ );
}