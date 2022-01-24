#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sector_buf ;
typedef  int UBYTE ;
struct TYPE_5__ {int current_sector; int sectorsize; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ATR_Info ;

/* Variables and functions */
 int EOF ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC7(FILE *infp, ATR_Info *pai)
{
	UBYTE sector_buf[256];
	FUNC4(sector_buf, 0, sizeof(sector_buf));
	for (;;) {
		/* sector group */
		int sector_no;
		int sector_type;
		sector_no = FUNC2(infp);
		sector_type = FUNC1(infp);
		if (sector_type == 0x45)
			return TRUE;
		if (sector_no < pai->current_sector) {
			FUNC0("Error: current sector is %d, next sector group at %d", pai->current_sector, sector_no);
			return FALSE;
		}
		if (!FUNC5(pai, sector_no))
			return FALSE;
		for (;;) {
			/* sector */
			int i;
			switch (sector_type & 0x7f) {
			case 0x41:
				i = FUNC1(infp);
				if (i == EOF)
					return FALSE;
				do {
					int b = FUNC1(infp);
					if (b == EOF)
						return FALSE;
					sector_buf[i] = (UBYTE) b;
				} while (i-- != 0);
				break;
			case 0x42:
				if (!FUNC3(sector_buf + 123, 5, infp))
					return FALSE;
				FUNC4(sector_buf, sector_buf[123], 123);
				break;
			case 0x43:
				i = 0;
				do {
					int j;
					int c;
					j = FUNC1(infp);
					if (j < i) {
						if (j != 0)
							return FALSE;
						j = 256;
					}
					if (i < j && !FUNC3(sector_buf + i, j - i, infp))
						return FALSE;
					if (j >= pai->sectorsize)
						break;
					i = FUNC1(infp);
					if (i < j) {
						if (i != 0)
							return FALSE;
						i = 256;
					}
					c = FUNC1(infp);
					if (c == EOF)
						return FALSE;
					FUNC4(sector_buf + j, c, i - j);
				} while (i < pai->sectorsize);
				break;
			case 0x44:
				i = FUNC1(infp);
				if (i == EOF || i >= pai->sectorsize)
					return FALSE;
				if (!FUNC3(sector_buf + i, pai->sectorsize - i, infp))
					return FALSE;
				break;
			case 0x46:
				break;
			case 0x47:
				if (!FUNC3(sector_buf, pai->sectorsize, infp))
					return FALSE;
				break;
			default:
				FUNC0("Unrecognized sector coding type 0x%02X", sector_type);
				return FALSE;
			}
			if (!FUNC6(pai, sector_buf))
				return FALSE;
			if (!(sector_type & 0x80))
				break; /* goto sector group */
			sector_type = FUNC1(infp);
			if (sector_type == 0x45)
				return TRUE;
		}
	}
}