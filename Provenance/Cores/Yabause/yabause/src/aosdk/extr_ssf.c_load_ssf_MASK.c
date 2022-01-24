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
struct TYPE_3__ {int /*<<< orphan*/ * info; int /*<<< orphan*/ * title; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AO_SUCCESS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (unsigned char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__ ssf_info ; 
 int FUNC8 (unsigned char*,long,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(char *filename, int m68k_core, int sndcore)
{
	long size;
	FILE *fp = FUNC1(filename, "rb");
	unsigned char *buffer;
	int ret;
   int i;
   size_t fread_val = 0;

	if (!fp)
		return 0;//false

	// Get file size
	FUNC4(fp, 0, SEEK_END);
	size = FUNC5(fp);
	FUNC4(fp, 0, SEEK_SET);

	buffer = (unsigned char *)FUNC6(size);

	if (buffer == NULL)
	{
		FUNC0(fp);
		return 0;//false
	}

   fread_val = FUNC2(buffer, 1, size, fp);
	FUNC0(fp);

	// Read ID
	if (buffer[0] != 0x50 || buffer[1] != 0x53 ||
		buffer[2] != 0x46 || buffer[3] != 0x11)
	{
		// Can't identify file
		return 0;//false
	}

	if ((ret = FUNC8(buffer, size, m68k_core, sndcore)) != AO_SUCCESS)
	{
		FUNC3(buffer);
		return ret;
	}

   FUNC7(&ssf_info);

   for (i = 0; i < 9; i++)
   {
      FUNC9(ssf_info.title[i]);
      FUNC9(ssf_info.info[i]);
   }

	return 1;//true
}