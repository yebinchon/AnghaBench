
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_no_senders_notification_t ;
struct TYPE_3__ {int msgh_id; } ;
typedef TYPE_1__ mach_msg_header_t ;
typedef int boolean_t ;


 int FALSE ;





 int TRUE ;
 int iokit_no_senders (int *) ;
 int printf (char*,int) ;

boolean_t
iokit_notify( mach_msg_header_t * msg )
{
    switch (msg->msgh_id) {
        case 131:
            iokit_no_senders((mach_no_senders_notification_t *) msg);
            return TRUE;

        case 130:
        case 129:
        case 128:
        case 132:
        default:
            printf("iokit_notify: strange notification %d\n", msg->msgh_id);
            return FALSE;
    }
}
