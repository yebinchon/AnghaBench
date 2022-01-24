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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct TYPE_3__ {scalar_t__ socket; int client; int width; int height; int pixsize; } ;
typedef  TYPE_1__ gfx_ctx_osmesa_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* g_osmesa_fifo ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(gfx_ctx_osmesa_data_t *osmesa)
{
   struct sockaddr_un saun, fsaun;

   osmesa->socket = FUNC5(AF_UNIX, SOCK_STREAM, 0);
   osmesa->client = -1;

   if (osmesa->socket < 0)
   {
      FUNC4("[osmesa] socket()");
      return;
   }

   saun.sun_family = AF_UNIX;

   FUNC6(saun.sun_path, g_osmesa_fifo, sizeof(saun.sun_path));

   FUNC7(g_osmesa_fifo);

   if (FUNC0(osmesa->socket, &saun, sizeof(saun.sun_family) + sizeof(saun.sun_path)) < 0)
   {
      FUNC4("[osmesa] bind()");
      FUNC1(osmesa->socket);
      return;
   }

   if (FUNC3(osmesa->socket, 1) < 0)
   {
      FUNC4("[osmesa] listen()");
      FUNC1(osmesa->socket);
      return;
   }

   FUNC2(stderr, "[osmesa] Frame size is %ix%ix%i\n", osmesa->width, osmesa->height, osmesa->pixsize);
   FUNC2(stderr, "[osmesa] Please connect to unix:%s\n", g_osmesa_fifo);
}