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
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 float FUNC2 (int) ; 
 float FUNC3 (char*) ; 

void FUNC4( int x, int y, int xmax, int ystep, const char* str, int style, vec4_t color ) {
	int width;
	char *s1,*s2,*s3;
	char c_bcp;
	char buf[1024];
	float   sizeScale;

	if (!str || str[0]=='\0')
		return;
	
	sizeScale = FUNC2( style );
	
	FUNC0(buf, str, sizeof(buf));
	s1 = s2 = s3 = buf;

	while (1) {
		do {
			s3++;
		} while (*s3!=' ' && *s3!='\0');
		c_bcp = *s3;
		*s3 = '\0';
		width = FUNC3(s1) * sizeScale;
		*s3 = c_bcp;
		if (width > xmax) {
			if (s1==s2)
			{
				// fuck, don't have a clean cut, we'll overflow
				s2 = s3;
			}
			*s2 = '\0';
			FUNC1(x, y, s1, style, color);
			y += ystep;
			if (c_bcp == '\0')
      {
        // that was the last word
        // we could start a new loop, but that wouldn't be much use
        // even if the word is too long, we would overflow it (see above)
        // so just print it now if needed
        s2++;
        if (*s2 != '\0') // if we are printing an overflowing line we have s2 == s3
          FUNC1(x, y, s2, style, color);
				break; 
      }
			s2++;
			s1 = s2;
			s3 = s2;
		}
		else
		{
			s2 = s3;
			if (c_bcp == '\0') // we reached the end
			{
				FUNC1(x, y, s1, style, color);
				break;
			}
		}
	}
}