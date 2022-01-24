#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  int /*<<< orphan*/  MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMX_ErrorInvalidComponent ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC2(
  OMX_HANDLETYPE hComponent)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   FUNC1(component);

   FUNC0("hComponent %p", hComponent);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;

   return OMX_ErrorNone;
}