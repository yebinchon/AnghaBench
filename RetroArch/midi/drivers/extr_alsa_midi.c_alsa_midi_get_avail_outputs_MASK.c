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
struct string_list {int dummy; } ;

/* Variables and functions */
 int SND_SEQ_PORT_CAP_SUBS_WRITE ; 
 int SND_SEQ_PORT_CAP_WRITE ; 
 int FUNC0 (struct string_list*,int) ; 

__attribute__((used)) static bool FUNC1(struct string_list *outputs)
{
   return FUNC0(outputs, SND_SEQ_PORT_CAP_WRITE |
         SND_SEQ_PORT_CAP_SUBS_WRITE);
}