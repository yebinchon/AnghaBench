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
struct TYPE_5__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/  (* cb ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ connection; } ;
typedef  TYPE_2__ http_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
      http_handle_t *http)
{
   if (FUNC0(http->connection.handle))
   {
      if (http->connection.handle && http->connection.cb)
         http->connection.cb(http, 0);
   }

   FUNC1(http->connection.handle);

   http->connection.handle = NULL;

   return 0;
}