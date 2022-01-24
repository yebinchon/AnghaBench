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
typedef  int u32 ;
struct bba_priv {int dummy; } ;

/* Variables and functions */
 int TB_USPERSEC ; 
 int FUNC0 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct bba_priv *priv)
{
	u32 ret,cnt,sec;

	for(cnt=0;cnt<10000;cnt++) {
		FUNC1(500);
		ret = FUNC0(priv);

		if(ret&0xf0 && ret&0x08) break;
	}

	// only sleep for additional 2 seconds if linkstate is ok
	if(cnt<10000) {
		sec = 1;
		if(!(ret&0x04)) sec = 2;
		FUNC1(sec*TB_USPERSEC);
	}

	return (cnt<10000);
}