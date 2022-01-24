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
struct audsrv_fmt_t {unsigned int freq; int /*<<< orphan*/  channels; int /*<<< orphan*/  bits; } ;
typedef  int /*<<< orphan*/  ps2_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_BITS ; 
 int /*<<< orphan*/  AUDIO_CHANNELS ; 
 int /*<<< orphan*/  MAX_VOLUME ; 
 char* FUNC0 () ; 
 int FUNC1 (struct audsrv_fmt_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(ps2_audio_t *ps2, unsigned rate)
{
   int err;
   struct audsrv_fmt_t format;

   format.bits = AUDIO_BITS;
   format.freq = rate;
   format.channels = AUDIO_CHANNELS;

   err = FUNC1(&format);

   if (err)
   {
      FUNC3("set format returned %d\n", err);
      FUNC3("audsrv returned error string: %s\n", FUNC0());
   }

   FUNC2(MAX_VOLUME);
}