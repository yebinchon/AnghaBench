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
typedef  char u8 ;
typedef  size_t s32 ;

/* Variables and functions */
 size_t BUFMAX ; 
 int FUNC0 () ; 
 char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(char *buffer)
{
	char ch;
	u8 chksum,xmitsum;
	s32 i,cnt;

	do {
		while((ch=(FUNC0()&0x7f))!='$');

		cnt = 0;
		chksum = 0;
		xmitsum = -1;

		while(cnt<BUFMAX) {
			ch = FUNC0()&0x7f;
			if(ch=='#') break;

			chksum += ch;
			buffer[cnt] = ch;
			cnt++;
		}
		if(cnt>=BUFMAX) continue;

		buffer[cnt] = 0;
		if(ch=='#') {
			xmitsum = FUNC1(FUNC0()&0x7f)<<4;
			xmitsum |= FUNC1(FUNC0()&0x7f);

			if(chksum!=xmitsum) FUNC2('-');
			else {
				FUNC2('+');
				if(buffer[2]==':') {
					FUNC2(buffer[0]);
					FUNC2(buffer[1]);

					cnt = FUNC3((const char*)buffer);
					for(i=3;i<=cnt;i++) buffer[i-3] = buffer[i];
				}
			}
		}
	} while(chksum!=xmitsum);
}