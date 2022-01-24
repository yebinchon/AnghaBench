#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  next; int /*<<< orphan*/  key_size; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ libretrodb_index_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(RFILE *fd, libretrodb_index_t *idx)
{
   uint64_t name_len = 50;
   return FUNC0(fd,
         "name", idx->name, &name_len,
         "key_size", &idx->key_size,
         "next", &idx->next, NULL);
}