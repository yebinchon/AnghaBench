#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* j_decompress_ptr ;
typedef  int /*<<< orphan*/  boolean ;
struct TYPE_6__ {int unread_marker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JTRC_RECOVERY_ACTION ; 
 int /*<<< orphan*/  JWRN_MUST_RESYNC ; 
 scalar_t__ M_RST0 ; 
 scalar_t__ M_RST7 ; 
 scalar_t__ M_SOF0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

boolean
FUNC3 (j_decompress_ptr cinfo, int desired)
{
  int marker = cinfo->unread_marker;
  int action = 1;
  
  /* Always put up a warning. */
  FUNC1(cinfo, JWRN_MUST_RESYNC, marker, desired);
  
  /* Outer loop handles repeated decision after scanning forward. */
  for (;;) {
    if (marker < (int) M_SOF0)
      action = 2;		/* invalid marker */
    else if (marker < (int) M_RST0 || marker > (int) M_RST7)
      action = 3;		/* valid non-restart marker */
    else {
      if (marker == ((int) M_RST0 + ((desired+1) & 7)) ||
	  marker == ((int) M_RST0 + ((desired+2) & 7)))
	action = 3;		/* one of the next two expected restarts */
      else if (marker == ((int) M_RST0 + ((desired-1) & 7)) ||
	       marker == ((int) M_RST0 + ((desired-2) & 7)))
	action = 2;		/* a prior restart, so advance */
      else
	action = 1;		/* desired restart or too far away */
    }
    FUNC0(cinfo, 4, JTRC_RECOVERY_ACTION, marker, action);
    switch (action) {
    case 1:
      /* Discard marker and let entropy decoder resume processing. */
      cinfo->unread_marker = 0;
      return TRUE;
    case 2:
      /* Scan to the next marker, and repeat the decision loop. */
      if (! FUNC2(cinfo))
	return FALSE;
      marker = cinfo->unread_marker;
      break;
    case 3:
      /* Return without advancing past this marker. */
      /* Entropy decoder will be forced to process an empty segment. */
      return TRUE;
    }
  } /* end loop */
}