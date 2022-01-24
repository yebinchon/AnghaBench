#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* list; } ;
typedef  TYPE_2__ file_list_t ;
struct TYPE_5__ {char* alt; char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,size_t,char const**,char const**,unsigned int*,size_t*) ; 

void FUNC1(const file_list_t *list, size_t idx,
      const char **path, const char **label, unsigned *file_type,
      size_t *entry_idx, const char **alt)
{
   FUNC0(list, idx, path, label, file_type, entry_idx);
   if (list && alt)
      *alt = list->list[idx].alt 
         ? list->list[idx].alt 
         : list->list[idx].path;
}