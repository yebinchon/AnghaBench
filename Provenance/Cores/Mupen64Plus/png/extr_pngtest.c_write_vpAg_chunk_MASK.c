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
typedef  int /*<<< orphan*/  png_structp ;
typedef  int png_byte ;
struct TYPE_2__ {int vpAg_units; scalar_t__ vpAg_height; scalar_t__ vpAg_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*,int) ; 
 TYPE_1__ user_chunk_data ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC3(png_structp write_ptr)
{
   png_byte vpAg[5] = {118, 112,  65, 103, '\0'};

   png_byte vpag_chunk_data[9];

   if (verbose != 0)
      FUNC0(STDERR, " vpAg = %lu x %lu, units = %d\n",
          (unsigned long)user_chunk_data.vpAg_width,
          (unsigned long)user_chunk_data.vpAg_height,
          user_chunk_data.vpAg_units);

   FUNC1(vpag_chunk_data, user_chunk_data.vpAg_width);
   FUNC1(vpag_chunk_data + 4, user_chunk_data.vpAg_height);
   vpag_chunk_data[8] = user_chunk_data.vpAg_units;
   FUNC2(write_ptr, vpAg, vpag_chunk_data, 9);
}