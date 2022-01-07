
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inotify_event {int mask; scalar_t__ wd; scalar_t__ len; } ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_4__ path_change_data_t ;
struct TYPE_11__ {int flags; TYPE_3__* path_list; TYPE_1__* wd_list; int fd; } ;
typedef TYPE_5__ inotify_data_t ;
typedef int buffer ;
struct TYPE_9__ {TYPE_2__* elems; } ;
struct TYPE_8__ {char* data; } ;
struct TYPE_7__ {unsigned int count; scalar_t__* data; } ;
typedef int FILE ;


 int INOTIFY_BUF_LEN ;
 int RARCH_LOG (char*,char const*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__ fopen_utf8 (char const*,char*) ;
 int fsync (int ) ;
 int read (int ,char*,int) ;

__attribute__((used)) static bool frontend_unix_check_for_path_changes(path_change_data_t *change_data)
{
   return 0;
}
