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
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {scalar_t__ client; int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ gfx_ctx_osmesa_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(gfx_ctx_osmesa_data_t *osmesa)
{
   int res;
   struct pollfd fds;
   fds.fd = osmesa->socket;
   fds.events = POLLIN;

   if (osmesa->client >= 0)
      return;

   res = FUNC3(&fds, 1, 0);

   if (res < 0)
      FUNC2("[osmesa] poll() error");
   else if (res > 0)
   {
      osmesa->client = FUNC0(osmesa->socket, NULL, NULL);
      FUNC1(stderr, "[osmesa] Client %li connected.\n", osmesa->client);
   }
}