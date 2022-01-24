#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bt_bdaddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ background_connection_t ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  background_connections ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static BOOLEAN FUNC5(bt_bdaddr_t *address)
{
    FUNC0(address);
    FUNC1();
    background_connection_t *connection = FUNC2(background_connections, address);
    if (!connection) {
        connection = FUNC4(sizeof(background_connection_t));
        connection->address = *address;
        FUNC3(background_connections, &(connection->address), connection);
        return TRUE;
    }
    return FALSE;
}