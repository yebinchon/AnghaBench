#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char UBYTE ;
struct TYPE_4__ {char const* filename; char* image; int type; int size; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ CARTRIDGE_image_t ;

/* Variables and functions */
 int CARTRIDGE_BAD_CHECKSUM ; 
 int CARTRIDGE_BAD_FORMAT ; 
 int CARTRIDGE_CANT_OPEN ; 
 int FUNC0 (char*,int) ; 
 int CARTRIDGE_LAST_SUPPORTED ; 
 int CARTRIDGE_NONE ; 
 int CARTRIDGE_UNKNOWN ; 
 int* CARTRIDGE_kb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*) ; 

__attribute__((used)) static int FUNC11(const char *filename, CARTRIDGE_image_t *cart)
{
	FILE *fp;
	int len;
	int type;
	UBYTE header[16];

	/* open file */
	fp = FUNC7(filename, "rb");
	if (fp == NULL)
		return CARTRIDGE_CANT_OPEN;
	/* check file length */
	len = FUNC3(fp);
	FUNC5(fp);

	/* Guard against providing cart->filename as parameter. */
	if (cart->filename != filename)
		/* Save Filename for state save */
		FUNC10(cart->filename, filename);

	/* if full kilobytes, assume it is raw image */
	if ((len & 0x3ff) == 0) {
		/* alloc memory and read data */
		cart->image = (UBYTE *) FUNC4(len);
		if (FUNC8(cart->image, 1, len, fp) < len) {
			FUNC2("Error reading cartridge.\n");
		}
		FUNC6(fp);
		/* find cart type */
		cart->type = CARTRIDGE_NONE;
		len >>= 10;	/* number of kilobytes */
		cart->size = len;
		for (type = 1; type <= CARTRIDGE_LAST_SUPPORTED; type++)
			if (CARTRIDGE_kb[type] == len) {
				if (cart->type == CARTRIDGE_NONE) {
					cart->type = type;
				} else {
					/* more than one cartridge type of such length - user must select */
					cart->type = CARTRIDGE_UNKNOWN;
					return len;
				}
			}
		if (cart->type != CARTRIDGE_NONE) {
			FUNC1(cart);
			return 0;	/* ok */
		}
		FUNC9(cart->image);
		cart->image = NULL;
		return CARTRIDGE_BAD_FORMAT;
	}
	/* if not full kilobytes, assume it is CART file */
	if (FUNC8(header, 1, 16, fp) < 16) {
		FUNC2("Error reading cartridge.\n");
	}
	if ((header[0] == 'C') &&
		(header[1] == 'A') &&
		(header[2] == 'R') &&
		(header[3] == 'T')) {
		type = (header[4] << 24) |
			(header[5] << 16) |
			(header[6] << 8) |
			header[7];
		if (type >= 1 && type <= CARTRIDGE_LAST_SUPPORTED) {
			int checksum;
			int result;
			len = CARTRIDGE_kb[type] << 10;
			cart->size = CARTRIDGE_kb[type];
			/* alloc memory and read data */
			cart->image = (UBYTE *) FUNC4(len);
			if (FUNC8(cart->image, 1, len, fp) < len) {
				FUNC2("Error reading cartridge.\n");
			}
			FUNC6(fp);
			checksum = (header[8] << 24) |
				(header[9] << 16) |
				(header[10] << 8) |
				header[11];
			cart->type = type;
			result = checksum == FUNC0(cart->image, len) ? 0 : CARTRIDGE_BAD_CHECKSUM;
			FUNC1(cart);
			return result;
		}
	}
	FUNC6(fp);
	return CARTRIDGE_BAD_FORMAT;
}