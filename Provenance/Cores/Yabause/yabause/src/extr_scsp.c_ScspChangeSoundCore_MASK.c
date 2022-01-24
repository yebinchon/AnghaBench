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
struct TYPE_4__ {int id; int (* Init ) () ;int /*<<< orphan*/  (* SetVolume ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* UnMuteAudio ) () ;int /*<<< orphan*/  (* MuteAudio ) () ;scalar_t__ Name; int /*<<< orphan*/  (* DeInit ) () ;} ;

/* Variables and functions */
 int SNDCORE_DEFAULT ; 
 TYPE_1__* SNDCore ; 
 TYPE_1__** SNDCoreList ; 
 TYPE_1__ SNDDummy ; 
 int /*<<< orphan*/  YAB_ERR_CANNOTINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ scsp_mute_flags ; 
 int /*<<< orphan*/  scsp_volume ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (int coreid)
{
  int i;

  // Make sure the old core is freed
  if (SNDCore)
    SNDCore->DeInit();

  // So which core do we want?
  if (coreid == SNDCORE_DEFAULT)
    coreid = 0; // Assume we want the first one

  // Go through core list and find the id
  for (i = 0; SNDCoreList[i] != NULL; i++)
    {
      if (SNDCoreList[i]->id == coreid)
        {
          // Set to current core
          SNDCore = SNDCoreList[i];
          break;
        }
    }

  if (SNDCore == NULL)
    {
      SNDCore = &SNDDummy;
      return -1;
    }

  if (SNDCore->Init () == -1)
    {
      // Since it failed, instead of it being fatal, we'll just use the dummy
      // core instead

      // This might be helpful though.
      FUNC0 (YAB_ERR_CANNOTINIT, (void *)SNDCore->Name);

      SNDCore = &SNDDummy;
    }

  if (SNDCore)
    {
      if (scsp_mute_flags) SNDCore->MuteAudio();
      else SNDCore->UnMuteAudio();
      SNDCore->SetVolume(scsp_volume);
    }

  return 0;
}