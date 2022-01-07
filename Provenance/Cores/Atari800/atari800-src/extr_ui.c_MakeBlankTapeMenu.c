
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int description ;
struct TYPE_2__ {int (* fEditString ) (char*,char*,int) ;int (* fGetSaveFilename ) (char*,int ,int ) ;} ;


 int CASSETTE_CreateCAS (char*,char*) ;
 int CASSETTE_DESCRIPTION_MAX ;
 int CASSETTE_filename ;
 int CantSave (char*) ;
 int FILENAME_MAX ;
 int UI_atari_files_dir ;
 TYPE_1__* UI_driver ;
 int UI_n_atari_files_dir ;
 int strncpy (char*,int ,int) ;
 int stub1 (char*,int ,int ) ;
 int stub2 (char*,char*,int) ;

__attribute__((used)) static void MakeBlankTapeMenu(void)
{
 char filenm[FILENAME_MAX];
 char description[CASSETTE_DESCRIPTION_MAX];
 description[0] = '\0';
 strncpy(filenm, CASSETTE_filename, FILENAME_MAX);
 if (!UI_driver->fGetSaveFilename(filenm, UI_atari_files_dir, UI_n_atari_files_dir))
  return;
 if (!UI_driver->fEditString("Enter tape's description", description, sizeof(description)))
  return;
 if (!CASSETTE_CreateCAS(filenm, description))
  CantSave(filenm);
}
