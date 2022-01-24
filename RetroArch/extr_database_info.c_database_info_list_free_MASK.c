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
struct TYPE_5__ {struct TYPE_5__* md5; struct TYPE_5__* sha1; struct TYPE_5__* bbfc_rating; struct TYPE_5__* esrb_rating; struct TYPE_5__* elspa_rating; struct TYPE_5__* enhancement_hw; struct TYPE_5__* pegi_rating; struct TYPE_5__* cero_rating; struct TYPE_5__* edge_magazine_review; struct TYPE_5__* franchise; struct TYPE_5__* origin; int /*<<< orphan*/ * developer; struct TYPE_5__* publisher; struct TYPE_5__* description; struct TYPE_5__* genre; struct TYPE_5__* serial; struct TYPE_5__* rom_name; struct TYPE_5__* name; } ;
typedef  TYPE_1__ database_info_t ;
struct TYPE_6__ {size_t count; TYPE_1__* list; } ;
typedef  TYPE_2__ database_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(database_info_list_t *database_info_list)
{
   size_t i;

   if (!database_info_list)
      return;

   for (i = 0; i < database_info_list->count; i++)
   {
      database_info_t *info = &database_info_list->list[i];

      if (info->name)
         FUNC0(info->name);
      if (info->rom_name)
         FUNC0(info->rom_name);
      if (info->serial)
         FUNC0(info->serial);
      if (info->genre)
         FUNC0(info->genre);
      if (info->description)
         FUNC0(info->description);
      if (info->publisher)
         FUNC0(info->publisher);
      if (info->developer)
         FUNC1(info->developer);
      info->developer = NULL;
      if (info->origin)
         FUNC0(info->origin);
      if (info->franchise)
         FUNC0(info->franchise);
      if (info->edge_magazine_review)
         FUNC0(info->edge_magazine_review);

      if (info->cero_rating)
         FUNC0(info->cero_rating);
      if (info->pegi_rating)
         FUNC0(info->pegi_rating);
      if (info->enhancement_hw)
         FUNC0(info->enhancement_hw);
      if (info->elspa_rating)
         FUNC0(info->elspa_rating);
      if (info->esrb_rating)
         FUNC0(info->esrb_rating);
      if (info->bbfc_rating)
         FUNC0(info->bbfc_rating);
      if (info->sha1)
         FUNC0(info->sha1);
      if (info->md5)
         FUNC0(info->md5);
   }

   FUNC0(database_info_list->list);
}