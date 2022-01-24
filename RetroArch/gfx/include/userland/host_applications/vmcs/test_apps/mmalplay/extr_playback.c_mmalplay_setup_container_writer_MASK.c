#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int size; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {char const* name; int /*<<< orphan*/  control; int /*<<< orphan*/  input_num; } ;
struct TYPE_8__ {TYPE_4__ hdr; int /*<<< orphan*/  uri; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PARAMETER_URI_T ;
typedef  int /*<<< orphan*/  MMAL_PARAMETER_HEADER_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMALPLAY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_PARAMETER_URI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC8(MMALPLAY_T *ctx,
   MMAL_COMPONENT_T *writer, const char *uri)
{
   MMAL_PARAMETER_URI_T *param = 0;
   unsigned int param_size;
   MMAL_STATUS_T status = MMAL_EINVAL;
   size_t uri_len;
   FUNC1(ctx);

   if(!writer->input_num)
   {
      FUNC0("%s doesn't have input ports", writer->name);
      goto error;
   }

   /* Open the given URI */
   uri_len = FUNC6(uri);
   param_size = sizeof(MMAL_PARAMETER_HEADER_T) + uri_len;
   param = FUNC3(param_size);
   if(!param)
   {
      FUNC0("out of memory");
      status = MMAL_ENOMEM;
      goto error;
   }
   FUNC4(param, 0, param_size);
   param->hdr.id = MMAL_PARAMETER_URI;
   param->hdr.size = param_size;
   FUNC7(param->uri, uri, uri_len + 1, 0);
   status = FUNC5(writer->control, &param->hdr);
   if(status != MMAL_SUCCESS)
   {
      FUNC0("could not open file %s", uri);
      goto error;
   }

 error:
   if(param)
      FUNC2(param);
   return status;
}