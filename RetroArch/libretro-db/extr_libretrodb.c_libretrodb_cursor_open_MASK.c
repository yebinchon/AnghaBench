#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ libretrodb_t ;
typedef  int /*<<< orphan*/  libretrodb_query_t ;
struct TYPE_7__ {int is_valid; int /*<<< orphan*/ * query; TYPE_1__* db; int /*<<< orphan*/ * fd; } ;
typedef  TYPE_2__ libretrodb_cursor_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(libretrodb_t *db, libretrodb_cursor_t *cursor,
      libretrodb_query_t *q)
{
   RFILE *fd = NULL;
   if (!db || FUNC3(db->path))
      return -errno;

   fd = FUNC0(db->path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      return -errno;

   cursor->fd       = fd;
   cursor->db       = db;
   cursor->is_valid = 1;
   FUNC1(cursor);
   cursor->query    = q;

   if (q)
      FUNC2(q);

   return 0;
}