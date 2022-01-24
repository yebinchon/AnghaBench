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
struct TYPE_2__ {int is_key; scalar_t__ key_hash; } ;
typedef  TYPE_1__ rcheevos_getvalueud_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,size_t) ; 

__attribute__((used)) static int FUNC1(void* userdata,
      const char* name, size_t length)
{
   rcheevos_getvalueud_t* ud = (rcheevos_getvalueud_t*)userdata;

   ud->is_key = FUNC0(name, length) == ud->key_hash;
   return 0;
}