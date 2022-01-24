#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  image_fx ;
struct TYPE_9__ {int /*<<< orphan*/  control; } ;
struct TYPE_7__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; int /*<<< orphan*/  hdr; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PARAM_IMAGEFX_T ;
typedef  TYPE_2__ MMAL_PARAMETER_IMAGEFX_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_IMAGE_EFFECT ; 
#define  MMAL_PARAM_IMAGEFX_NEGATIVE 130 
#define  MMAL_PARAM_IMAGEFX_NONE 129 
#define  MMAL_PARAM_IMAGEFX_SOLARIZE 128 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC5(MMAL_COMPONENT_T *camera)
{
   static const MMAL_PARAM_IMAGEFX_T effects[] = {
               MMAL_PARAM_IMAGEFX_NONE,
               MMAL_PARAM_IMAGEFX_NEGATIVE,
               MMAL_PARAM_IMAGEFX_SOLARIZE
            };
   static unsigned int index;
   MMAL_PARAMETER_IMAGEFX_T image_fx = {{ MMAL_PARAMETER_IMAGE_EFFECT, sizeof(image_fx)},0};
   MMAL_PARAMETER_IMAGEFX_T image_fx_check = {{ MMAL_PARAMETER_IMAGE_EFFECT, sizeof(image_fx)},0};
   MMAL_STATUS_T result;

   index++;
   if(index >= FUNC1(effects))
      index = 0;
   image_fx.value = effects[index];
   result = FUNC4(camera->control, &image_fx.hdr);
   if (result != MMAL_SUCCESS)
   {
      FUNC0("Failed to set image effect, %d", result);
      return MMAL_FALSE;
   }
   result = FUNC3(camera->control, &image_fx_check.hdr);
   if (result != MMAL_SUCCESS)
   {
      FUNC0("Failed to retrieve image effect, %d", result);
      return MMAL_FALSE;
   }
   if (FUNC2(&image_fx, &image_fx_check, sizeof(image_fx)) != 0)
   {
      FUNC0("Image effect set (%d) was not retrieved (%d)", image_fx.value, image_fx_check.value);
      return MMAL_FALSE;
   }
   return MMAL_TRUE;
}