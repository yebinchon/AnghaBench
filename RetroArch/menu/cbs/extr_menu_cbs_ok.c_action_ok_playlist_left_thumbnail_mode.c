
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_OK_DL_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE ;
 int generic_action_ok_displaylist_push (int *,int *,int *,int ,size_t,int ,int ) ;

__attribute__((used)) static int action_ok_playlist_left_thumbnail_mode(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   generic_action_ok_displaylist_push(
         ((void*)0),
         ((void*)0), ((void*)0), 0, idx, 0,
         ACTION_OK_DL_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE);
   return 0;
}
