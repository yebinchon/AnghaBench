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
typedef  int uint32_t ;
struct TYPE_3__ {int stride; int height; int format; int width; scalar_t__ storage; } ;
typedef  TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef  int /*<<< orphan*/  EGLImageKHR ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTIMAGESETCOLORDATA_ID ; 
 int KHDISPATCH_WORKSPACE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  eglIntImageSetColorData_impl ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(EGLImageKHR egl_image, KHRN_IMAGE_WRAP_T *image)
{
   int line_size = (image->stride < 0) ? -image->stride : image->stride;
   int lines = KHDISPATCH_WORKSPACE_SIZE / line_size;
   int offset = 0;
   int height = image->height;

   if (FUNC7(image->format))
      lines &= ~63;

   FUNC6(lines > 0);

   while (height > 0) {
      int batch = FUNC5(lines, height);
      uint32_t len = batch * line_size;

      CLIENT_THREAD_STATE_T *thread = FUNC0();
      int adjusted_offset = (image->stride < 0) ? (offset + (batch - 1)) : offset;

      FUNC1(eglIntImageSetColorData_impl,
         thread,
         EGLINTIMAGESETCOLORDATA_ID,
         FUNC2(egl_image),
         FUNC4(image->format),
         FUNC4(0),
         FUNC3(offset),
         FUNC4(image->width),
         FUNC3(batch),
         FUNC4(image->stride),
         (const char *)image->storage + adjusted_offset * image->stride,
         len);

      offset += batch;
      height -= batch;
   }
}