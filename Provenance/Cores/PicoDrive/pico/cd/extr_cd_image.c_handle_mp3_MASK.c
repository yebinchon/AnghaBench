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
struct TYPE_5__ {scalar_t__ offset; int /*<<< orphan*/ * fd; } ;
typedef  TYPE_2__ track_t ;
struct TYPE_4__ {TYPE_2__* tracks; } ;
struct TYPE_6__ {TYPE_1__ toc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EL_STATUS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_3__ cdd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *fname, int index)
{
  track_t *track = &cdd.toc.tracks[index];
  FILE *tmp_file;
  int kBps;
  int fs, ret;

  tmp_file = FUNC2(fname, "rb");
  if (tmp_file == NULL)
    return -1;

  ret = FUNC4(tmp_file, 0, SEEK_END);
  fs = FUNC5(tmp_file);
  FUNC4(tmp_file, 0, SEEK_SET);

#ifdef _PSP_FW_VERSION
  // some systems (like PSP) can't have many open files at a time,
  // so we work with their names instead.
  fclose(tmp_file);
  tmp_file = (void *) strdup(fname);
#endif

  kBps = FUNC6(tmp_file, fs) / 8;
  if (ret != 0 || kBps <= 0)
  {
    FUNC0(EL_STATUS, "track %2i: mp3 bitrate %i", index+1, kBps);
#ifdef _PSP_FW_VERSION
    free(tmp_file);
#else
    FUNC1(tmp_file);
#endif
    return -1;
  }

  track->fd = tmp_file;
  track->offset = 0;

  fs *= 75;
  fs /= kBps * 1000;
  return fs;
}