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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 

__attribute__((used)) static char *
FUNC1 (char *outstring, const char *string, u16 level, u16 waveform)
{
  if (level > 0)
    {
      switch (waveform)
        {
        case 0:
          FUNC0(outstring, "%s Sawtooth\r\n", string);
          break;
        case 1:
          FUNC0(outstring, "%s Square\r\n", string);
          break;
        case 2:
          FUNC0(outstring, "%s Triangle\r\n", string);
          break;
        case 3:
          FUNC0(outstring, "%s Noise\r\n", string);
          break;
        }
    }

  return outstring;
}