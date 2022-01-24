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
typedef  int u8 ;
typedef  int u32 ;
typedef  int s16 ;
typedef  int Result ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CSND_ENCODING_ADPCM ; 
 int CSND_ENCODING_PSG ; 
 int CSND_LOOPMODE_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,int) ; 
 int FUNC4 (float,float) ; 
 int CTR_CSND_TICKS_PER_SAMPLE ; 
 int FUNC5 (int) ; 
 int SOUND_ENABLE ; 
 int SOUND_ONE_SHOT ; 
 int csndChannels ; 
 int FUNC6 (void*) ; 

Result FUNC7(int chn, u32 flags, float vol, float pan,
      void* data0, void* data1, u32 size)
{
	u32 paddr0   = 0;
   u32 paddr1   = 0;
	int encoding = (flags >> 12) & 3;
	int loopMode = (flags >> 10) & 3;

	if (!(csndChannels & FUNC0(chn)))
		return 1;

	if (!loopMode)
      flags |= SOUND_ONE_SHOT;

	if (encoding != CSND_ENCODING_PSG)
	{
		if (data0)
         paddr0 = FUNC6(data0);
		if (data1)
         paddr1 = FUNC6(data1);

		if (data0 && encoding == CSND_ENCODING_ADPCM)
		{
			int adpcmSample = ((s16*)data0)[-2];
			int adpcmIndex  = ((u8*)data0)[-2];
			FUNC1(chn, 0, adpcmSample, adpcmIndex);
		}
	}

	flags &= ~0xFFFF001F;
	flags |= SOUND_ENABLE | FUNC5(chn) | (CTR_CSND_TICKS_PER_SAMPLE << 16);

	u32 volumes = FUNC4(vol, pan);
	FUNC3(flags, paddr0, paddr1, size, volumes, volumes);

	if (loopMode == CSND_LOOPMODE_NORMAL && paddr1 > paddr0)
	{
		/* Now that the first block is playing,
       * configure the size of the subsequent blocks */
		size -= paddr1 - paddr0;
		FUNC2(chn, 1, paddr1, size);
	}

	return 0;
}