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
typedef  int /*<<< orphan*/  libretrodb_t ;
typedef  int /*<<< orphan*/  libretrodb_query_t ;
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(libretrodb_t *db,
      libretrodb_cursor_t *cur, const char *path, const char *query)
{
   const char *error     = NULL;
   libretrodb_query_t *q = NULL;

   if ((FUNC2(path, db)) != 0)
      return -1;

   if (query)
      q = (libretrodb_query_t*)FUNC3(db, query,
      FUNC5(query), &error);

   if (error)
      goto error;
   if ((FUNC1(db, cur, q)) != 0)
      goto error;

   if (q)
      FUNC4(q);

   return 0;

error:
   if (q)
      FUNC4(q);
   FUNC0(db);

   return -1;
}