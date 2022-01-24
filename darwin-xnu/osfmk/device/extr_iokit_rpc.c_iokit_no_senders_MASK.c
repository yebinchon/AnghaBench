#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_mscount_t ;
struct TYPE_20__ {scalar_t__ msgh_remote_port; } ;
struct TYPE_21__ {scalar_t__ not_count; TYPE_1__ not_header; } ;
typedef  TYPE_2__ mach_no_senders_notification_t ;
typedef  TYPE_3__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_type_t ;
typedef  int /*<<< orphan*/ * io_object_t ;
struct TYPE_22__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_IOKIT_CONNECT ; 
 int /*<<< orphan*/  IKOT_IOKIT_IDENT ; 
 int /*<<< orphan*/  IKOT_IOKIT_OBJECT ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 TYPE_3__* IP_NULL ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__,TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC13( mach_no_senders_notification_t * notification )
{
    ipc_port_t		port;
    io_object_t		obj = NULL;
    ipc_kobject_type_t	type = IKOT_NONE;
    ipc_port_t		notify;

    port = (ipc_port_t) notification->not_header.msgh_remote_port;

    // convert a port to io_object_t.
    if( FUNC0(port)) {
        FUNC3(port);
        if( FUNC6(port)) {
            obj = (io_object_t) port->ip_kobject;
	    type = FUNC7( port );
            if( (IKOT_IOKIT_OBJECT  == type)
	     || (IKOT_IOKIT_CONNECT == type)
	     || (IKOT_IOKIT_IDENT   == type))
                FUNC1( obj, IKOT_IOKIT_OBJECT );
            else
                obj = NULL;
	}
        FUNC5(port);

        if( obj ) {

	    mach_port_mscount_t mscount = notification->not_count;

            if( KERN_SUCCESS != FUNC2( obj, port, type, &mscount ))
	    {
		/* Re-request no-senders notifications on the port (if still active) */
		FUNC8(port);
		if (FUNC6(port)) {
			notify = FUNC10(port);
			FUNC11( port, mscount + 1, notify, &notify);
			/* port unlocked */
			if ( notify != IP_NULL)
				FUNC12(notify);
		} else {
			FUNC9(port);
		}
	    }
            FUNC4( obj );
        }
    }
}