#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  query ;
struct TYPE_17__ {int /*<<< orphan*/  scan_without_core_match; } ;
typedef  TYPE_3__ db_handle_t ;
struct TYPE_18__ {size_t list_index; int crc; size_t entry_index; int archive_crc; TYPE_8__* info; TYPE_2__* list; } ;
typedef  TYPE_4__ database_state_handle_t ;
struct TYPE_19__ {scalar_t__ crc32; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ database_info_t ;
typedef  int /*<<< orphan*/  database_info_handle_t ;
struct TYPE_20__ {size_t count; TYPE_5__* list; } ;
struct TYPE_16__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,char const*) ; 
 int FUNC5 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int FUNC7 (TYPE_4__*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,int) ; 

__attribute__((used)) static int FUNC12(
      db_handle_t *_db,
      database_state_handle_t *db_state,
      database_info_handle_t *db,
      const char *name,
      const char *archive_entry)
{

   if (!db_state->list ||
         (unsigned)db_state->list_index == (unsigned)db_state->list->size)
      return FUNC4(db, db_state, name);

   /* archive did not contain a CRC for this entry, or the file is empty */
   if (!db_state->crc)
   {
      db_state->crc = FUNC8(name);

      if (!db_state->crc)
         return FUNC7(db_state);
   }

   if (db_state->entry_index == 0)
   {
      char query[50];

      query[0] = '\0';

      if (!_db->scan_without_core_match)
      {
         /* don't scan files that can't be in this database.
          *
          * Could be because of:
          * - A matching core missing
          * - Incompatible file extension */
         if (!FUNC2(
               db_state->list->elems[db_state->list_index].data, name))
            return FUNC7(db_state);

         if (!FUNC10(name))
         {
            if (FUNC1(
                  db_state->list->elems[db_state->list_index].data))
               return FUNC7(db_state);
         }
      }

      FUNC11(query, sizeof(query),
            "{crc:or(b\"%08X\",b\"%08X\")}",
            db_state->crc, db_state->archive_crc);

      FUNC6(db_state, query);
   }

   if (db_state->info)
   {
      database_info_t *db_info_entry =
         &db_state->info->list[db_state->entry_index];

      if (db_info_entry && db_info_entry->crc32)
      {
#if 0
         RARCH_LOG("CRC32: 0x%08X , entry CRC32: 0x%08X (%s).\n",
               db_state->crc, db_info_entry->crc32, db_info_entry->name);
#endif
         if (db_state->archive_crc == db_info_entry->crc32)
            return FUNC5(
                  _db,
                  db_state, db, NULL);
         if (db_state->crc == db_info_entry->crc32)
            return FUNC5(
                  _db,
                  db_state, db, archive_entry);
      }
   }

   db_state->entry_index++;

   if (db_state->info)
   {
      if (db_state->entry_index >= db_state->info->count)
         return FUNC7(db_state);
   }

   /* If we haven't reached the end of the database list yet,
    * continue iterating. */
   if (db_state->list_index < db_state->list->size)
      return 1;

   FUNC3(db_state->info);

   if (db_state->info)
      FUNC9(db_state->info);

   return 0;
}