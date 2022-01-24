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
struct TYPE_3__ {scalar_t__ state; scalar_t__ ports_num; } ;
typedef  scalar_t__ OMX_U32 ;
typedef  int /*<<< orphan*/  OMX_STATETYPE ;
typedef  int /*<<< orphan*/  OMX_PTR ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  int /*<<< orphan*/  OMX_COMMANDTYPE ;
typedef  TYPE_1__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ OMX_ALL ; 
 int /*<<< orphan*/  OMX_CommandFlush ; 
 int /*<<< orphan*/  OMX_CommandMarkBuffer ; 
 int /*<<< orphan*/  OMX_CommandPortDisable ; 
 int /*<<< orphan*/  OMX_CommandPortEnable ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 int /*<<< orphan*/  OMX_ErrorBadPortIndex ; 
 int /*<<< orphan*/  OMX_ErrorInvalidComponent ; 
 int /*<<< orphan*/  OMX_ErrorInvalidState ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_ErrorNotImplemented ; 
 scalar_t__ OMX_StateInvalid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC5(
   OMX_HANDLETYPE hComponent,
   OMX_COMMANDTYPE Cmd,
   OMX_U32 nParam1,
   OMX_PTR pCmdData)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   OMX_ERRORTYPE status = OMX_ErrorNone;

   FUNC0("hComponent %p, Cmd %i (%s), nParam1 %i (%s), pCmdData %p",
             hComponent, Cmd, FUNC1(Cmd), (int)nParam1,
             Cmd == OMX_CommandStateSet ? FUNC4((OMX_STATETYPE)nParam1) : "",
             pCmdData);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   /* Sanity check port index */
   if (Cmd == OMX_CommandFlush || Cmd == OMX_CommandMarkBuffer ||
       Cmd == OMX_CommandPortEnable || Cmd == OMX_CommandPortDisable)
   {
      if (nParam1 != OMX_ALL && nParam1 >= component->ports_num)
         return OMX_ErrorBadPortIndex;
   }

   if (Cmd == OMX_CommandStateSet ||
       Cmd == OMX_CommandFlush ||
       Cmd == OMX_CommandPortEnable ||
       Cmd == OMX_CommandPortDisable)
   {
      status = FUNC3(component, Cmd, nParam1);
   }
   else if (Cmd == OMX_CommandMarkBuffer)
   {
      status = FUNC2(hComponent, nParam1, pCmdData);
   }
   else
   {
      status = OMX_ErrorNotImplemented;
   }

   return status;
}