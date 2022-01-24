#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  ProtobufCMessage ;
typedef  int /*<<< orphan*/  ProtobufCAllocator ;
typedef  TYPE_2__ CmdScanStart ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmd_scan_start__descriptor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void   FUNC2
                     (CmdScanStart *message,
                      ProtobufCAllocator *allocator)
{
  if(!message)
    return;
  FUNC0(message->base.descriptor == &cmd_scan_start__descriptor);
  FUNC1 ((ProtobufCMessage*)message, allocator);
}