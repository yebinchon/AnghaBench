
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


union string_list_elem_attr {int member_0; } ;
struct utsname {int release; } ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_10__ {int fd; int flags; struct TYPE_10__* data; int path_list; TYPE_4__* wd_list; } ;
typedef TYPE_2__ path_change_data_t ;
typedef TYPE_2__ inotify_data_t ;
struct TYPE_11__ {unsigned int count; int * data; } ;
struct TYPE_9__ {int data; } ;


 int F_GETFL ;
 int F_SETFL ;
 int IN_CLOSE_WRITE ;
 int IN_DELETE_SELF ;
 int IN_MODIFY ;
 int IN_MOVE_SELF ;
 int O_NONBLOCK ;
 int PATH_CHANGE_TYPE_FILE_DELETED ;
 int PATH_CHANGE_TYPE_FILE_MOVED ;
 int PATH_CHANGE_TYPE_MODIFIED ;
 int PATH_CHANGE_TYPE_WRITE_FILE_CLOSED ;
 int RARCH_LOG (char*,int ) ;
 int RARCH_WARN (char*,...) ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 int fcntl (int,int ,...) ;
 int free (TYPE_2__*) ;
 int inotify_add_watch (int,int ,int) ;
 int inotify_init () ;
 int inotify_rm_watch (int,int ) ;
 int int_vector_list_append (TYPE_4__*,int) ;
 int int_vector_list_free (TYPE_4__*) ;
 TYPE_4__* int_vector_list_new () ;
 int sscanf (int ,char*,int*,int*,unsigned int*) ;
 int string_list_append (int ,int ,union string_list_elem_attr) ;
 int string_list_free (int ) ;
 int string_list_new () ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void frontend_unix_watch_path_for_changes(struct string_list *list, int flags, path_change_data_t **change_data)
{
}
