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
typedef  scalar_t__ uint64_t ;
struct rmsgpack_dom_value {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ libretrodb_t ;
struct TYPE_7__ {scalar_t__ next; scalar_t__ key_size; } ;
typedef  TYPE_2__ libretrodb_index_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RETRO_VFS_SEEK_POSITION_START ; 
 int FUNC0 (void*,void const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,TYPE_2__*) ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rmsgpack_dom_value*) ; 

int FUNC7(libretrodb_t *db, const char *index_name,
      const void *key, struct rmsgpack_dom_value *out)
{
   libretrodb_index_t idx;
   int rv;
   void *buff;
   uint64_t offset;
   ssize_t bufflen, nread = 0;

   if (FUNC4(db, index_name, &idx) < 0)
      return -1;

   bufflen = idx.next;
   buff = FUNC5(bufflen);

   if (!buff)
      return -ENOMEM;

   while (nread < bufflen)
   {
      void *buff_ = (uint64_t *)buff + nread;
      rv = (int)FUNC1(db->fd, buff_, bufflen - nread);

      if (rv <= 0)
      {
         FUNC3(buff);
         return -errno;
      }
      nread += rv;
   }

   rv = FUNC0(buff, key, db->count, (ssize_t)idx.key_size, &offset);
   FUNC3(buff);

   if (rv == 0)
      FUNC2(db->fd, (ssize_t)offset,
            RETRO_VFS_SEEK_POSITION_START);

   return FUNC6(db->fd, out);
}