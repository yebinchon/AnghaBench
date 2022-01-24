#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  path_content_database; } ;
struct TYPE_8__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  rdb_path ;
struct TYPE_9__ {char* path; char* path_b; char* path_c; } ;
typedef  TYPE_3__ menu_displaylist_info_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_DATABASE_QUERY ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(
      menu_displaylist_info_t *info)
{
   char rdb_path[PATH_MAX_LENGTH];
   int ret                        = -1;
   char *query                    = NULL;
   char *rdb                      = NULL;
   const char *path               = info->path;
   config_file_t *conf            = NULL;
   
   if (!(conf = FUNC1(path)))
      return -1;

   if (!FUNC3(conf, "query", &query))
      goto end;

   if (!FUNC3(conf, "rdb", &rdb))
      goto end;

   rdb_path[0] = '\0';

   {
      settings_t *settings           = FUNC2();
      if (settings)
         FUNC5(rdb_path,
               settings->paths.path_content_database,
               rdb, sizeof(rdb_path));
   }

   if (!FUNC8(info->path_b))
      FUNC6(info->path_b);

   if (!FUNC8(info->path_c))
      FUNC6(info->path_c);

   info->path_b    = FUNC7(info->path);

   if (!FUNC8(info->path))
      FUNC6(info->path);

   info->path_c    = FUNC7(query);
   info->path      = FUNC7(rdb_path);

   ret             = FUNC4(info, DISPLAYLIST_DATABASE_QUERY);

end:
   FUNC0(conf);
   FUNC6(rdb);
   FUNC6(query);
   return ret;
}