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
struct TYPE_4__ {scalar_t__ cuid; } ;
struct shmid_ds {int shm_cpid; int shm_segsz; TYPE_1__ shm_perm; scalar_t__ shm_nattch; } ;
typedef  int /*<<< orphan*/  key_t ;
struct TYPE_6__ {int shmid; scalar_t__ shmaddr; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  IPC_STAT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__ X_shminfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_2__* image ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct shmid_ds*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(int size)
{

  int			key = ('d'<<24) | ('o'<<16) | ('o'<<8) | 'm';
  struct shmid_ds	shminfo;
  int			minsize = 320*200;
  int			id;
  int			rc;
  // UNUSED int done=0;
  int			pollution=5;
  
  // try to use what was here before
  do
  {
    id = FUNC5((key_t) key, minsize, 0777); // just get the id
    if (id != -1)
    {
      rc=FUNC4(id, IPC_STAT, &shminfo); // get stats on it
      if (!rc) 
      {
	if (shminfo.shm_nattch)
	{
	  FUNC1(stderr, "User %d appears to be running "
		  "DOOM.  Is that wise?\n", shminfo.shm_cpid);
	  key++;
	}
	else
	{
	  if (FUNC2() == shminfo.shm_perm.cuid)
	  {
	    rc = FUNC4(id, IPC_RMID, 0);
	    if (!rc)
	      FUNC1(stderr,
		      "Was able to kill my old shared memory\n");
	    else
	      FUNC0("Was NOT able to kill my old shared memory");
	    
	    id = FUNC5((key_t)key, size, IPC_CREAT|0777);
	    if (id==-1)
	      FUNC0("Could not get shared memory");
	    
	    rc=FUNC4(id, IPC_STAT, &shminfo);
	    
	    break;
	    
	  }
	  if (size >= shminfo.shm_segsz)
	  {
	    FUNC1(stderr,
		    "will use %d's stale shared memory\n",
		    shminfo.shm_cpid);
	    break;
	  }
	  else
	  {
	    FUNC1(stderr,
		    "warning: can't use stale "
		    "shared memory belonging to id %d, "
		    "key=0x%x\n",
		    shminfo.shm_cpid, key);
	    key++;
	  }
	}
      }
      else
      {
	FUNC0("could not get stats on key=%d", key);
      }
    }
    else
    {
      id = FUNC5((key_t)key, size, IPC_CREAT|0777);
      if (id==-1)
      {
	extern int errno;
	FUNC1(stderr, "errno=%d\n", errno);
	FUNC0("Could not get any shared memory");
      }
      break;
    }
  } while (--pollution);
  
  if (!pollution)
  {
    FUNC0("Sorry, system too polluted with stale "
	    "shared memory segments.\n");
    }	
  
  X_shminfo.shmid = id;
  
  // attach to the shared memory segment
  image->data = X_shminfo.shmaddr = FUNC3(id, 0, 0);
  
  FUNC1(stderr, "shared memory id=%d, addr=0x%x\n", id,
	  (int) (image->data));
}