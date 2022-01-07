
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fMessage ) (char*,int ) ;scalar_t__ (* fGetSaveFilename ) (int ,int ,int ) ;} ;


 int CantSave (int ) ;
 int StateSav_SaveAtariState (int ,char*,int ) ;
 int TRUE ;
 TYPE_1__* UI_driver ;
 int UI_n_saved_files_dir ;
 int UI_saved_files_dir ;
 int state_filename ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int stub2 (char*,int ) ;

__attribute__((used)) static void SaveState(void)
{
 if (UI_driver->fGetSaveFilename(state_filename, UI_saved_files_dir, UI_n_saved_files_dir)) {
  int result;
  UI_driver->fMessage("Please wait while saving...", 0);
  result = StateSav_SaveAtariState(state_filename, "wb", TRUE);
  if (!result)
   CantSave(state_filename);
 }
}
