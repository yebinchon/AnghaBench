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
typedef  TYPE_2__ RespGetStatus ;
typedef  int /*<<< orphan*/  ProtobufCMessage ;
typedef  int /*<<< orphan*/  ProtobufCBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resp_get_status__descriptor ; 

size_t FUNC2
                     (const RespGetStatus *message,
                      ProtobufCBuffer *buffer)
{
  FUNC0(message->base.descriptor == &resp_get_status__descriptor);
  return FUNC1 ((const ProtobufCMessage*)message, buffer);
}