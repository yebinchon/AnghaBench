#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  missingfiles ;
struct TYPE_6__ {int /*<<< orphan*/  integer; } ;
struct TYPE_5__ {char* downloadList; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* cl_allowDownload ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4(void) {
  char missingfiles[1024];

  if ( !cl_allowDownload->integer )
  {
    // autodownload is disabled on the client
    // but it's possible that some referenced files on the server are missing
    if (FUNC3( missingfiles, sizeof( missingfiles ), qfalse ) )
    {      
      // NOTE TTimo I would rather have that printed as a modal message box
      //   but at this point while joining the game we don't know wether we will successfully join or not
      FUNC2( "\nWARNING: You are missing some files referenced by the server:\n%s"
                  "You might not be able to join the game\n"
                  "Go to the setting menu to turn on autodownload, or get the file elsewhere\n\n", missingfiles );
    }
  }
  else if ( FUNC3( clc.downloadList, sizeof( clc.downloadList ) , qtrue ) ) {

    FUNC2("Need paks: %s\n", clc.downloadList );

		if ( *clc.downloadList ) {
			// if autodownloading is not enabled on the server
			cls.state = CA_CONNECTED;
			FUNC1();
			return;
		}

	}
		
	FUNC0();
}