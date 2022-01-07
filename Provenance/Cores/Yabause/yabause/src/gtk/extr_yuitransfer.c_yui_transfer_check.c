
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int mode; int transfer_button; int to_entry; int from_entry; int file_entry; } ;
typedef TYPE_1__ YuiTransfer ;


 int FALSE ;
 int GTK_ENTRY (int ) ;
 int TRUE ;



 char* gtk_entry_get_text (int ) ;
 int gtk_widget_set_sensitive (int ,int ) ;

__attribute__((used)) static void yui_transfer_check(YuiTransfer * yt) {
 gboolean ok = FALSE;

 if (*gtk_entry_get_text(GTK_ENTRY(yt->file_entry)) != '\0') {
  switch(yt->mode) {
   case 130:
   case 129:
    if (*gtk_entry_get_text(GTK_ENTRY(yt->from_entry)) != '\0') {
     ok = TRUE;
    }
    break;
   case 128:
    if ((*gtk_entry_get_text(GTK_ENTRY(yt->from_entry)) != '\0') && (*gtk_entry_get_text(GTK_ENTRY(yt->to_entry)) != '\0')) {
     ok = TRUE;
    }
    break;
  }
 }

 gtk_widget_set_sensitive(yt->transfer_button, ok);
}
