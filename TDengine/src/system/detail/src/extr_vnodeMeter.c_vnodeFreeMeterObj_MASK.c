#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ ** meterList; } ;
struct TYPE_6__ {size_t vnode; size_t sid; int /*<<< orphan*/  meterId; } ;
typedef  TYPE_1__ SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* vnodeList ; 

void FUNC5(SMeterObj *pObj) {
  if (pObj == NULL) return;

  FUNC0("vid:%d sid:%d id:%s, meter is cleaned up", pObj->vnode, pObj->sid, pObj->meterId);

  FUNC4(pObj);
  if (vnodeList[pObj->vnode].meterList != NULL) {
    vnodeList[pObj->vnode].meterList[pObj->sid] = NULL;
  }

  FUNC1(pObj->meterId, 0, FUNC2(pObj->meterId));
  FUNC3(pObj);
}