
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* fdOpenInfoRef ;
struct TYPE_6__ {int pids_size; int* pids; int pids_count; } ;


 int ENOMEM ;
 int check_free (TYPE_1__*) ;
 TYPE_1__* check_init (char const*,int ) ;
 int check_process_phase1 (TYPE_1__*,int) ;
 int check_process_phase2 (TYPE_1__*,int) ;
 int errno ;
 int* malloc (int) ;
 int proc_listpids (int ,int ,int*,int) ;
 int* reallocf (int*,int) ;

int
proc_listpidspath(uint32_t type,
    uint32_t typeinfo,
    const char *path,
    uint32_t pathflags,
    void *buffer,
    int buffersize)
{
 int buf_used;
 int *buf_next = (int *)buffer;
 int i;
 fdOpenInfoRef info;
 int status = -1;

 if (buffer == ((void*)0)) {

  return proc_listpids(type, typeinfo, ((void*)0), 0);
 }

 buffersize -= (buffersize % sizeof(int));
 if (buffersize < sizeof(int)) {

  errno = ENOMEM;
  return -1;
 }


 info = check_init(path, pathflags);
 if (info == ((void*)0)) {
  return -1;
 }


 buf_used = proc_listpids(type, typeinfo, ((void*)0), 0);
 if (buf_used <= 0) {
  goto done;
 }

 while (1) {
  if (buf_used > info->pids_size) {

   while (buf_used > info->pids_size) {
    info->pids_size += (sizeof(int) * 32);
   }

   if (info->pids == ((void*)0)) {
    info->pids = malloc(info->pids_size);
   } else {
    info->pids = reallocf(info->pids, info->pids_size);
   }
   if (info->pids == ((void*)0)) {
    goto done;
   }
  }

  buf_used = proc_listpids(type, typeinfo, info->pids, (int)info->pids_size);
  if (buf_used <= 0) {
   goto done;
  }

  if ((buf_used + sizeof(int)) >= info->pids_size) {

   buf_used = (int)(info->pids_size + sizeof(int));
   continue;
  }

  info->pids_count = buf_used / sizeof(int);
  break;
 }


 buf_used = 0;
 for (i = info->pids_count - 1; i >= 0; i--) {
  int pid;
  int pstatus;

  pid = info->pids[i];
  if (pid == 0) {
   continue;
  }

  pstatus = check_process_phase1(info, pid);
  if (pstatus != 1) {

   continue;
  }

  *buf_next++ = pid;
  buf_used += sizeof(int);

  if (buf_used >= buffersize) {

   break;
  }
 }

 if (buf_used >= buffersize) {

  status = buf_used;
  goto done;
 }


 for (i = info->pids_count - 1; i >= 0; i--) {
  int pid;
  int pstatus;

  pid = info->pids[i];
  if (pid == 0) {
   continue;
  }

  pstatus = check_process_phase2(info, pid);
  if (pstatus != 1) {

   continue;
  }

  *buf_next++ = pid;
  buf_used += sizeof(int);

  if (buf_used >= buffersize) {

   break;
  }
 }

 status = buf_used;

    done :


 check_free(info);

 return status;
}
