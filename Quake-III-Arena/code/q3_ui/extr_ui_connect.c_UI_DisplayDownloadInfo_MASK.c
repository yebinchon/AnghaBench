#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int realtime; int frametime; } ;

/* Variables and functions */
 int UI_DROPSHADOW ; 
 int /*<<< orphan*/  FUNC0 (int,int,char const*,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_white ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 
 TYPE_1__ uis ; 
 char* FUNC7 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC8( const char *downloadName ) {
	static char dlText[]	= "Downloading:";
	static char etaText[]	= "Estimated time left:";
	static char xferText[]	= "Transfer rate:";

	int downloadSize, downloadCount, downloadTime;
	char dlSizeBuf[64], totalSizeBuf[64], xferRateBuf[64], dlTimeBuf[64];
	int xferRate;
	int width, leftWidth;
	int style = UI_LEFT|UI_SMALLFONT|UI_DROPSHADOW;
	const char *s;

	downloadSize = FUNC6( "cl_downloadSize" );
	downloadCount = FUNC6( "cl_downloadCount" );
	downloadTime = FUNC6( "cl_downloadTime" );

#if 0 // bk010104
	fprintf( stderr, "\n\n-----------------------------------------------\n");
	fprintf( stderr, "DB: downloadSize:  %16d\n", downloadSize );
	fprintf( stderr, "DB: downloadCount: %16d\n", downloadCount );
	fprintf( stderr, "DB: downloadTime:  %16d\n", downloadTime );  
  	fprintf( stderr, "DB: UI realtime:   %16d\n", uis.realtime );	// bk
	fprintf( stderr, "DB: UI frametime:  %16d\n", uis.frametime );	// bk
#endif

	leftWidth = width = FUNC3( dlText ) * FUNC2( style );
	width = FUNC3( etaText ) * FUNC2( style );
	if (width > leftWidth) leftWidth = width;
	width = FUNC3( xferText ) * FUNC2( style );
	if (width > leftWidth) leftWidth = width;
	leftWidth += 16;

	FUNC0( 8, 128, dlText, style, color_white );
	FUNC0( 8, 160, etaText, style, color_white );
	FUNC0( 8, 224, xferText, style, color_white );

	if (downloadSize > 0) {
		s = FUNC7( "%s (%d%%)", downloadName, downloadCount * 100 / downloadSize );
	} else {
		s = downloadName;
	}

	FUNC0( leftWidth, 128, s, style, color_white );

	FUNC4( dlSizeBuf,		sizeof dlSizeBuf,		downloadCount );
	FUNC4( totalSizeBuf,	sizeof totalSizeBuf,	downloadSize );

	if (downloadCount < 4096 || !downloadTime) {
		FUNC0( leftWidth, 160, "estimating", style, color_white );
		FUNC0( leftWidth, 192, 
			FUNC7("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
	} else {
	  // bk010108
	  //float elapsedTime = (float)(uis.realtime - downloadTime); // current - start (msecs)
	  //elapsedTime = elapsedTime * 0.001f; // in seconds
	  //if ( elapsedTime <= 0.0f ) elapsedTime == 0.0f;
	  if ( (uis.realtime - downloadTime) / 1000) {
			xferRate = downloadCount / ((uis.realtime - downloadTime) / 1000);
		  //xferRate = (int)( ((float)downloadCount) / elapsedTime);
		} else {
			xferRate = 0;
		}

	  //fprintf( stderr, "DB: elapsedTime:  %16.8f\n", elapsedTime );	// bk
	  //fprintf( stderr, "DB: xferRate:   %16d\n", xferRate );	// bk

		FUNC4( xferRateBuf, sizeof xferRateBuf, xferRate );

		// Extrapolate estimated completion time
		if (downloadSize && xferRate) {
			int n = downloadSize / xferRate; // estimated time for entire d/l in secs

			// We do it in K (/1024) because we'd overflow around 4MB
			n = (n - (((downloadCount/1024) * n) / (downloadSize/1024))) * 1000;
			
			FUNC1 ( dlTimeBuf, sizeof dlTimeBuf, n ); // bk010104
				//(n - (((downloadCount/1024) * n) / (downloadSize/1024))) * 1000);

			FUNC0( leftWidth, 160, 
				dlTimeBuf, style, color_white );
			FUNC0( leftWidth, 192, 
				FUNC7("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
		} else {
			FUNC0( leftWidth, 160, 
				"estimating", style, color_white );
			if (downloadSize) {
				FUNC0( leftWidth, 192, 
					FUNC7("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
			} else {
				FUNC0( leftWidth, 192, 
					FUNC7("(%s copied)", dlSizeBuf), style, color_white );
			}
		}

		if (xferRate) {
			FUNC0( leftWidth, 224, 
				FUNC7("%s/Sec", xferRateBuf), style, color_white );
		}
	}
}