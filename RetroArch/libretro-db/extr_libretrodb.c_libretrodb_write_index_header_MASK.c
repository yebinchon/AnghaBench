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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  next; int /*<<< orphan*/  key_size; } ;
typedef  TYPE_1__ libretrodb_index_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(RFILE *fd, libretrodb_index_t *idx)
{
   FUNC1(fd, 3);
   FUNC2(fd, "name", FUNC0("name"));
   FUNC2(fd, idx->name, (uint32_t)FUNC4(idx->name));
   FUNC2(fd, "key_size", (uint32_t)FUNC0("key_size"));
   FUNC3(fd, idx->key_size);
   FUNC2(fd, "next", FUNC0("next"));
   FUNC3(fd, idx->next);
}