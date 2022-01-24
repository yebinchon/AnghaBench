#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {char* filepath; char* filename; int /*<<< orphan*/  filetype; } ;
typedef  TYPE_1__ t_history_entry ;
struct TYPE_6__ {TYPE_1__* entries; } ;

/* Variables and functions */
 int MAXJOLIET ; 
 int NUM_HISTORY_ENTRIES ; 
 TYPE_4__ history ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void FUNC4(char *filepath, char *filename, u8 filetype)
{
  /* Create the new entry for this path. */
  t_history_entry newentry;
  FUNC3(newentry.filepath, filepath, MAXJOLIET - 1);
  FUNC3(newentry.filename, filename, MAXJOLIET - 1);
  newentry.filepath[MAXJOLIET - 1] = '\0';
  newentry.filename[MAXJOLIET - 1] = '\0';
  newentry.filetype = filetype;
  
  t_history_entry oldentry;  /* Old entry is the one being shuffled down a spot. */  
  t_history_entry currentry;  /* Curr entry is the one that just replaced old path. */
  
  /* Initially set curr entry to the new value. */
  FUNC1(&currentry, &newentry, sizeof(t_history_entry));

  int i;
  for(i=0; i < NUM_HISTORY_ENTRIES; i++)
  {
    /* Save off the next entry. */
    FUNC1(&oldentry, &history.entries[i], sizeof(t_history_entry));

    /* Overwrite with the previous entry. */
    FUNC1(&history.entries[i], &currentry, sizeof(t_history_entry));

    /* Switch the old entry to the curr entry now. */
    FUNC1(&currentry, &oldentry, sizeof(t_history_entry));

    /* If the entry in the list at this spot matches
       the new entry then do nothing and let this
       entry get deleted. */
    if(FUNC2(newentry.filepath, currentry.filepath) == 0 && FUNC2(newentry.filename, currentry.filename) == 0)
      break;
  }

  /* now save to disk */
  FUNC0();
}