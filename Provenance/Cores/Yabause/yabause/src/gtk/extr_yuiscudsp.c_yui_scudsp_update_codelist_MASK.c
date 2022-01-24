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
typedef  int u32 ;
struct TYPE_3__ {int lastCode; int /*<<< orphan*/  uLabel; } ;
typedef  TYPE_1__ YuiScudsp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( YuiScudsp *scudsp, u32 addr) {
  /* refresh the assembler view. <addr> points the line to be highlighted. */

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

    if ( offset + i == addr ) { FUNC3( curs, tagPC ); curs += FUNC4(tagPC); }
    FUNC1(offset+i, lineBuf);
    FUNC3( curs, lineBuf );
    curs += FUNC4(lineBuf);
    if ( offset + i == addr ) { FUNC3( curs, tagEnd ); curs += FUNC4(tagEnd); }
    else { FUNC3( curs, "\n" ); curs += 1;}
  }
  *curs = 0;  

  FUNC2( FUNC0(scudsp->uLabel), buf );
}