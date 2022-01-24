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
struct TYPE_9__ {int /*<<< orphan*/  ilcs; } ;
struct TYPE_8__ {int /*<<< orphan*/  err; int /*<<< orphan*/  func; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* EmptyThisBuffer ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ OMX_COMPONENTTYPE ;
typedef  int /*<<< orphan*/  OMX_BUFFERHEADERTYPE ;
typedef  TYPE_2__ IL_RESPONSE_HEADER_T ;
typedef  TYPE_3__ ILCS_COMMON_T ;

/* Variables and functions */
 int /*<<< orphan*/  IL_EMPTY_THIS_BUFFER ; 
 int /*<<< orphan*/  OMX_ErrorHardware ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,void*,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_RESPONSE_HEADER_T *ret = resp;
   OMX_COMPONENTTYPE *pComp;
   OMX_BUFFERHEADERTYPE *pHeader;

   pHeader = FUNC0(st->ilcs, call, clen, &pComp);

   *rlen = sizeof(IL_RESPONSE_HEADER_T);
   ret->func = IL_EMPTY_THIS_BUFFER;

   if(pHeader)
   {
      FUNC3(FUNC1(pHeader));
      ret->err = pComp->EmptyThisBuffer(pComp, pHeader);
   }
   else
      ret->err = OMX_ErrorHardware;
}