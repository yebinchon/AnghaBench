#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ VGImage ;
struct TYPE_5__ {int swap_interval; int server_owned; int is_destroyed; int is_locked; int buffers; int avail_buffers_valid; int /*<<< orphan*/  alphaformat; int /*<<< orphan*/  colorspace; scalar_t__ height; scalar_t__ width; scalar_t__ serverbuffer; scalar_t__ mapped_buffer; scalar_t__ context_binding_count; scalar_t__* pixmap_server_handle; scalar_t__ pixmap; void* texture_target; void* texture_format; scalar_t__ mipmap_level; scalar_t__ mipmap_texture; scalar_t__ largest_pbuffer; scalar_t__ win; scalar_t__ config; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ KHRN_IMAGE_FORMAT_T ;
typedef  scalar_t__ EGLint ;
typedef  void* EGLenum ;
typedef  TYPE_1__ EGL_SURFACE_T ;
typedef  int /*<<< orphan*/  EGLSurface ;
typedef  scalar_t__ EGLConfig ;
typedef  scalar_t__ EGLBoolean ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTCREATEPBUFFERFROMVGIMAGE_ID ; 
 scalar_t__ EGL_BAD_ALLOC ; 
 int /*<<< orphan*/  EGL_DEPTH_SIZE ; 
 int /*<<< orphan*/  EGL_STENCIL_SIZE ; 
 scalar_t__ EGL_SUCCESS ; 
 scalar_t__ IMAGE_FORMAT_INVALID ; 
 scalar_t__ IMAGE_FORMAT_LIN ; 
 scalar_t__ IMAGE_FORMAT_PRE ; 
 int /*<<< orphan*/  LINEAR ; 
 int /*<<< orphan*/  NONPRE ; 
 int /*<<< orphan*/  PBUFFER ; 
 int /*<<< orphan*/  PRE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SRGB ; 
 int /*<<< orphan*/  eglIntCreatePbufferFromVGImage_impl ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

EGL_SURFACE_T *FUNC11(
   VGImage vg_handle,
   EGLSurface name,
   EGLConfig config,
   EGLBoolean largest_pbuffer,
   EGLBoolean mipmap_texture,
   EGLenum texture_format,
   EGLenum texture_target,
   EGLint *error)
{
   KHRN_IMAGE_FORMAT_T color;
   KHRN_IMAGE_FORMAT_T depth;
   KHRN_IMAGE_FORMAT_T mask;
   KHRN_IMAGE_FORMAT_T multi;
   EGLint   config_depth_bits;
   EGLint   config_stencil_bits;
   uint32_t results[5];
   CLIENT_THREAD_STATE_T *thread = FUNC0();

   EGL_SURFACE_T *surface = FUNC8();

   if (!surface) {
      *error = EGL_BAD_ALLOC;
      return 0;
   }

   /* TODO: respect largest_pbuffer? */

   surface->name = name;
   surface->type = PBUFFER;

   surface->config = config;
   surface->win = 0;
   surface->swap_interval = 1;

   surface->largest_pbuffer = largest_pbuffer;
   surface->mipmap_texture = mipmap_texture;
   surface->mipmap_level = 0;
   surface->texture_format = texture_format;
   surface->texture_target = texture_target;
   surface->pixmap = 0;
   surface->pixmap_server_handle[0] = 0;
   surface->pixmap_server_handle[1] = (uint32_t)-1;
   surface->server_owned = false;

   surface->context_binding_count = 0;
   surface->is_destroyed = false;

#if EGL_KHR_lock_surface
   surface->is_locked = false;
   surface->mapped_buffer = 0;
#endif

   color = FUNC4((int)(size_t)config - 1);
   depth = FUNC5((int)(size_t)config - 1);
   mask = FUNC6((int)(size_t)config - 1);
   multi = FUNC7((int)(size_t)config - 1);

   /* Find depth and stencil bits from chosen config (these may NOT be the same as the underlying format!) */
   FUNC3((int)(size_t)config - 1, EGL_DEPTH_SIZE, &config_depth_bits);
   FUNC3((int)(size_t)config - 1, EGL_STENCIL_SIZE, &config_stencil_bits);

   FUNC10(color != IMAGE_FORMAT_INVALID);

   surface->buffers = 1;

   FUNC1(eglIntCreatePbufferFromVGImage_impl,
                     thread,
                     EGLINTCREATEPBUFFERFROMVGIMAGE_ID,
                     FUNC2(vg_handle),
                     FUNC2(color),
                     FUNC2(depth),
                     FUNC2(mask),
                     FUNC2(multi),
                     FUNC2(mipmap_texture),
                     FUNC2(config_depth_bits),
                     FUNC2(config_stencil_bits),
                     results);

   surface->avail_buffers_valid = false;

   if (results[0]) {
      KHRN_IMAGE_FORMAT_T format = (KHRN_IMAGE_FORMAT_T)results[4];

      surface->serverbuffer = results[0];
      surface->width = results[2];
      surface->height = results[3];

      /* TODO: picking apart image formats like this seems messy */
      surface->colorspace = (format & IMAGE_FORMAT_LIN) ? LINEAR : SRGB;
      surface->alphaformat = (format & IMAGE_FORMAT_PRE) ? PRE : NONPRE;
      *error = EGL_SUCCESS;
      return surface;
   } else {
      *error = results[1];
      FUNC9(surface);
      return 0;
   }
}