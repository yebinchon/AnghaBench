#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spec ;
struct TYPE_4__ {int freq; int channels; int samples; scalar_t__ userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ SDL_AudioSpec ;
typedef  int /*<<< orphan*/  FCEUGI ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_S16SYS ; 
 int /*<<< orphan*/  Buffer ; 
 scalar_t__ BufferIn ; 
 scalar_t__ BufferRead ; 
 int BufferSize ; 
 scalar_t__ BufferWrite ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SDL_INIT_AUDIO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _sound ; 
 int /*<<< orphan*/  fillaudio ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int soundbufsize ; 
 int soundrate ; 

int FUNC9(FCEUGI *gi)
{
 SDL_AudioSpec spec;
 if(!_sound) return(0);

 FUNC7(&spec,0,sizeof(spec));
 if(FUNC3(SDL_INIT_AUDIO)<0)
 {
  FUNC8(FUNC2());
  FUNC1();
  return(0);
 }

 spec.freq = soundrate;
 spec.format = AUDIO_S16SYS;
 spec.channels = 1;
 spec.samples = 256;
 spec.callback = fillaudio;
 spec.userdata = 0;

 BufferSize = soundbufsize * soundrate / 1000;

 BufferSize -= spec.samples * 2;		/* SDL uses at least double-buffering, so
						   multiply by 2. */

 if(BufferSize < spec.samples) BufferSize = spec.samples;

 Buffer = FUNC6(sizeof(int) * BufferSize);
 BufferRead = BufferWrite = BufferIn = 0;

 //printf("SDL Size: %d, Internal size: %d\n",spec.samples,BufferSize);

 if(FUNC4(&spec,0)<0)
 {
  FUNC8(FUNC2());
  FUNC1();
  return(0);
 }
 FUNC5(0);
 FUNC0(soundrate);
 return(1);
}