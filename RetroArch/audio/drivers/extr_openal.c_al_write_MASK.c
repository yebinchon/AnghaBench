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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ tmpbuf_ptr; int /*<<< orphan*/  source; int /*<<< orphan*/  rate; int /*<<< orphan*/  tmpbuf; } ;
typedef  TYPE_1__ al_t ;
typedef  int /*<<< orphan*/  ALuint ;
typedef  scalar_t__ ALint ;

/* Variables and functions */
 int /*<<< orphan*/  AL_FORMAT_STEREO16 ; 
 scalar_t__ AL_NO_ERROR ; 
 scalar_t__ AL_PLAYING ; 
 int /*<<< orphan*/  AL_SOURCE_STATE ; 
 scalar_t__ BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(void *data, const void *buf_, size_t size)
{
   al_t           *al = (al_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t     written = 0;

   while (size)
   {
      ALint val;
      ALuint buffer;
      size_t rc = FUNC5(al, buf, size);

      written += rc;
      buf     += rc;
      size    -= rc;

      if (al->tmpbuf_ptr != BUFSIZE)
         break;

      if (!FUNC6(al, &buffer))
         break;

      FUNC0(buffer, AL_FORMAT_STEREO16, al->tmpbuf, BUFSIZE, al->rate);
      al->tmpbuf_ptr = 0;
      FUNC4(al->source, 1, &buffer);
      if (FUNC1() != AL_NO_ERROR)
         return -1;

      FUNC2(al->source, AL_SOURCE_STATE, &val);
      if (val != AL_PLAYING)
         FUNC3(al->source);

      if (FUNC1() != AL_NO_ERROR)
         return -1;
   }

   return written;
}