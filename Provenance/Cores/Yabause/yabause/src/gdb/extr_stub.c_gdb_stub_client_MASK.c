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
struct TYPE_4__ {TYPE_2__* client; scalar_t__ state; } ;
typedef  TYPE_1__ gdb_packet ;
struct TYPE_5__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_2__ gdb_client ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static void FUNC2(void * data)
{
   gdb_client * client = data;
   char buffer[1024];
   size_t got;
   gdb_packet packet;

   packet.state = 0;
   packet.client = client;

   
   while(-1 != (got = FUNC0(client->sock, buffer, 1024, 0)))
   {
      FUNC1(&packet, buffer, got);
   }
}