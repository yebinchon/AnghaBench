#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* event_rep; TYPE_1__* event_list; int /*<<< orphan*/  event_sema; } ;
struct TYPE_8__ {int eEvent; struct TYPE_8__* next; } ;
typedef  TYPE_2__ ILCLIENT_T ;

/* Variables and functions */
 int NUM_EVENTS ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  VCOS_LOG_WARN ; 
 int VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

ILCLIENT_T *FUNC8()
{
   ILCLIENT_T *st = FUNC6(sizeof(ILCLIENT_T), "ilclient");
   int i;

   if (!st)
      return NULL;

   FUNC5(VCOS_LOG_CATEGORY, VCOS_LOG_WARN);
   FUNC4("ilclient", VCOS_LOG_CATEGORY);

   FUNC2(st, 0, sizeof(ILCLIENT_T));

   i = FUNC7(&st->event_sema, "il:event", 1);
   FUNC3(i == VCOS_SUCCESS);

   FUNC0(st);
   st->event_list = NULL;
   for (i=0; i<NUM_EVENTS; i++)
   {
      st->event_rep[i].eEvent = -1; // mark as unused
      st->event_rep[i].next = st->event_list;
      st->event_list = st->event_rep+i;
   }
   FUNC1(st);
   return st;
}