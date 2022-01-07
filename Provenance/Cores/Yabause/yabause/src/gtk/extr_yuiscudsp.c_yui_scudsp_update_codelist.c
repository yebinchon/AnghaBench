
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int lastCode; int uLabel; } ;
typedef TYPE_1__ YuiScudsp ;


 int GTK_LABEL (int ) ;
 int ScuDspDisasm (int,char*) ;
 int gtk_label_set_markup (int ,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void yui_scudsp_update_codelist( YuiScudsp *scudsp, u32 addr) {


  int i;
  static char tagPC[] = "<span foreground=\"red\">";
  static char tagEnd[] = "</span>\n";
  char buf[100*24+40];
  char *curs = buf;
  char lineBuf[100];
  u32 offset;

  if ( addr - scudsp->lastCode >= 20 ) offset = addr - 8;
  else offset = scudsp->lastCode;
  scudsp->lastCode = offset;

  for (i=0; i < 24; i++) {

    if ( offset + i == addr ) { strcpy( curs, tagPC ); curs += strlen(tagPC); }
    ScuDspDisasm(offset+i, lineBuf);
    strcpy( curs, lineBuf );
    curs += strlen(lineBuf);
    if ( offset + i == addr ) { strcpy( curs, tagEnd ); curs += strlen(tagEnd); }
    else { strcpy( curs, "\n" ); curs += 1;}
  }
  *curs = 0;

  gtk_label_set_markup( GTK_LABEL(scudsp->uLabel), buf );
}
