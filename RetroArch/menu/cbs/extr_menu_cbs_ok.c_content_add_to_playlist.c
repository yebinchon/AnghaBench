
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int show_hidden_files; int automatically_add_content_to_playlist; } ;
struct TYPE_5__ {int path_content_database; int directory_playlist; } ;
struct TYPE_7__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;


 TYPE_3__* config_get_ptr () ;
 int handle_dbscan_finished ;
 int task_push_dbscan (int ,int ,char const*,int,int ,int ) ;

__attribute__((used)) static void content_add_to_playlist(const char *path)
{
}
