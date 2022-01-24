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
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  registry_id; } ;
typedef  int /*<<< orphan*/  OMX_U8 ;
typedef  scalar_t__ OMX_U32 ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  int /*<<< orphan*/  MMALOMX_ROLE_T ;
typedef  TYPE_1__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  OMX_ErrorInvalidComponent ; 
 int /*<<< orphan*/  OMX_ErrorInvalidState ; 
 int /*<<< orphan*/  OMX_ErrorNoMore ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 
 scalar_t__ OMX_StateInvalid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC4(
   OMX_HANDLETYPE hComponent,
   OMX_U8 *cRole,
   OMX_U32 nIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMALOMX_ROLE_T role;

   FUNC0("hComponent %p, cRole %p, nIndex %i",
             hComponent, cRole, (int)nIndex);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   role = FUNC1(component->registry_id, nIndex);
   if (!role)
      return OMX_ErrorNoMore;
   if (!FUNC2(role))
      return OMX_ErrorNoMore;

   FUNC3((char *)cRole, FUNC2(role));
   return OMX_ErrorNone;
}