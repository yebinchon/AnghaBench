#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_4__ hdr; scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * output; struct TYPE_7__* encoder_component; } ;
typedef  TYPE_1__ RASPISTILL_STATE ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PARAMETER_EXIF_T ;

/* Variables and functions */
 int MAX_EXIF_PAYLOAD_LENGTH ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_PARAMETER_EXIF ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(RASPISTILL_STATE *state, const char *exif_tag)
{
   MMAL_STATUS_T status;
   MMAL_PARAMETER_EXIF_T *exif_param = (MMAL_PARAMETER_EXIF_T*)FUNC0(sizeof(MMAL_PARAMETER_EXIF_T) + MAX_EXIF_PAYLOAD_LENGTH, 1);

   FUNC6(state);
   FUNC6(state->encoder_component);

   // Check to see if the tag is present or is indeed a key=value pair.
   if (!exif_tag || FUNC3(exif_tag, '=') == NULL || FUNC4(exif_tag) > MAX_EXIF_PAYLOAD_LENGTH-1)
      return MMAL_EINVAL;

   exif_param->hdr.id = MMAL_PARAMETER_EXIF;

   FUNC5((char*)exif_param->data, exif_tag, MAX_EXIF_PAYLOAD_LENGTH-1);

   exif_param->hdr.size = sizeof(MMAL_PARAMETER_EXIF_T) + FUNC4((char*)exif_param->data);

   status = FUNC2(state->encoder_component->output[0], &exif_param->hdr);

   FUNC1(exif_param);

   return status;
}