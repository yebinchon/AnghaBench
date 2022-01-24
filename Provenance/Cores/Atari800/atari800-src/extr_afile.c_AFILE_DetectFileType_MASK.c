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
typedef  int /*<<< orphan*/ * gzFile ;
typedef  int UBYTE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AFILE_ATR ; 
 int AFILE_ATR_GZ ; 
 int AFILE_ATX ; 
 int AFILE_BAS ; 
 int AFILE_BOOT_TAPE ; 
 int AFILE_CART ; 
 int AFILE_CAS ; 
 int AFILE_DCM ; 
 int AFILE_ERROR ; 
 int AFILE_LST ; 
 int AFILE_PRO ; 
 int AFILE_ROM ; 
 int AFILE_STATE ; 
 int AFILE_STATE_GZ ; 
 int AFILE_XEX ; 
 int AFILE_XFD ; 
 int AFILE_XFD_GZ ; 
 int CARTRIDGE_MAX_SIZE ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC9(const char *filename)
{
	UBYTE header[4];
	int file_length;
	FILE *fp = FUNC4(filename, "rb");
	if (fp == NULL)
		return AFILE_ERROR;
	if (FUNC5(header, 1, 4, fp) != 4) {
		FUNC3(fp);
		return AFILE_ERROR;
	}
	switch (header[0]) {
	case 0:
		if (header[1] == 0 && (header[2] != 0 || header[3] != 0) /* && file_length < 37 * 1024 */) {
			FUNC3(fp);
			return AFILE_BAS;
		}
		break;
	case 0x1f:
		if (header[1] == 0x8b) {
#ifndef HAVE_LIBZ
			FUNC3(fp);
			FUNC1("\"%s\" is a compressed file.", filename);
			FUNC1("This executable does not support compressed files. You can uncompress this file");
			FUNC1("with an external program that supports gzip (*.gz) files (e.g. gunzip)");
			FUNC1("and then load into this emulator.");
			return AFILE_ERROR;
#else /* HAVE_LIBZ */
			gzFile gzf;
			fclose(fp);
			gzf = gzopen(filename, "rb");
			if (gzf == NULL)
				return AFILE_ERROR;
			if (gzread(gzf, header, 4) != 4) {
				gzclose(gzf);
				return AFILE_ERROR;
			}
			gzclose(gzf);
			if (header[0] == 0x96 && header[1] == 0x02)
				return AFILE_ATR_GZ;
			if (header[0] == 'A' && header[1] == 'T' && header[2] == 'A' && header[3] == 'R')
				return AFILE_STATE_GZ;
			return AFILE_XFD_GZ;
#endif /* HAVE_LIBZ */
		}
		break;
	case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
	case '8':
	case '9':
		if ((header[1] >= '0' && header[1] <= '9') || header[1] == ' ') {
			FUNC3(fp);
			return AFILE_LST;
		}
		break;
	case 'A':
		if (header[1] == 'T' && header[2] == 'A' && header[3] == 'R') {
			FUNC3(fp);
			return AFILE_STATE;
		}
		if (header[1] == 'T' && header[2] == '8' && header[3] == 'X') {
			FUNC3(fp);
			return AFILE_ATX;
		}
		break;
	case 'C':
		if (header[1] == 'A' && header[2] == 'R' && header[3] == 'T') {
			FUNC3(fp);
			return AFILE_CART;
		}
		break;
	case 0x96:
		if (header[1] == 0x02) {
			FUNC3(fp);
			return AFILE_ATR;
		}
		break;
	case 0xf9:
	case 0xfa:
		FUNC3(fp);
		return AFILE_DCM;
	case 0xff:
		if (header[1] == 0xff && (header[2] != 0xff || header[3] != 0xff)) {
			FUNC3(fp);
			return AFILE_XEX;
		}
		break;
	default:
		break;
	}
	file_length = FUNC2(fp);
	FUNC3(fp);
	/* Detect .pro images */
	/* # of sectors is in header */
	if ((file_length-16)%(128+12) == 0 &&
			header[0]*256 + header[1] == (file_length-16)/(128+12) &&
			header[2] == 'P') {
#ifdef DEBUG_PRO
		Log_print(".pro file detected");
#endif
		return AFILE_PRO;
	}
	/* 40K or a-power-of-two between 4K and CARTRIDGE_MAX_SIZE */
	if (file_length >= 4 * 1024 && file_length <= CARTRIDGE_MAX_SIZE
	 && ((file_length & (file_length - 1)) == 0 || file_length == 40 * 1024))
		return AFILE_ROM;
	/* BOOT_TAPE is a raw file containing a program booted from a tape */
	if ((header[1] << 7) == file_length)
		return AFILE_BOOT_TAPE;
	if ((file_length & 0x7f) == 0)
		return AFILE_XFD;
	if (FUNC0(header))
		return AFILE_CAS;
	return AFILE_ERROR;
}