#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bios_names_t {char* us; char* eu; char* jp; } ;
struct TYPE_3__ {int id; } ;
typedef  TYPE_1__ menu_entry ;

/* Variables and functions */
#define  MA_CDOPT_READAHEAD 131 
#define  MA_CDOPT_TESTBIOS_EUR 130 
#define  MA_CDOPT_TESTBIOS_JAP 129 
#define  MA_CDOPT_TESTBIOS_USA 128 
 int PicoCDBuffers ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,char*) ; 

__attribute__((used)) static void FUNC3(const menu_entry *entry, int x, int y, void *param)
{
	struct bios_names_t *bios_names = param;
	char ra_buff[16];

	switch (entry->id)
	{
		case MA_CDOPT_TESTBIOS_USA: FUNC2(x, y, "USA BIOS:     %s", bios_names->us); break;
		case MA_CDOPT_TESTBIOS_EUR: FUNC2(x, y, "EUR BIOS:     %s", bios_names->eu); break;
		case MA_CDOPT_TESTBIOS_JAP: FUNC2(x, y, "JAP BIOS:     %s", bios_names->jp); break;
		case MA_CDOPT_READAHEAD:
			if (PicoCDBuffers > 1) FUNC0(ra_buff, "%5iK", PicoCDBuffers * 2);
			else FUNC1(ra_buff, "     OFF");
			FUNC2(x, y, "ReadAhead buffer      %s", ra_buff);
			break;
		default:break;
	}
}