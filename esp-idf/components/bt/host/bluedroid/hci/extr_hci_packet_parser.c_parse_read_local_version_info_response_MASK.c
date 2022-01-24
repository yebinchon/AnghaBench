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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  lmp_subversion; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  lmp_version; int /*<<< orphan*/  hci_revision; int /*<<< orphan*/  hci_version; } ;
typedef  TYPE_1__ bt_version_t ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_READ_LOCAL_VERSION_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(
    BT_HDR *response,
    bt_version_t *bt_version)
{

    uint8_t *stream = FUNC4(response, HCI_READ_LOCAL_VERSION_INFO, 8 /* bytes after */);
    FUNC2(stream != NULL);
    FUNC1(bt_version->hci_version, stream);
    FUNC0(bt_version->hci_revision, stream);
    FUNC1(bt_version->lmp_version, stream);
    FUNC0(bt_version->manufacturer, stream);
    FUNC0(bt_version->lmp_subversion, stream);

    FUNC3(response);
}