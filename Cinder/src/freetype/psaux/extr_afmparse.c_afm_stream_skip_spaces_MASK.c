#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__* AFM_Stream ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  AFM_STREAM_STATUS_EOC ; 
 int /*<<< orphan*/  AFM_STREAM_STATUS_EOF ; 
 int /*<<< orphan*/  AFM_STREAM_STATUS_EOL ; 

__attribute__((used)) static int
  FUNC6( AFM_Stream  stream )
  {
    int  ch = 0;  /* make stupid compiler happy */


    if ( FUNC5( stream ) )
      return ';';

    while ( 1 )
    {
      ch = FUNC0();
      if ( !FUNC4( ch ) )
        break;
    }

    if ( FUNC2( ch ) )
      stream->status = AFM_STREAM_STATUS_EOL;
    else if ( FUNC3( ch ) )
      stream->status = AFM_STREAM_STATUS_EOC;
    else if ( FUNC1( ch ) )
      stream->status = AFM_STREAM_STATUS_EOF;

    return ch;
  }