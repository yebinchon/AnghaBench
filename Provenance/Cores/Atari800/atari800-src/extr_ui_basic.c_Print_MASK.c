__attribute__((used)) static void FUNC0(int fg, int bg, const char *string, int x, int y, int maxwidth)
{
	char tmpbuf[40];
	if ((int) strlen(string) > maxwidth) {
		int firstlen = (maxwidth - 3) >> 1;
		int laststart = FUNC0(string) - (maxwidth - 3 - firstlen);
		snprintf(tmpbuf, sizeof(tmpbuf), "%.*s...%s", firstlen, string, string + laststart);
		string = tmpbuf;
	}
	while (*string != '\0')
		FUNC0(fg, bg, *string++, x++, y);
}