
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ gpointer ;
typedef scalar_t__ gboolean ;
struct TYPE_2__ {scalar_t__ (* Scan ) (int) ;int (* KeyName ) (scalar_t__,char*,int) ;int Name; int canScan; } ;


 scalar_t__ FALSE ;
 TYPE_1__* PERCore ;
 int PERSF_BUTTON ;
 int PERSF_HAT ;
 int PERSF_KEY ;
 scalar_t__ TRUE ;
 int entry_hack ;
 int g_key_file_set_integer (int ,int ,char*,scalar_t__) ;
 int gtk_entry_set_text (int ,char*) ;
 scalar_t__ is_watching ;
 int keyfile ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stub1 (int) ;
 int stub2 (scalar_t__,char*,int) ;

__attribute__((used)) static gboolean watch_joy(gpointer name) {
 u32 i;

 if (! is_watching) return TRUE;

 if (! PERCore->canScan) {
  is_watching = FALSE;
  return TRUE;
 }

 i = PERCore->Scan(PERSF_KEY | PERSF_BUTTON | PERSF_HAT);

 if (i == 0) {
  return TRUE;
 } else {
  char tmp[100];

  sprintf(tmp, "Pad.%s.1", (char *)name);
  g_key_file_set_integer(keyfile, PERCore->Name, tmp, i);
  PERCore->KeyName(i, tmp, 100);
  gtk_entry_set_text(entry_hack, tmp);
  is_watching = FALSE;
  return FALSE;
 }
}
