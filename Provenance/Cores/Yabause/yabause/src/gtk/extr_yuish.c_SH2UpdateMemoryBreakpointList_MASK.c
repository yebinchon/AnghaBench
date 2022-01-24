#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int addr; int flags; } ;
typedef  TYPE_1__ memorybreakpoint_struct ;
typedef  scalar_t__ gchar ;
struct TYPE_6__ {int /*<<< orphan*/  mbpListStore; int /*<<< orphan*/  debugsh; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int BREAK_BYTEREAD ; 
 int BREAK_BYTEWRITE ; 
 int BREAK_LONGREAD ; 
 int BREAK_LONGWRITE ; 
 int BREAK_WORDREAD ; 
 int BREAK_WORDWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_BREAKPOINTS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*,int) ; 

void FUNC6(YuiSh * sh2) {
  const memorybreakpoint_struct *cmbp;
  int i;

  FUNC3( sh2->mbpListStore );

  cmbp = FUNC1(sh2->debugsh);

  for (i = 0; i < MAX_BREAKPOINTS; i++) {
    
    if (cmbp[i].addr != 0xFFFFFFFF) {
      gchar tempstr[30];
      gchar flagstr[30];
      gchar *curs = flagstr;
      u32 flags = cmbp[i].flags;

      GtkTreeIter iter;
      FUNC2( FUNC0( sh2->mbpListStore ), &iter );
      
      FUNC5(tempstr, "%08X", (int)cmbp[i].addr);
      if ( flags & BREAK_BYTEREAD ) *(curs++) = 'b';
      if ( flags & BREAK_WORDREAD ) *(curs++) = 'w';
      if ( flags & BREAK_LONGREAD ) *(curs++) = 'l';
      if ( flags & BREAK_BYTEWRITE ) *(curs++) = 'B';
      if ( flags & BREAK_WORDWRITE ) *(curs++) = 'W';
      if ( flags & BREAK_LONGWRITE ) *(curs++) = 'L';
      *curs = 0;
       
      FUNC4( FUNC0( sh2->mbpListStore ), &iter, 0, tempstr, -1 );
      FUNC4( FUNC0( sh2->mbpListStore ), &iter, 1, flagstr, -1 );
    }
  } 
}