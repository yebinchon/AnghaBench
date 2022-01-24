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
struct TYPE_3__ {int mipmap_level; int swap_behavior; int multisample_resolve; int /*<<< orphan*/  serverbuffer; int /*<<< orphan*/  type; } ;
typedef  int EGLint ;
typedef  TYPE_1__ EGL_SURFACE_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTSELECTMIPMAP_ID ; 
 int EGL_BAD_ATTRIBUTE ; 
 int EGL_BAD_PARAMETER ; 
#define  EGL_BUFFER_DESTROYED 134 
#define  EGL_BUFFER_PRESERVED 133 
#define  EGL_MIPMAP_LEVEL 132 
#define  EGL_MULTISAMPLE_RESOLVE 131 
#define  EGL_MULTISAMPLE_RESOLVE_BOX 130 
#define  EGL_MULTISAMPLE_RESOLVE_DEFAULT 129 
 int EGL_SUCCESS ; 
#define  EGL_SWAP_BEHAVIOR 128 
 int /*<<< orphan*/  PBUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglIntSelectMipmap_impl ; 

EGLint FUNC4(EGL_SURFACE_T *surface, EGLint attrib, EGLint value)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
   switch (attrib) {
   case EGL_MIPMAP_LEVEL:
      if (surface->type == PBUFFER) {
         FUNC1(eglIntSelectMipmap_impl,
                   thread,
                   EGLINTSELECTMIPMAP_ID,
                   FUNC3(surface->serverbuffer),
                   FUNC2(value));

         surface->mipmap_level = value;
      }
      return EGL_SUCCESS;
   case EGL_SWAP_BEHAVIOR:
      switch (value) {
      case EGL_BUFFER_PRESERVED:
      case EGL_BUFFER_DESTROYED:
         surface->swap_behavior = value;
         return EGL_SUCCESS;
      default:
         return EGL_BAD_PARAMETER;
      }
   case EGL_MULTISAMPLE_RESOLVE:
      switch (value) {
      case EGL_MULTISAMPLE_RESOLVE_DEFAULT:
      case EGL_MULTISAMPLE_RESOLVE_BOX:
         surface->multisample_resolve = value;
         return EGL_SUCCESS;
      default:
         return EGL_BAD_PARAMETER;
      }
   default:
      return EGL_BAD_ATTRIBUTE;
   }
}