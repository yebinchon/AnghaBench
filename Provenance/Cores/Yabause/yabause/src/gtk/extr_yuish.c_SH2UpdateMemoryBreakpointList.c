
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int addr; int flags; } ;
typedef TYPE_1__ memorybreakpoint_struct ;
typedef scalar_t__ gchar ;
struct TYPE_6__ {int mbpListStore; int debugsh; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkTreeIter ;


 int BREAK_BYTEREAD ;
 int BREAK_BYTEWRITE ;
 int BREAK_LONGREAD ;
 int BREAK_LONGWRITE ;
 int BREAK_WORDREAD ;
 int BREAK_WORDWRITE ;
 int GTK_LIST_STORE (int ) ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* SH2GetMemoryBreakpointList (int ) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_clear (int ) ;
 int gtk_list_store_set (int ,int *,int,scalar_t__*,int) ;
 int sprintf (scalar_t__*,char*,int) ;

void SH2UpdateMemoryBreakpointList(YuiSh * sh2) {
  const memorybreakpoint_struct *cmbp;
  int i;

  gtk_list_store_clear( sh2->mbpListStore );

  cmbp = SH2GetMemoryBreakpointList(sh2->debugsh);

  for (i = 0; i < MAX_BREAKPOINTS; i++) {

    if (cmbp[i].addr != 0xFFFFFFFF) {
      gchar tempstr[30];
      gchar flagstr[30];
      gchar *curs = flagstr;
      u32 flags = cmbp[i].flags;

      GtkTreeIter iter;
      gtk_list_store_append( GTK_LIST_STORE( sh2->mbpListStore ), &iter );

      sprintf(tempstr, "%08X", (int)cmbp[i].addr);
      if ( flags & BREAK_BYTEREAD ) *(curs++) = 'b';
      if ( flags & BREAK_WORDREAD ) *(curs++) = 'w';
      if ( flags & BREAK_LONGREAD ) *(curs++) = 'l';
      if ( flags & BREAK_BYTEWRITE ) *(curs++) = 'B';
      if ( flags & BREAK_WORDWRITE ) *(curs++) = 'W';
      if ( flags & BREAK_LONGWRITE ) *(curs++) = 'L';
      *curs = 0;

      gtk_list_store_set( GTK_LIST_STORE( sh2->mbpListStore ), &iter, 0, tempstr, -1 );
      gtk_list_store_set( GTK_LIST_STORE( sh2->mbpListStore ), &iter, 1, flagstr, -1 );
    }
  }
}
