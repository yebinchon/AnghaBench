#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int realTime; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float,float,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colorWhite ; 
 int FUNC4 (char*) ; 
 TYPE_2__ uiInfo ; 
 char* FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC6( const char *downloadName, float centerPoint, float yStart, float scale ) {
	static char dlText[]	= "Downloading:";
	static char etaText[]	= "Estimated time left:";
	static char xferText[]	= "Transfer rate:";

	int downloadSize, downloadCount, downloadTime;
	char dlSizeBuf[64], totalSizeBuf[64], xferRateBuf[64], dlTimeBuf[64];
	int xferRate;
	int leftWidth;
	const char *s;

	downloadSize = FUNC4( "cl_downloadSize" );
	downloadCount = FUNC4( "cl_downloadCount" );
	downloadTime = FUNC4( "cl_downloadTime" );

	leftWidth = 320;

	FUNC3(colorWhite);
	FUNC0(centerPoint, yStart + 112, scale, colorWhite, dlText, 0);
	FUNC0(centerPoint, yStart + 192, scale, colorWhite, etaText, 0);
	FUNC0(centerPoint, yStart + 248, scale, colorWhite, xferText, 0);

	if (downloadSize > 0) {
		s = FUNC5( "%s (%d%%)", downloadName, downloadCount * 100 / downloadSize );
	} else {
		s = downloadName;
	}

	FUNC0(centerPoint, yStart+136, scale, colorWhite, s, 0);

	FUNC2( dlSizeBuf,		sizeof dlSizeBuf,		downloadCount );
	FUNC2( totalSizeBuf,	sizeof totalSizeBuf,	downloadSize );

	if (downloadCount < 4096 || !downloadTime) {
		FUNC0(leftWidth, yStart+216, scale, colorWhite, "estimating", 0);
		FUNC0(leftWidth, yStart+160, scale, colorWhite, FUNC5("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
	} else {
		if ((uiInfo.uiDC.realTime - downloadTime) / 1000) {
			xferRate = downloadCount / ((uiInfo.uiDC.realTime - downloadTime) / 1000);
		} else {
			xferRate = 0;
		}
		FUNC2( xferRateBuf, sizeof xferRateBuf, xferRate );

		// Extrapolate estimated completion time
		if (downloadSize && xferRate) {
			int n = downloadSize / xferRate; // estimated time for entire d/l in secs

			// We do it in K (/1024) because we'd overflow around 4MB
			FUNC1 ( dlTimeBuf, sizeof dlTimeBuf, 
				(n - (((downloadCount/1024) * n) / (downloadSize/1024))) * 1000);

			FUNC0(leftWidth, yStart+216, scale, colorWhite, dlTimeBuf, 0);
			FUNC0(leftWidth, yStart+160, scale, colorWhite, FUNC5("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
		} else {
			FUNC0(leftWidth, yStart+216, scale, colorWhite, "estimating", 0);
			if (downloadSize) {
				FUNC0(leftWidth, yStart+160, scale, colorWhite, FUNC5("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
			} else {
				FUNC0(leftWidth, yStart+160, scale, colorWhite, FUNC5("(%s copied)", dlSizeBuf), 0);
			}
		}

		if (xferRate) {
			FUNC0(leftWidth, yStart+272, scale, colorWhite, FUNC5("%s/Sec", xferRateBuf), 0);
		}
	}
}