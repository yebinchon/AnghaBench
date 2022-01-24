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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * client_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ; 
 TYPE_1__ cecservice_client ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int32_t FUNC4(void *buffer, uint32_t max_length) {
   if(!FUNC3(buffer)) {
      FUNC0("CEC: NULL buffer passed to wait_for_bulk_receive");
      return -1;
   }
   return (int32_t) FUNC1(FUNC2( cecservice_client.client_handle[0],
                                                                 buffer,
                                                                 max_length,
                                                                 VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE,
                                                                 NULL ));
}