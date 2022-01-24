#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER ; 
 int /*<<< orphan*/  MMAL_ENCODING_BMP ; 
 int /*<<< orphan*/  MMAL_ENCODING_GIF ; 
 int /*<<< orphan*/  MMAL_ENCODING_JPEG ; 
 int /*<<< orphan*/  MMAL_ENCODING_PNG ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* encoder ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mmalCallback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  sem ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(int argc, const char** argv)
{
   FUNC0();

   if (FUNC6(&sem, "encoder sem", 0) != VCOS_SUCCESS) {
      FUNC2(stderr, "Failed to create semaphore\n");
      FUNC1(1);
   }

   if (FUNC4(&encoder, MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER)
       != MMAL_SUCCESS) {
      FUNC2(stderr, "Failed to create mmal component\n");
      FUNC1(1);
   }
   encoder->callback = mmalCallback;

   // Perform test encodings in various formats
   FUNC3(MMAL_ENCODING_PNG, "out.png");
   FUNC3(MMAL_ENCODING_JPEG, "out.jpg");
   FUNC3(MMAL_ENCODING_GIF, "out.gif");
   FUNC3(MMAL_ENCODING_BMP, "out.bmp");

   FUNC5(encoder);
   FUNC7(&sem);

   return 0;
}