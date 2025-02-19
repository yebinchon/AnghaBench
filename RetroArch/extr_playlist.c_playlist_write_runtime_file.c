
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_7__ {int modified; size_t size; int conf_path; TYPE_1__* entries; } ;
typedef TYPE_2__ playlist_t ;
struct TYPE_8__ {int writer; int * file; int member_0; } ;
struct TYPE_6__ {char* path; char* core_path; int runtime_hours; int runtime_minutes; int runtime_seconds; int last_played_year; int last_played_month; int last_played_day; int last_played_hour; int last_played_minute; int last_played_second; } ;
typedef int RFILE ;
typedef TYPE_3__ JSONContext ;


 int JSONOutputHandler ;
 int JSON_UTF8 ;
 int JSON_Writer_Create (int *) ;
 int JSON_Writer_Free (int ) ;
 int JSON_Writer_SetOutputEncoding (int ,int ) ;
 int JSON_Writer_SetOutputHandler (int ,int *) ;
 int JSON_Writer_SetUserData (int ,TYPE_3__*) ;
 int JSON_Writer_WriteColon (int ) ;
 int JSON_Writer_WriteComma (int ) ;
 int JSON_Writer_WriteEndArray (int ) ;
 int JSON_Writer_WriteEndObject (int ) ;
 int JSON_Writer_WriteNewLine (int ) ;
 int JSON_Writer_WriteNumber (int ,char*,int ,int ) ;
 int JSON_Writer_WriteSpace (int ,int) ;
 int JSON_Writer_WriteStartArray (int ) ;
 int JSON_Writer_WriteStartObject (int ) ;
 int JSON_Writer_WriteString (int ,char*,int ,int ) ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,int ) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int STRLEN_CONST (char*) ;
 int filestream_close (int *) ;
 int * filestream_open (int ,int ,int ) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

void playlist_write_runtime_file(playlist_t *playlist)
{
   size_t i;
   RFILE *file = ((void*)0);
   JSONContext context = {0};

   if (!playlist || !playlist->modified)
      return;

   file = filestream_open(playlist->conf_path,
         RETRO_VFS_FILE_ACCESS_WRITE, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      RARCH_ERR("Failed to write to playlist file: %s\n", playlist->conf_path);
      return;
   }

   context.writer = JSON_Writer_Create(((void*)0));
   context.file = file;

   if (!context.writer)
   {
      RARCH_ERR("Failed to create JSON writer\n");
      goto end;
   }

   JSON_Writer_SetOutputEncoding(context.writer, JSON_UTF8);
   JSON_Writer_SetOutputHandler(context.writer, &JSONOutputHandler);
   JSON_Writer_SetUserData(context.writer, &context);

   JSON_Writer_WriteStartObject(context.writer);
   JSON_Writer_WriteNewLine(context.writer);
   JSON_Writer_WriteSpace(context.writer, 2);
   JSON_Writer_WriteString(context.writer, "version",
         STRLEN_CONST("version"), JSON_UTF8);
   JSON_Writer_WriteColon(context.writer);
   JSON_Writer_WriteSpace(context.writer, 1);
   JSON_Writer_WriteString(context.writer, "1.0",
         STRLEN_CONST("1.0"), JSON_UTF8);
   JSON_Writer_WriteComma(context.writer);
   JSON_Writer_WriteNewLine(context.writer);
   JSON_Writer_WriteSpace(context.writer, 2);
   JSON_Writer_WriteString(context.writer, "items",
         STRLEN_CONST("items"), JSON_UTF8);
   JSON_Writer_WriteColon(context.writer);
   JSON_Writer_WriteSpace(context.writer, 1);
   JSON_Writer_WriteStartArray(context.writer);
   JSON_Writer_WriteNewLine(context.writer);

   for (i = 0; i < playlist->size; i++)
   {
      JSON_Writer_WriteSpace(context.writer, 4);
      JSON_Writer_WriteStartObject(context.writer);

      JSON_Writer_WriteNewLine(context.writer);
      JSON_Writer_WriteSpace(context.writer, 6);
      JSON_Writer_WriteString(context.writer, "path",
            STRLEN_CONST("path"), JSON_UTF8);
      JSON_Writer_WriteColon(context.writer);
      JSON_Writer_WriteSpace(context.writer, 1);
      JSON_Writer_WriteString(context.writer,
            playlist->entries[i].path
            ? playlist->entries[i].path
            : "",
            playlist->entries[i].path
            ? strlen(playlist->entries[i].path)
            : 0,
            JSON_UTF8);
      JSON_Writer_WriteComma(context.writer);

      JSON_Writer_WriteNewLine(context.writer);
      JSON_Writer_WriteSpace(context.writer, 6);
      JSON_Writer_WriteString(context.writer, "core_path",
            STRLEN_CONST("core_path"), JSON_UTF8);
      JSON_Writer_WriteColon(context.writer);
      JSON_Writer_WriteSpace(context.writer, 1);
      JSON_Writer_WriteString(context.writer, playlist->entries[i].core_path,
            strlen(playlist->entries[i].core_path), JSON_UTF8);
      JSON_Writer_WriteComma(context.writer);
      JSON_Writer_WriteNewLine(context.writer);

      {
         char tmp[32] = {0};

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_hours);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "runtime_hours",
               STRLEN_CONST("runtime_hours"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_minutes);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "runtime_minutes",
               STRLEN_CONST("runtime_minutes"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].runtime_seconds);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "runtime_seconds",
               STRLEN_CONST("runtime_seconds"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_year);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_year",
               STRLEN_CONST("last_played_year"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_month);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_month",
               STRLEN_CONST("last_played_month"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_day);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_day",
               STRLEN_CONST("last_played_day"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp,
               strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_hour);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_hour",
               STRLEN_CONST("last_played_hour"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_minute);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_minute",
               STRLEN_CONST("last_played_minute"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp, strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteComma(context.writer);
         JSON_Writer_WriteNewLine(context.writer);

         memset(tmp, 0, sizeof(tmp));

         snprintf(tmp, sizeof(tmp), "%u", playlist->entries[i].last_played_second);

         JSON_Writer_WriteSpace(context.writer, 6);
         JSON_Writer_WriteString(context.writer, "last_played_second",
               STRLEN_CONST("last_played_second"), JSON_UTF8);
         JSON_Writer_WriteColon(context.writer);
         JSON_Writer_WriteSpace(context.writer, 1);
         JSON_Writer_WriteNumber(context.writer, tmp,
               strlen(tmp), JSON_UTF8);
         JSON_Writer_WriteNewLine(context.writer);
      }

      JSON_Writer_WriteSpace(context.writer, 4);
      JSON_Writer_WriteEndObject(context.writer);

      if (i < playlist->size - 1)
         JSON_Writer_WriteComma(context.writer);

      JSON_Writer_WriteNewLine(context.writer);
   }

   JSON_Writer_WriteSpace(context.writer, 2);
   JSON_Writer_WriteEndArray(context.writer);
   JSON_Writer_WriteNewLine(context.writer);
   JSON_Writer_WriteEndObject(context.writer);
   JSON_Writer_WriteNewLine(context.writer);
   JSON_Writer_Free(context.writer);

   playlist->modified = 0;

   RARCH_LOG("Written to playlist file: %s\n", playlist->conf_path);
end:
   filestream_close(file);
}
