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
struct TYPE_2__ {int /*<<< orphan*/ * cdda_stream; } ;

/* Variables and functions */
 TYPE_1__* Pico_mcd ; 
 int PsndRate ; 
 scalar_t__ cdda_out_buffer ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,scalar_t__,int) ; 
 int FUNC4 (scalar_t__,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int *buffer, int length)
{
  int ret, cdda_bytes, mult = 1;

  cdda_bytes = length*4;
  if (PsndRate <= 22050 + 100) mult = 2;
  if (PsndRate <  22050 - 100) mult = 4;
  cdda_bytes *= mult;

  ret = FUNC4(cdda_out_buffer, cdda_bytes, Pico_mcd->cdda_stream);
  if (ret < cdda_bytes) {
    FUNC0((char *)cdda_out_buffer + ret, 0, cdda_bytes - ret);
    Pico_mcd->cdda_stream = NULL;
    return;
  }

  // now mix
  switch (mult) {
    case 1: FUNC1(buffer, cdda_out_buffer, length*2); break;
    case 2: FUNC2(buffer, cdda_out_buffer, length*2); break;
    case 4: FUNC3(buffer, cdda_out_buffer, length*2); break;
  }
}