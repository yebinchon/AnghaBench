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
struct dirent {char* d_name; scalar_t__ d_type; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILEENTRIES ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FileSortCallback ; 
 int MAXFILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fileDir ; 
 TYPE_1__* filelist ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

int FUNC8(void)
{
  int nbfiles = 0;

  /* open directory */
  DIR *dir = FUNC2(fileDir);
  if (dir == NULL)
  {
    return -1;
  }

  struct dirent *entry = FUNC4(dir);

  /* list entries */
  while ((entry != NULL)&& (nbfiles < MAXFILES))
  {
    /* filter entries */
    if ((entry->d_name[0] != '.') 
       && FUNC7(".wav", &entry->d_name[FUNC6(entry->d_name) - 4], 4) 
       && FUNC7(".ogg", &entry->d_name[FUNC6(entry->d_name) - 4], 4) 
       && FUNC7(".mp3", &entry->d_name[FUNC6(entry->d_name) - 4], 4))
    {
      FUNC1(&filelist[nbfiles], 0, sizeof (FILEENTRIES));
      FUNC5(filelist[nbfiles].filename,"%s",entry->d_name);
      if (entry->d_type == DT_DIR)
      {
        filelist[nbfiles].flags = 1;
      }
      nbfiles++;
    }

    /* next entry */
    entry = FUNC4(dir);
  }

  /* close directory */
  FUNC0(dir);

  /* Sort the file list */
  FUNC3(filelist, nbfiles, sizeof(FILEENTRIES), FileSortCallback);

  return nbfiles;
}