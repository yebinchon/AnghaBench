#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int gint ;
typedef  scalar_t__ gchar ;
struct TYPE_3__ {int wLine; int /*<<< orphan*/  yui; int /*<<< orphan*/  store; scalar_t__ address; } ;
typedef  TYPE_1__ YuiMem ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererText ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( GtkCellRendererText *cellrenderertext,
		      gchar *arg1,
		      gchar *arg2,
		      YuiMem *ym) {
  /* dump line <arg1> has been modified - new content is <arg2> */

  GtkTreeIter iter;
  gint i = FUNC2(arg1);
  gint j,k;
  gchar *curs;
  u32 addr = ym->address + i*ym->wLine;

  FUNC3( FUNC0( ym->store ), &iter, arg1 );
  
  /* check the format : wLine*2 hexa digits */
  for ( curs = arg2, j=0 ; *curs ; curs++ )
    if ( FUNC4( *curs ) != -1 ) j++;

  if ( j != ym->wLine * 2 ) return;

  /* convert */
  for ( curs = arg2, k=-1 ; *curs ; curs++ ) { 

    if ( FUNC4( *curs )!=-1 ) {

      if ( k==-1 ) k = FUNC4( *curs );
      else { FUNC1( addr++, 16*k + FUNC4( *curs ) ); k = -1;
      }
    }
  }
  FUNC5(ym->yui);
}