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
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int /*<<< orphan*/  uri_parts; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
typedef  scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_ERROR_URI_NOT_FOUND ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_URI_OPEN_FAILED ; 
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *FUNC5(VC_CONTAINER_IO_T *ctx, VC_CONTAINER_IO_MODE_T mode,
   VC_CONTAINER_STATUS_T *p_status)
{
   const char *psz_mode = mode == VC_CONTAINER_IO_MODE_WRITE ? "wb+" : "rb";
   FILE *stream = 0;
   const char *port, *path;

   /* Treat empty port or path strings as not defined */
   port = FUNC3(ctx->uri_parts);
   if (port && !*port)
      port = NULL;

   path = FUNC2(ctx->uri_parts);
   if (path && !*path)
      path = NULL;

   /* Require the port to be undefined and the path to be defined */
   if (port || !path) { *p_status = VC_CONTAINER_ERROR_URI_OPEN_FAILED; goto error; }

   if (!FUNC1(FUNC4(ctx->uri_parts)))
   { *p_status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   stream = FUNC0(path, psz_mode);
   if(!stream) { *p_status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   *p_status = VC_CONTAINER_SUCCESS;
   return stream;

error:
   return NULL;
}