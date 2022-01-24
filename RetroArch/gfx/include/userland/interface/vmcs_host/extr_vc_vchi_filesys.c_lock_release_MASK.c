#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  filesys_lock; int /*<<< orphan*/  open_handle; int /*<<< orphan*/  initialised; } ;

/* Variables and functions */
 TYPE_1__ vc_filesys_client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void FUNC3 (void) {
   FUNC1(vc_filesys_client.initialised);
   FUNC0(vc_filesys_client.open_handle);
   FUNC2(&vc_filesys_client.filesys_lock);
}