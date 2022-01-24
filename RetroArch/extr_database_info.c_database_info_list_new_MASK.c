#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libretrodb_t ;
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;
struct TYPE_10__ {unsigned int count; struct TYPE_10__* list; struct TYPE_10__* serial; struct TYPE_10__* rom_name; struct TYPE_10__* publisher; struct TYPE_10__* pegi_rating; struct TYPE_10__* origin; struct TYPE_10__* name; struct TYPE_10__* genre; struct TYPE_10__* franchise; struct TYPE_10__* esrb_rating; struct TYPE_10__* enhancement_hw; struct TYPE_10__* elspa_rating; struct TYPE_10__* edge_magazine_review; struct TYPE_10__* description; struct TYPE_10__* cero_rating; struct TYPE_10__* bbfc_rating; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ database_info_t ;
typedef  TYPE_1__ database_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,unsigned int) ; 

database_info_list_t *FUNC12(
      const char *rdb_path, const char *query)
{
   int ret                                  = 0;
   unsigned k                               = 0;
   database_info_t *database_info           = NULL;
   database_info_list_t *database_info_list = NULL;
   libretrodb_t *db                         = FUNC8();
   libretrodb_cursor_t *cur                 = FUNC6();

   if (!db || !cur)
      goto end;

   if ((FUNC2(db, cur, rdb_path, query) != 0))
      goto end;

   database_info_list = (database_info_list_t*)
      FUNC9(sizeof(*database_info_list));

   if (!database_info_list)
      goto end;

   database_info_list->count  = 0;
   database_info_list->list   = NULL;

   while (ret != -1)
   {
      database_info_t db_info = {0};
      ret = FUNC1(cur, &db_info);

      if (ret == 0)
      {
         database_info_t *db_ptr  = NULL;
         database_info_t *new_ptr = (database_info_t*)
            FUNC11(database_info, (k+1) * sizeof(database_info_t));

         if (!new_ptr)
         {
            if (db_info.bbfc_rating)
               FUNC4(db_info.bbfc_rating);
            if (db_info.cero_rating)
               FUNC4(db_info.cero_rating);
            if (db_info.description)
               FUNC4(db_info.description);
            if (db_info.edge_magazine_review)
               FUNC4(db_info.edge_magazine_review);
            if (db_info.elspa_rating)
               FUNC4(db_info.elspa_rating);
            if (db_info.enhancement_hw)
               FUNC4(db_info.enhancement_hw);
            if (db_info.esrb_rating)
               FUNC4(db_info.esrb_rating);
            if (db_info.franchise)
               FUNC4(db_info.franchise);
            if (db_info.genre)
               FUNC4(db_info.genre);
            if (db_info.name)
               FUNC4(db_info.name);
            if (db_info.origin)
               FUNC4(db_info.origin);
            if (db_info.pegi_rating)
               FUNC4(db_info.pegi_rating);
            if (db_info.publisher)
               FUNC4(db_info.publisher);
            if (db_info.rom_name)
               FUNC4(db_info.rom_name);
            if (db_info.serial)
               FUNC4(db_info.serial);
            FUNC3(database_info_list);
            FUNC4(database_info);
            FUNC4(database_info_list);
            database_info_list = NULL;
            goto end;
         }

         database_info = new_ptr;
         db_ptr        = &database_info[k];

         FUNC10(db_ptr, &db_info, sizeof(*db_ptr));

         k++;
      }
   }

   database_info_list->list  = database_info;
   database_info_list->count = k;

end:
   if (db)
   {
      FUNC0(db, cur);
      FUNC7(db);
   }
   if (cur)
      FUNC5(cur);

   return database_info_list;
}