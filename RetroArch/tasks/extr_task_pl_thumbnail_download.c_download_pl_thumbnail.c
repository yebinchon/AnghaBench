
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int url ;
typedef int retro_task_t ;
struct TYPE_6__ {int * http_task; scalar_t__ overwrite; } ;
typedef TYPE_1__ pl_thumb_handle_t ;
typedef int path ;
struct TYPE_7__ {int path; int enum_idx; } ;
typedef TYPE_2__ file_transfer_t ;


 int MENU_ENUM_LABEL_CB_SINGLE_THUMBNAIL ;
 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,int) ;
 int cb_generic_download ;
 scalar_t__ get_thumbnail_paths (TYPE_1__*,char*,int,char*,int) ;
 int path_is_valid (char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ task_push_http_transfer (char*,int,int *,int ,TYPE_2__*) ;

__attribute__((used)) static void download_pl_thumbnail(pl_thumb_handle_t *pl_thumb)
{
   char path[PATH_MAX_LENGTH];
   char url[2048];

   path[0] = '\0';
   url[0] = '\0';


   if (get_thumbnail_paths(pl_thumb, path, sizeof(path), url, sizeof(url)))
   {

      if (!path_is_valid(path) || pl_thumb->overwrite)
      {
         file_transfer_t *transf = (file_transfer_t*)calloc(1, sizeof(file_transfer_t));
         if (!transf)
            return;


         transf->enum_idx = MENU_ENUM_LABEL_CB_SINGLE_THUMBNAIL;
         strlcpy(transf->path, path, sizeof(transf->path));




         pl_thumb->http_task = (retro_task_t*)task_push_http_transfer(url, 1, ((void*)0), cb_generic_download, transf);
      }
   }
}
