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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int POPT_EN_MCD_CDDA ; 
 int PicoOpt ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ cdda_out_pos ; 
 int decoder_active ; 
 int FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mp3_current_file ; 
 int mp3_file_len ; 
 int mp3_file_pos ; 
 int FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(void *f_, int pos1024)
{
	unsigned char buf[2048];
	FILE *f = f_;
	int ret;

	mp3_file_len = mp3_file_pos = 0;
	mp3_current_file = NULL;
	cdda_out_pos = 0;
	decoder_active = 0;

	if (!(PicoOpt & POPT_EN_MCD_CDDA) || f == NULL) // cdda disabled or no file?
		return;

	FUNC1(f, 0, SEEK_END);
	mp3_file_len = FUNC2(f);

	// search for first sync word, skipping stuff like ID3 tags
	while (mp3_file_pos < 128*1024) {
		int offs, bytes;

		FUNC1(f, mp3_file_pos, SEEK_SET);
		bytes = FUNC0(buf, 1, sizeof(buf), f);
		if (bytes < 4)
			break;
		offs = FUNC3(buf, bytes);
		if (offs >= 0) {
			mp3_file_pos += offs;
			break;
		}
		mp3_file_pos += bytes - 3;
	}

	// seek..
	if (pos1024 != 0) {
		unsigned long long pos64 = mp3_file_len - mp3_file_pos;
		pos64 *= pos1024;
		mp3_file_pos += pos64 >> 10;
	}

	ret = FUNC5(f, mp3_file_pos);
	if (ret != 0) {
		return;
	}

	mp3_current_file = f;
	decoder_active = 1;

	FUNC4(mp3_current_file, &mp3_file_pos, mp3_file_len);
}