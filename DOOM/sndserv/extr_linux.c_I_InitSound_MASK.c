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

/* Variables and functions */
 int AFMT_S16_LE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SNDCTL_DSP_GETFMTS ; 
 int /*<<< orphan*/  SNDCTL_DSP_RESET ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFMT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFRAGMENT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SPEED ; 
 int /*<<< orphan*/  SNDCTL_DSP_STEREO ; 
 scalar_t__ audio_fd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3
( int	samplerate,
  int	samplesize )
{

    int i;
                
    audio_fd = FUNC2("/dev/dsp", O_WRONLY);
    if (audio_fd<0)
        FUNC0(stderr, "Could not open /dev/dsp\n");
         
                     
    i = 11 | (2<<16);                                           
    FUNC1(audio_fd, SNDCTL_DSP_SETFRAGMENT, &i);
                    
    FUNC1(audio_fd, SNDCTL_DSP_RESET, 0);
    i=11025;
    FUNC1(audio_fd, SNDCTL_DSP_SPEED, &i);
    i=1;    
    FUNC1(audio_fd, SNDCTL_DSP_STEREO, &i);
            
    FUNC1(audio_fd, SNDCTL_DSP_GETFMTS, &i);
    if (i&=AFMT_S16_LE)    
        FUNC1(audio_fd, SNDCTL_DSP_SETFMT, &i);
    else
        FUNC0(stderr, "Could not play signed 16 data\n");

}