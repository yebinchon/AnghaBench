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
struct TYPE_3__ {int /*<<< orphan*/ * environ_get; int /*<<< orphan*/ * args; int /*<<< orphan*/ * argv; scalar_t__ argc; } ;
typedef  TYPE_1__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const char *_path,
      const char *path, const char *entry_label)
{
   content_ctx_info_t content_info;
   content_info.argc                   = 0;
   content_info.argv                   = NULL;
   content_info.args                   = NULL;
   content_info.environ_get            = NULL;
   if (!FUNC0(
            _path, path, entry_label,
            &content_info,
            NULL, NULL))
      return -1;
   return 0;
}