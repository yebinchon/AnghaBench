
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cuid; } ;
struct shmid_ds {int shm_cpid; int shm_segsz; TYPE_1__ shm_perm; scalar_t__ shm_nattch; } ;
typedef int key_t ;
struct TYPE_6__ {int shmid; scalar_t__ shmaddr; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int IPC_CREAT ;
 int IPC_RMID ;
 int IPC_STAT ;
 int I_Error (char*,...) ;
 TYPE_3__ X_shminfo ;
 int fprintf (int ,char*,...) ;
 scalar_t__ getuid () ;
 TYPE_2__* image ;
 scalar_t__ shmat (int,int ,int ) ;
 int shmctl (int,int ,struct shmid_ds*) ;
 int shmget (int ,int,int) ;
 int stderr ;

void grabsharedmemory(int size)
{

  int key = ('d'<<24) | ('o'<<16) | ('o'<<8) | 'm';
  struct shmid_ds shminfo;
  int minsize = 320*200;
  int id;
  int rc;

  int pollution=5;


  do
  {
    id = shmget((key_t) key, minsize, 0777);
    if (id != -1)
    {
      rc=shmctl(id, IPC_STAT, &shminfo);
      if (!rc)
      {
 if (shminfo.shm_nattch)
 {
   fprintf(stderr, "User %d appears to be running "
    "DOOM.  Is that wise?\n", shminfo.shm_cpid);
   key++;
 }
 else
 {
   if (getuid() == shminfo.shm_perm.cuid)
   {
     rc = shmctl(id, IPC_RMID, 0);
     if (!rc)
       fprintf(stderr,
        "Was able to kill my old shared memory\n");
     else
       I_Error("Was NOT able to kill my old shared memory");

     id = shmget((key_t)key, size, IPC_CREAT|0777);
     if (id==-1)
       I_Error("Could not get shared memory");

     rc=shmctl(id, IPC_STAT, &shminfo);

     break;

   }
   if (size >= shminfo.shm_segsz)
   {
     fprintf(stderr,
      "will use %d's stale shared memory\n",
      shminfo.shm_cpid);
     break;
   }
   else
   {
     fprintf(stderr,
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
 I_Error("could not get stats on key=%d", key);
      }
    }
    else
    {
      id = shmget((key_t)key, size, IPC_CREAT|0777);
      if (id==-1)
      {
 extern int errno;
 fprintf(stderr, "errno=%d\n", errno);
 I_Error("Could not get any shared memory");
      }
      break;
    }
  } while (--pollution);

  if (!pollution)
  {
    I_Error("Sorry, system too polluted with stale "
     "shared memory segments.\n");
    }

  X_shminfo.shmid = id;


  image->data = X_shminfo.shmaddr = shmat(id, 0, 0);

  fprintf(stderr, "shared memory id=%d, addr=0x%x\n", id,
   (int) (image->data));
}
