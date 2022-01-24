#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_7__ {int modified; size_t size; int /*<<< orphan*/  conf_path; TYPE_1__* entries; } ;
typedef  TYPE_2__ playlist_t ;
struct TYPE_8__ {int /*<<< orphan*/  writer; int /*<<< orphan*/ * file; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {char* path; char* core_path; int runtime_hours; int runtime_minutes; int runtime_seconds; int last_played_year; int last_played_month; int last_played_day; int last_played_hour; int last_played_minute; int last_played_second; } ;
typedef  int /*<<< orphan*/  RFILE ;
typedef  TYPE_3__ JSONContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSONOutputHandler ; 
 int /*<<< orphan*/  JSON_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

void FUNC23(playlist_t *playlist)
{
   size_t i;
   RFILE *file         = NULL;
   JSONContext context = {0};

   if (!playlist || !playlist->modified)
      return;

   file = FUNC19(playlist->conf_path,
         RETRO_VFS_FILE_ACCESS_WRITE, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      FUNC15("Failed to write to playlist file: %s\n", playlist->conf_path);
      return;
   }

   context.writer = FUNC0(NULL);
   context.file = file;

   if (!context.writer)
   {
      FUNC15("Failed to create JSON writer\n");
      goto end;
   }

   FUNC2(context.writer, JSON_UTF8);
   FUNC3(context.writer, &JSONOutputHandler);
   FUNC4(context.writer, &context);

   FUNC13(context.writer);
   FUNC9(context.writer);
   FUNC11(context.writer, 2);
   FUNC14(context.writer, "version",
         FUNC17("version"), JSON_UTF8);
   FUNC5(context.writer);
   FUNC11(context.writer, 1);
   FUNC14(context.writer, "1.0",
         FUNC17("1.0"), JSON_UTF8);
   FUNC6(context.writer);
   FUNC9(context.writer);
   FUNC11(context.writer, 2);
   FUNC14(context.writer, "items",
         FUNC17("items"), JSON_UTF8);
   FUNC5(context.writer);
   FUNC11(context.writer, 1);
   FUNC12(context.writer);
   FUNC9(context.writer);

   for (i = 0; i < playlist->size; i++)
   {
      FUNC11(context.writer, 4);
      FUNC13(context.writer);

      FUNC9(context.writer);
      FUNC11(context.writer, 6);
      FUNC14(context.writer, "path",
            FUNC17("path"), JSON_UTF8);
      FUNC5(context.writer);
      FUNC11(context.writer, 1);
      FUNC14(context.writer,
            playlist->entries[i].path
            ? playlist->entries[i].path
            : "",
            playlist->entries[i].path
            ? FUNC22(playlist->entries[i].path)
            : 0,
            JSON_UTF8);
      FUNC6(context.writer);

      FUNC9(context.writer);
      FUNC11(context.writer, 6);
      FUNC14(context.writer, "core_path",
            FUNC17("core_path"), JSON_UTF8);
      FUNC5(context.writer);
      FUNC11(context.writer, 1);
      FUNC14(context.writer, playlist->entries[i].core_path,
            FUNC22(playlist->entries[i].core_path), JSON_UTF8);
      FUNC6(context.writer);
      FUNC9(context.writer);

      {
         char tmp[32] = {0};

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_hours);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "runtime_hours",
               FUNC17("runtime_hours"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_minutes);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "runtime_minutes",
               FUNC17("runtime_minutes"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_seconds);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "runtime_seconds",
               FUNC17("runtime_seconds"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_year);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_year",
               FUNC17("last_played_year"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_month);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_month",
               FUNC17("last_played_month"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_day);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_day",
               FUNC17("last_played_day"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp,
               FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_hour);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_hour",
               FUNC17("last_played_hour"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_minute);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_minute",
               FUNC17("last_played_minute"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp, FUNC22(tmp), JSON_UTF8);
         FUNC6(context.writer);
         FUNC9(context.writer);

         FUNC20(tmp, 0, sizeof(tmp));

         FUNC21(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_second);

         FUNC11(context.writer, 6);
         FUNC14(context.writer, "last_played_second",
               FUNC17("last_played_second"), JSON_UTF8);
         FUNC5(context.writer);
         FUNC11(context.writer, 1);
         FUNC10(context.writer, tmp,
               FUNC22(tmp), JSON_UTF8);
         FUNC9(context.writer);
      }

      FUNC11(context.writer, 4);
      FUNC8(context.writer);

      if (i < playlist->size - 1)
         FUNC6(context.writer);

      FUNC9(context.writer);
   }

   FUNC11(context.writer, 2);
   FUNC7(context.writer);
   FUNC9(context.writer);
   FUNC8(context.writer);
   FUNC9(context.writer);
   FUNC1(context.writer);

   playlist->modified = false;

   FUNC16("Written to playlist file: %s\n", playlist->conf_path);
end:
   FUNC18(file);
}