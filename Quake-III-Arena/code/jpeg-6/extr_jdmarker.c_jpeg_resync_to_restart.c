
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* j_decompress_ptr ;
typedef int boolean ;
struct TYPE_6__ {int unread_marker; } ;


 int FALSE ;
 int JTRC_RECOVERY_ACTION ;
 int JWRN_MUST_RESYNC ;
 scalar_t__ M_RST0 ;
 scalar_t__ M_RST7 ;
 scalar_t__ M_SOF0 ;
 int TRACEMS2 (TYPE_1__*,int,int ,int,int) ;
 int TRUE ;
 int WARNMS2 (TYPE_1__*,int ,int,int) ;
 int next_marker (TYPE_1__*) ;

boolean
jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired)
{
  int marker = cinfo->unread_marker;
  int action = 1;


  WARNMS2(cinfo, JWRN_MUST_RESYNC, marker, desired);


  for (;;) {
    if (marker < (int) M_SOF0)
      action = 2;
    else if (marker < (int) M_RST0 || marker > (int) M_RST7)
      action = 3;
    else {
      if (marker == ((int) M_RST0 + ((desired+1) & 7)) ||
   marker == ((int) M_RST0 + ((desired+2) & 7)))
 action = 3;
      else if (marker == ((int) M_RST0 + ((desired-1) & 7)) ||
        marker == ((int) M_RST0 + ((desired-2) & 7)))
 action = 2;
      else
 action = 1;
    }
    TRACEMS2(cinfo, 4, JTRC_RECOVERY_ACTION, marker, action);
    switch (action) {
    case 1:

      cinfo->unread_marker = 0;
      return TRUE;
    case 2:

      if (! next_marker(cinfo))
 return FALSE;
      marker = cinfo->unread_marker;
      break;
    case 3:


      return TRUE;
    }
  }
}
