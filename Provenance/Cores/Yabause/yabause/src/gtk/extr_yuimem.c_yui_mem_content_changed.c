
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int gint ;
typedef scalar_t__ gchar ;
struct TYPE_3__ {int wLine; int yui; int store; scalar_t__ address; } ;
typedef TYPE_1__ YuiMem ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int GTK_TREE_MODEL (int ) ;
 int MappedMemoryWriteByte (int ,int) ;
 int atoi (scalar_t__*) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,scalar_t__*) ;
 int hexaDigitToInt (scalar_t__) ;
 int yui_window_invalidate (int ) ;

__attribute__((used)) static void yui_mem_content_changed( GtkCellRendererText *cellrenderertext,
        gchar *arg1,
        gchar *arg2,
        YuiMem *ym) {


  GtkTreeIter iter;
  gint i = atoi(arg1);
  gint j,k;
  gchar *curs;
  u32 addr = ym->address + i*ym->wLine;

  gtk_tree_model_get_iter_from_string( GTK_TREE_MODEL( ym->store ), &iter, arg1 );


  for ( curs = arg2, j=0 ; *curs ; curs++ )
    if ( hexaDigitToInt( *curs ) != -1 ) j++;

  if ( j != ym->wLine * 2 ) return;


  for ( curs = arg2, k=-1 ; *curs ; curs++ ) {

    if ( hexaDigitToInt( *curs )!=-1 ) {

      if ( k==-1 ) k = hexaDigitToInt( *curs );
      else { MappedMemoryWriteByte( addr++, 16*k + hexaDigitToInt( *curs ) ); k = -1;
      }
    }
  }
  yui_window_invalidate(ym->yui);
}
