#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct VC_CONTAINER_IO_T {int /*<<< orphan*/  uri_parts; int /*<<< orphan*/  size; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; } ;
struct TYPE_9__ {TYPE_2__* priv; int /*<<< orphan*/ * drm; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  char const* VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
struct TYPE_10__ {struct VC_CONTAINER_IO_T* io; int /*<<< orphan*/  drm_filter; int /*<<< orphan*/  uri; int /*<<< orphan*/  verbosity; } ;
typedef  TYPE_2__ VC_CONTAINER_PRIVATE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_DRM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct VC_CONTAINER_IO_T*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_INVALID_ARGUMENT ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,char,char,char) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_T *FUNC11( struct VC_CONTAINER_IO_T *io,
   const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_T *p_ctx = 0;
   const char *extension;

   FUNC1(pfn_progress);
   FUNC1(progress_userdata);
   FUNC1(uri);

   /* Sanity check the i/o */
   if (!io || !io->pf_read || !io->pf_seek)
   {
      FUNC0(0, "invalid i/o instance: %p", io);
      status = VC_CONTAINER_ERROR_INVALID_ARGUMENT;
      goto error;
   }

   /* Allocate our context before trying out the different readers / writers */
   p_ctx = FUNC3( sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->drm));
   if(!p_ctx) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC4(p_ctx, 0, sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->drm));
   p_ctx->priv = (VC_CONTAINER_PRIVATE_T *)(p_ctx + 1);
   p_ctx->priv->verbosity = FUNC8();
   p_ctx->drm = (VC_CONTAINER_DRM_T *)(p_ctx->priv + 1);
   p_ctx->size = io->size;
   p_ctx->priv->io = io;
   p_ctx->priv->uri = io->uri_parts;

   /* If the uri has an extension, use it as a hint when loading the container */
   extension = FUNC10(p_ctx->priv->uri);
   /* If the user has specified a container, then use that instead */
   FUNC9(p_ctx->priv->uri, 0, "container", &extension);

   status = FUNC7(p_ctx, extension);
   if (status != VC_CONTAINER_SUCCESS)
      goto error;

   p_ctx->priv->drm_filter = FUNC6(FUNC2('d','r','m',' '),
      FUNC2('u','n','k','n'), p_ctx, &status);
   if (status != VC_CONTAINER_SUCCESS)
   {
      /* Some other problem occurred aside from the filter not being appropriate or
         the stream not needing it. */
      if (status != VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED) goto error;

      /* Report no DRM and continue as normal */
      p_ctx->drm = NULL;
      status = VC_CONTAINER_SUCCESS;
   }

end:
   if(p_status) *p_status = status;
   return p_ctx;

error:
   if (p_ctx)
   {
      p_ctx->priv->io = NULL; /* The i/o doesn't belong to us */
      FUNC5(p_ctx);
      p_ctx = NULL;
   }
   goto end;
}