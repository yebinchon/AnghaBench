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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int msgid; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
struct TYPE_8__ {TYPE_2__ msg; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
typedef  TYPE_4__ MMAL_DBG_ENTRY_T ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int,char*) ; 

__attribute__((used)) static void FUNC2(MMAL_DBG_ENTRY_T *entry,
                   char *buf,
                   size_t buflen)
{
   uint32_t id = entry->u.msg.header.msgid;
   FUNC1(buf,buflen,"msgid %d (%s)", id, FUNC0(id));
}