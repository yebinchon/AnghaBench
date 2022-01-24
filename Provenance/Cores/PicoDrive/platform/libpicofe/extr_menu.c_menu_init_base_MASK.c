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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LC_TIME ; 
 scalar_t__ MENU_X2 ; 
 int /*<<< orphan*/  READPNG_FONT ; 
 int /*<<< orphan*/  READPNG_SELECTOR ; 
 unsigned char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 unsigned char* fontdata8x8 ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 unsigned char* menu_font_data ; 
 int menu_sel_color ; 
 int menu_text_color ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

void FUNC14(void)
{
	int i, c, l, pos;
	unsigned char *fd, *fds;
	char buff[256];
	FILE *f;

	if (menu_font_data != NULL)
		FUNC5(menu_font_data);

	menu_font_data = FUNC0((MENU_X2 ? 256 * 320 : 128 * 160) / 2, 1);
	if (menu_font_data == NULL)
		return;

	// generate default 8x10 font from fontdata8x8
	for (c = 0, fd = menu_font_data; c < 256; c++)
	{
		for (l = 0; l < 8; l++)
		{
			unsigned char fd8x8 = fontdata8x8[c*8+l];
			if (fd8x8&0x80) *fd  = 0xf0;
			if (fd8x8&0x40) *fd |= 0x0f; fd++;
			if (fd8x8&0x20) *fd  = 0xf0;
			if (fd8x8&0x10) *fd |= 0x0f; fd++;
			if (fd8x8&0x08) *fd  = 0xf0;
			if (fd8x8&0x04) *fd |= 0x0f; fd++;
			if (fd8x8&0x02) *fd  = 0xf0;
			if (fd8x8&0x01) *fd |= 0x0f; fd++;
		}
		fd += 8*2/2; // 2 empty lines
	}

	if (MENU_X2) {
		// expand default font
		fds = menu_font_data + 128 * 160 / 2 - 4;
		fd  = menu_font_data + 256 * 320 / 2 - 1;
		for (c = 255; c >= 0; c--)
		{
			for (l = 9; l >= 0; l--, fds -= 4)
			{
				for (i = 3; i >= 0; i--) {
					int px = fds[i] & 0x0f;
					*fd-- = px | (px << 4);
					px = (fds[i] >> 4) & 0x0f;
					*fd-- = px | (px << 4);
				}
				for (i = 3; i >= 0; i--) {
					int px = fds[i] & 0x0f;
					*fd-- = px | (px << 4);
					px = (fds[i] >> 4) & 0x0f;
					*fd-- = px | (px << 4);
				}
			}
		}
	}

	// load custom font and selector (stored as 1st symbol in font table)
	pos = FUNC9(buff, sizeof(buff));
	FUNC12(buff + pos, "font.png");
	FUNC10(menu_font_data, buff, READPNG_FONT,
		MENU_X2 ? 256 : 128, MENU_X2 ? 320 : 160);
	// default selector symbol is '>'
	FUNC7(menu_font_data, menu_font_data + ((int)'>') * me_mfont_w * me_mfont_h / 2,
		me_mfont_w * me_mfont_h / 2);
	FUNC12(buff + pos, "selector.png");
	FUNC10(menu_font_data, buff, READPNG_SELECTOR, me_mfont_w, me_mfont_h);

	// load custom colors
	FUNC12(buff + pos, "skin.txt");
	f = FUNC4(buff, "r");
	if (f != NULL)
	{
		FUNC6("found skin.txt\n");
		while (!FUNC2(f))
		{
			if (FUNC3(buff, sizeof(buff), f) == NULL)
				break;
			if (buff[0] == '#'  || buff[0] == '/')  continue; // comment
			if (buff[0] == '\r' || buff[0] == '\n') continue; // empty line
			if (FUNC13(buff, "text_color=", 11) == 0)
			{
				int tmp = FUNC8(buff+11);
				if (tmp >= 0) menu_text_color = tmp;
				else FUNC6("skin.txt: parse error for text_color\n");
			}
			else if (FUNC13(buff, "selection_color=", 16) == 0)
			{
				int tmp = FUNC8(buff+16);
				if (tmp >= 0) menu_sel_color = tmp;
				else FUNC6("skin.txt: parse error for selection_color\n");
			}
			else
				FUNC6("skin.txt: parse error: %s\n", buff);
		}
		FUNC1(f);
	}

	// use user's locale for savestate date display
	FUNC11(LC_TIME, "");
}