
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* fdOpenInfoRef ;
struct TYPE_4__ {struct TYPE_4__* fds; struct TYPE_4__* threads; struct TYPE_4__* pids; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
check_free(fdOpenInfoRef info)
{
 if (info->pids != ((void*)0)) {
  free(info->pids);
 }

 if (info->threads != ((void*)0)) {
  free(info->threads);
 }

 if (info->fds != ((void*)0)) {
  free(info->fds);
 }

 free(info);

 return;
}
