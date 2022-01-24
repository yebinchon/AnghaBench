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
typedef  int /*<<< orphan*/  db_handle_t ;
typedef  int /*<<< orphan*/  database_state_handle_t ;
typedef  int /*<<< orphan*/  database_info_handle_t ;

/* Variables and functions */
#define  DATABASE_TYPE_CRC_LOOKUP 133 
#define  DATABASE_TYPE_ITERATE 132 
#define  DATABASE_TYPE_ITERATE_ARCHIVE 131 
#define  DATABASE_TYPE_ITERATE_LUTRO 130 
#define  DATABASE_TYPE_NONE 129 
#define  DATABASE_TYPE_SERIAL_LOOKUP 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC9(
      db_handle_t *_db,
      database_state_handle_t *db_state,
      database_info_handle_t *db)
{
   const char *name = FUNC0(db);

   if (!name)
      return 0;

   if (FUNC1(db) == DATABASE_TYPE_ITERATE)
      if (FUNC3(name))
         FUNC2(db, DATABASE_TYPE_ITERATE_ARCHIVE);

   switch (FUNC1(db))
   {
      case DATABASE_TYPE_ITERATE:
         return FUNC5(db_state, db, name);
      case DATABASE_TYPE_ITERATE_ARCHIVE:
         return FUNC6(_db, db_state, db, name);
      case DATABASE_TYPE_ITERATE_LUTRO:
         return FUNC7(_db, db_state, db, name);
      case DATABASE_TYPE_SERIAL_LOOKUP:
         return FUNC8(_db, db_state, db, name);
      case DATABASE_TYPE_CRC_LOOKUP:
         return FUNC4(_db, db_state, db, name, NULL);
      case DATABASE_TYPE_NONE:
      default:
         break;
   }

   return 0;
}