#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/  rifftype; TYPE_2__ riff; } ;
typedef  TYPE_4__ waveheader_struct ;
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_14__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_16__ {int compress; int numchan; int rate; int bitspersample; int blockalign; int bytespersec; TYPE_3__ chunk; } ;
typedef  TYPE_5__ fmt_struct ;
struct TYPE_17__ {scalar_t__ size; int /*<<< orphan*/  id; } ;
typedef  TYPE_6__ chunk_struct ;
struct TYPE_19__ {TYPE_1__* slot; } ;
struct TYPE_18__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {scalar_t__ lea; } ;
struct TYPE_11__ {scalar_t__ lpctl; } ;
typedef  TYPE_7__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_10__ debugslot ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_9__ scsp ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,void*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC8 (u8 slotnum, const char *filename)
{
  u32 workbuf[512*2*2];
  s16 buf[512*2];
  FILE *fp;
  u32 counter = 0;
  waveheader_struct waveheader;
  fmt_struct fmt;
  chunk_struct data;
  long length;
  IOCheck_struct check = { 0, 0 };

  if (scsp.slot[slotnum].lea == 0)
    return 0;

  if ((fp = FUNC3 (filename, "wb")) == NULL)
    return -1;

  // Do wave header
  FUNC6 (waveheader.riff.id, "RIFF", 4);
  waveheader.riff.size = 0; // we'll fix this after the file is closed
  FUNC6 (waveheader.rifftype, "WAVE", 4);
  FUNC7 (&check, (void *)&waveheader, 1, sizeof(waveheader_struct), fp);

  // fmt chunk
  FUNC6 (fmt.chunk.id, "fmt ", 4);
  fmt.chunk.size = 16; // we'll fix this at the end
  fmt.compress = 1; // PCM
  fmt.numchan = 2; // Stereo
  fmt.rate = 44100;
  fmt.bitspersample = 16;
  fmt.blockalign = fmt.bitspersample / 8 * fmt.numchan;
  fmt.bytespersec = fmt.rate * fmt.blockalign;
  FUNC7 (&check, (void *)&fmt, 1, sizeof(fmt_struct), fp);

  // data chunk
  FUNC6 (data.id, "data", 4);
  data.size = 0; // we'll fix this at the end
  FUNC7 (&check, (void *)&data, 1, sizeof(chunk_struct), fp);

  FUNC1(slotnum);

  // Mix the audio, and then write it to the file
  for (;;)
    {
      if (FUNC0 (workbuf, buf, 512) == 0)
        break;

      counter += 512;
      FUNC7 (&check, (void *)buf, 2, 512 * 2, fp);
      if (debugslot.lpctl != 0 && counter >= (44100 * 2 * 5))
        break;
    }

  length = FUNC5 (fp);

  // Let's fix the riff chunk size and the data chunk size
  FUNC4 (fp, sizeof(waveheader_struct)-0x8, SEEK_SET);
  length -= 0x4;
  FUNC7 (&check, (void *)&length, 1, 4, fp);

  FUNC4 (fp, sizeof(waveheader_struct) + sizeof(fmt_struct) + 0x4, SEEK_SET);
  length -= sizeof(waveheader_struct) + sizeof(fmt_struct);
  FUNC7 (&check, (void *)&length, 1, 4, fp);
  FUNC2 (fp);

  return 0;
}