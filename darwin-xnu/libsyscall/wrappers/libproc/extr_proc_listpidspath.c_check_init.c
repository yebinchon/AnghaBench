
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* fdOpenInfoRef ;
struct TYPE_5__ {int flags; int match_stat; scalar_t__ fds_size; scalar_t__ fds_count; int * fds; scalar_t__ thr_size; scalar_t__ thr_count; int * threads; scalar_t__ pids_size; scalar_t__ pids_count; int * pids; } ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int stat (char const*,int *) ;

__attribute__((used)) static fdOpenInfoRef
check_init(const char *path, uint32_t flags)
{
 fdOpenInfoRef info;
 int status;

 info = malloc(sizeof(*info));
 if (!info)
  return ((void*)0);

 info->pids = ((void*)0);
 info->pids_count = 0;
 info->pids_size = 0;

 info->threads = ((void*)0);
 info->thr_count = 0;
 info->thr_size = 0;

 info->fds = ((void*)0);
 info->fds_count = 0;
 info->fds_size = 0;

 status = stat(path, &info->match_stat);
 if (status == -1) {
  goto fail;
 }

 info->flags = flags;

 return info;

    fail :

 free(info);
 return ((void*)0);
}
