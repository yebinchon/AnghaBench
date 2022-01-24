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
typedef  enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
struct TYPE_3__ {int /*<<< orphan*/ * environ_get; int /*<<< orphan*/ * args; int /*<<< orphan*/ * argv; scalar_t__ argc; } ;
typedef  TYPE_1__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const char *_path, unsigned _type)
{
   content_ctx_info_t content_info;
   content_info.argc                   = 0;
   content_info.argv                   = NULL;
   content_info.args                   = NULL;
   content_info.environ_get            = NULL;
   if (!FUNC1(
            _path, &content_info,
            (enum rarch_core_type)_type, NULL, NULL))
      return -1;
   FUNC0(_path);
   return 0;
}