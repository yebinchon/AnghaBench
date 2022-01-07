
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {char* filepath; char* filename; int filetype; } ;
typedef TYPE_1__ t_history_entry ;
struct TYPE_6__ {TYPE_1__* entries; } ;


 int MAXJOLIET ;
 int NUM_HISTORY_ENTRIES ;
 TYPE_4__ history ;
 int history_save () ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (char*,char*,int) ;

void history_add_file(char *filepath, char *filename, u8 filetype)
{

  t_history_entry newentry;
  strncpy(newentry.filepath, filepath, MAXJOLIET - 1);
  strncpy(newentry.filename, filename, MAXJOLIET - 1);
  newentry.filepath[MAXJOLIET - 1] = '\0';
  newentry.filename[MAXJOLIET - 1] = '\0';
  newentry.filetype = filetype;

  t_history_entry oldentry;
  t_history_entry currentry;


  memcpy(&currentry, &newentry, sizeof(t_history_entry));

  int i;
  for(i=0; i < NUM_HISTORY_ENTRIES; i++)
  {

    memcpy(&oldentry, &history.entries[i], sizeof(t_history_entry));


    memcpy(&history.entries[i], &currentry, sizeof(t_history_entry));


    memcpy(&currentry, &oldentry, sizeof(t_history_entry));




    if(strcmp(newentry.filepath, currentry.filepath) == 0 && strcmp(newentry.filename, currentry.filename) == 0)
      break;
  }


  history_save();
}
