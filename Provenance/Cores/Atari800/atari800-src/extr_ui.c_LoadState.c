
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fMessage ) (char*,int ) ;scalar_t__ (* fGetLoadFilename ) (int ,int ,int ) ;} ;


 int CantLoad (int ) ;
 int StateSav_ReadAtariState (int ,char*) ;
 TYPE_1__* UI_driver ;
 int UI_n_saved_files_dir ;
 int UI_saved_files_dir ;
 int state_filename ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int stub2 (char*,int ) ;

__attribute__((used)) static void LoadState(void)
{
 if (UI_driver->fGetLoadFilename(state_filename, UI_saved_files_dir, UI_n_saved_files_dir)) {
  UI_driver->fMessage("Please wait while loading...", 0);
  if (!StateSav_ReadAtariState(state_filename, "rb"))
   CantLoad(state_filename);
 }
}
