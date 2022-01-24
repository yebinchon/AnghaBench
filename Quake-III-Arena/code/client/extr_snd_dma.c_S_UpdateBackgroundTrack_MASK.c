#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  raw ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {int speed; } ;
struct TYPE_5__ {int rate; int width; int channels; } ;
struct TYPE_4__ {int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ MAX_RAW_SAMPLES ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 TYPE_3__ dma ; 
 scalar_t__ s_backgroundFile ; 
 TYPE_2__ s_backgroundInfo ; 
 scalar_t__* s_backgroundLoop ; 
 int s_backgroundSamples ; 
 TYPE_1__* s_musicVolume ; 
 scalar_t__ s_rawend ; 
 scalar_t__ s_soundtime ; 

void FUNC8( void ) {
	int		bufferSamples;
	int		fileSamples;
	byte	raw[30000];		// just enough to fit in a mac stack frame
	int		fileBytes;
	int		r;
	static	float	musicVolume = 0.5f;

	if ( !s_backgroundFile ) {
		return;
	}

	// graeme see if this is OK
	musicVolume = (musicVolume + (s_musicVolume->value * 2))/4.0f;

	// don't bother playing anything if musicvolume is 0
	if ( musicVolume <= 0 ) {
		return;
	}

	// see how many samples should be copied into the raw buffer
	if ( s_rawend < s_soundtime ) {
		s_rawend = s_soundtime;
	}

	while ( s_rawend < s_soundtime + MAX_RAW_SAMPLES ) {
		bufferSamples = MAX_RAW_SAMPLES - (s_rawend - s_soundtime);

		// decide how much data needs to be read from the file
		fileSamples = bufferSamples * s_backgroundInfo.rate / dma.speed;

		// don't try and read past the end of the file
		if ( fileSamples > s_backgroundSamples ) {
			fileSamples = s_backgroundSamples;
		}

		// our max buffer size
		fileBytes = fileSamples * (s_backgroundInfo.width * s_backgroundInfo.channels);
		if ( fileBytes > sizeof(raw) ) {
			fileBytes = sizeof(raw);
			fileSamples = fileBytes / (s_backgroundInfo.width * s_backgroundInfo.channels);
		}

		r = FUNC7( raw, 1, fileBytes, s_backgroundFile );
		if ( r != fileBytes ) {
			FUNC0("StreamedRead failure on music track\n");
			FUNC5();
			return;
		}

		// byte swap if needed
		FUNC2( fileSamples, s_backgroundInfo.width, s_backgroundInfo.channels, raw );

		// add to raw buffer
		FUNC3( fileSamples, s_backgroundInfo.rate, 
			s_backgroundInfo.width, s_backgroundInfo.channels, raw, musicVolume );

		s_backgroundSamples -= fileSamples;
		if ( !s_backgroundSamples ) {
			// loop
			if (s_backgroundLoop[0]) {
				FUNC6( s_backgroundFile );
				FUNC1( s_backgroundFile );
				s_backgroundFile = 0;
				FUNC4( s_backgroundLoop, s_backgroundLoop );
				if ( !s_backgroundFile ) {
					return;		// loop failed to restart
				}
			} else {
				s_backgroundFile = 0;
				return;
			}
		}
	}
}