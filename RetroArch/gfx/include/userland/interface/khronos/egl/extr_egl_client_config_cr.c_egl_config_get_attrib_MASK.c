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
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  FEATURES_T ;
typedef  int EGLint ;

/* Variables and functions */
#define  ARGB_8888_RSO 164 
#define  EGL_ALPHA_MASK_SIZE 163 
#define  EGL_ALPHA_SIZE 162 
#define  EGL_BIND_TO_TEXTURE_RGB 161 
#define  EGL_BIND_TO_TEXTURE_RGBA 160 
#define  EGL_BLUE_SIZE 159 
#define  EGL_BUFFER_SIZE 158 
#define  EGL_COLOR_BUFFER_TYPE 157 
#define  EGL_CONFIG_CAVEAT 156 
#define  EGL_CONFIG_ID 155 
 int EGL_CONFIG_MAX_HEIGHT ; 
 int EGL_CONFIG_MAX_SWAP_INTERVAL ; 
 int EGL_CONFIG_MAX_WIDTH ; 
 int EGL_CONFIG_MIN_SWAP_INTERVAL ; 
#define  EGL_CONFORMANT 154 
#define  EGL_DEPTH_SIZE 153 
 int EGL_FORMAT_RGBA_8888_EXACT_KHR ; 
 int EGL_FORMAT_RGB_565_EXACT_KHR ; 
#define  EGL_GREEN_SIZE 152 
#define  EGL_LEVEL 151 
 int EGL_LOCK_SURFACE_BIT_KHR ; 
#define  EGL_LUMINANCE_SIZE 150 
#define  EGL_MATCH_FORMAT_KHR 149 
#define  EGL_MATCH_NATIVE_PIXMAP 148 
#define  EGL_MAX_PBUFFER_HEIGHT 147 
#define  EGL_MAX_PBUFFER_PIXELS 146 
#define  EGL_MAX_PBUFFER_WIDTH 145 
#define  EGL_MAX_SWAP_INTERVAL 144 
#define  EGL_MIN_SWAP_INTERVAL 143 
 int EGL_MULTISAMPLE_RESOLVE_BOX_BIT ; 
#define  EGL_NATIVE_RENDERABLE 142 
#define  EGL_NATIVE_VISUAL_ID 141 
#define  EGL_NATIVE_VISUAL_TYPE 140 
 int EGL_NONE ; 
 int EGL_OPTIMAL_FORMAT_BIT_KHR ; 
 int EGL_PBUFFER_BIT ; 
 int EGL_PIXMAP_BIT ; 
#define  EGL_RECORDABLE_ANDROID 139 
#define  EGL_RED_SIZE 138 
#define  EGL_RENDERABLE_TYPE 137 
 int EGL_RGB_BUFFER ; 
#define  EGL_SAMPLES 136 
#define  EGL_SAMPLE_BUFFERS 135 
#define  EGL_STENCIL_SIZE 134 
#define  EGL_SURFACE_TYPE 133 
 int EGL_SWAP_BEHAVIOR_PRESERVED_BIT ; 
#define  EGL_TRANSPARENT_BLUE_VALUE 132 
#define  EGL_TRANSPARENT_GREEN_VALUE 131 
#define  EGL_TRANSPARENT_RED_VALUE 130 
#define  EGL_TRANSPARENT_TYPE 129 
 int EGL_TRUE ; 
 int EGL_VG_ALPHA_FORMAT_PRE_BIT ; 
 int EGL_VG_COLORSPACE_LINEAR_BIT ; 
 int EGL_WINDOW_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
#define  RGB_565_RSO 128 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 TYPE_1__* formats ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

bool FUNC19(int id, EGLint attrib, EGLint *value)
{
   FEATURES_T features = formats[id].features;

   switch (attrib) {
   case EGL_BUFFER_SIZE:
      *value = FUNC2(features);
      return true;
   case EGL_RED_SIZE:
      *value = FUNC7(features);
      return true;
   case EGL_GREEN_SIZE:
      *value = FUNC4(features);
      return true;
   case EGL_BLUE_SIZE:
      *value = FUNC1(features);
      return true;
   case EGL_LUMINANCE_SIZE:
      *value = 0;
      return true;
   case EGL_ALPHA_SIZE:
      *value = FUNC0(features);
      return true;
   case EGL_ALPHA_MASK_SIZE:
      *value = FUNC5(features);
      return true;
   case EGL_BIND_TO_TEXTURE_RGB:
      *value = FUNC10(features);
      return true;
   case EGL_BIND_TO_TEXTURE_RGBA:
      *value = FUNC11(features);
      return true;
   case EGL_COLOR_BUFFER_TYPE:
      *value = EGL_RGB_BUFFER;
      return true;
   case EGL_CONFIG_CAVEAT:
      *value = EGL_NONE;
      return true;
   case EGL_CONFIG_ID:
      *value = (EGLint)(uintptr_t)FUNC12(id);
      return true;
   case EGL_CONFORMANT:
      *value = FUNC13(id);
      return true;
   case EGL_DEPTH_SIZE:
      *value = FUNC3(features);
      return true;
   case EGL_LEVEL:
      *value = 0;
      return true;
   case EGL_MATCH_NATIVE_PIXMAP:
      *value = 0;
      return true;
   case EGL_MAX_PBUFFER_WIDTH:
      *value = EGL_CONFIG_MAX_WIDTH;
      return true;
   case EGL_MAX_PBUFFER_HEIGHT:
      *value = EGL_CONFIG_MAX_HEIGHT;
      return true;
   case EGL_MAX_PBUFFER_PIXELS:
      *value = EGL_CONFIG_MAX_WIDTH * EGL_CONFIG_MAX_HEIGHT;
      return true;
   case EGL_MAX_SWAP_INTERVAL:
      *value = EGL_CONFIG_MAX_SWAP_INTERVAL;
      return true;
   case EGL_MIN_SWAP_INTERVAL:
      *value = EGL_CONFIG_MIN_SWAP_INTERVAL;
      return true;
   case EGL_NATIVE_RENDERABLE:
      *value = EGL_TRUE;
      return true;
   case EGL_NATIVE_VISUAL_ID:
      *value = FUNC18(FUNC15(id));
      return true;
   case EGL_NATIVE_VISUAL_TYPE:
      *value = EGL_NONE;
      return true;
   case EGL_RENDERABLE_TYPE:
      *value = FUNC14(id);
      return true;
   case EGL_SAMPLE_BUFFERS:
      *value = FUNC6(features);
      return true;
   case EGL_SAMPLES:
      *value = FUNC6(features) * 4;
      return true;
   case EGL_STENCIL_SIZE:
      *value = FUNC8(features);
      return true;
   case EGL_SURFACE_TYPE:
      *value = (EGLint)(EGL_PBUFFER_BIT | EGL_PIXMAP_BIT | EGL_WINDOW_BIT | EGL_VG_COLORSPACE_LINEAR_BIT | EGL_VG_ALPHA_FORMAT_PRE_BIT | EGL_MULTISAMPLE_RESOLVE_BOX_BIT | EGL_SWAP_BEHAVIOR_PRESERVED_BIT);
#if EGL_KHR_lock_surface
      if (egl_config_is_lockable(id))
      {
         *value |= EGL_LOCK_SURFACE_BIT_KHR;
         if (egl_config_get_mapped_format(id) == egl_config_get_color_format(id))
            *value |= EGL_OPTIMAL_FORMAT_BIT_KHR;      /* Considered optimal if no format conversion needs doing. Currently all lockable surfaces are optimal */
      }
#endif
      return true;
   case EGL_TRANSPARENT_TYPE:
      *value = EGL_NONE;
      return true;
   case EGL_TRANSPARENT_RED_VALUE:
   case EGL_TRANSPARENT_GREEN_VALUE:
   case EGL_TRANSPARENT_BLUE_VALUE:
      *value = 0;
      return true;
#if EGL_KHR_lock_surface
   case EGL_MATCH_FORMAT_KHR:
      if (!egl_config_is_lockable(id))
         *value = EGL_NONE;
      else {
         switch (egl_config_get_mapped_format(id))
         {
         case RGB_565_RSO:
            *value = EGL_FORMAT_RGB_565_EXACT_KHR;
            break;
         case ARGB_8888_RSO:
            *value = EGL_FORMAT_RGBA_8888_EXACT_KHR;
            break;
         default:
            UNREACHABLE();
         }
      }
      return true;
#endif
#if EGL_ANDROID_recordable
   case EGL_RECORDABLE_ANDROID:
      *value = EGL_TRUE;
      return true;
#endif
   default:
      return false;
   }
}