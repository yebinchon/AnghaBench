#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tmp ;
struct string_list {int size; TYPE_1__* elems; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  include_path ;
typedef  int /*<<< orphan*/  include_file ;
struct TYPE_2__ {char* data; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,unsigned int,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char) ; 
 struct string_list* FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char const*,int /*<<< orphan*/ ) ; 

bool FUNC14(const char *path,
      struct string_list *output, bool root_file)
{
   char tmp[PATH_MAX_LENGTH];
   union string_list_elem_attr attr;
   size_t i;
   const char *basename      = NULL;
   uint8_t *buf              = NULL;
   int64_t buf_len           = 0;
   struct string_list *lines = NULL;

   tmp[0] = '\0';
   attr.i = 0;

   /* Sanity check */
   if (FUNC8(path) || !output)
      return false;

   basename      = FUNC6(path);

   if (FUNC8(basename))
      return false;

   /* Read file contents */
   if (!FUNC2(path, (void**)&buf, &buf_len))
   {
      FUNC0("Failed to open shader file: \"%s\".\n", path);
      return false;
   }

   if (buf_len > 0)
   {
      /* Remove Windows '\r' chars if we encounter them */
      FUNC11((char*)buf, '\r');

      /* Split into lines
       * (Blank lines must be included) */
      lines = FUNC12((char*)buf, "\n");
   }

   /* Buffer is no longer required - clean up */
   if (buf)
      FUNC4(buf);

   /* Sanity check */
   if (!lines)
      return false;

   if (lines->size < 1)
      goto error;

   /* If this is the 'parent' shader file, ensure that first
    * line is a 'VERSION' string */
   if (root_file)
   {
      const char *line = lines->elems[0].data;

      if (FUNC13("#version ", line, FUNC1("#version ")))
      {
         FUNC0("First line of the shader must contain a valid #version string.\n");
         goto error;
      }

      if (!FUNC9(output, line, attr))
         goto error;

      /* Allows us to use #line to make dealing with shader errors easier.
       * This is supported by glslang, but since we always use glslang statically,
       * this is fine. */

      if (!FUNC9(output, "#extension GL_GOOGLE_cpp_style_line_directive : require", attr))
         goto error;
   }

   /* At least VIM treats the first line as line #1,
    * so offset everything by one. */
   FUNC7(tmp, sizeof(tmp), "#line %u \"%s\"", root_file ? 2 : 1, basename);
   if (!FUNC9(output, tmp, attr))
      goto error;

   /* Loop through lines of file */
   for (i = root_file ? 1 : 0; i < lines->size; i++)
   {
      unsigned push_line = 0;
      const char *line   = lines->elems[i].data;

      /* Check for 'include' statements */
      if (!FUNC13("#include ", line, FUNC1("#include ")))
      {
         char include_file[PATH_MAX_LENGTH];
         char include_path[PATH_MAX_LENGTH];

         include_file[0] = '\0';
         include_path[0] = '\0';

         /* Build include file path */
         FUNC5(line, include_file, sizeof(include_file));

         if (FUNC8(include_file))
         {
            FUNC0("Invalid include statement \"%s\".\n", line);
            goto error;
         }

         FUNC3(
               include_path, path, include_file, sizeof(include_path));

         /* Parse include file */
         if (!FUNC14(include_path, output, false))
            goto error;

         /* After including a file, use line directive
          * to pull it back to current file. */
         push_line = 1;
      }
      else if (!FUNC13("#endif", line, FUNC1("#endif")) ||
               !FUNC13("#pragma", line, FUNC1("#pragma")))
      {
         /* #line seems to be ignored if preprocessor tests fail,
          * so we should reapply #line after each #endif.
          * Add extra offset here since we're setting #line
          * for the line after this one.
          */
         push_line = 2;
         if (!FUNC9(output, line, attr))
            goto error;
      }
      else
         if (!FUNC9(output, line, attr))
            goto error;

      if (push_line != 0)
      {
         FUNC7(tmp, sizeof(tmp), "#line %u \"%s\"",
               (unsigned)(i + push_line), basename);
         if (!FUNC9(output, tmp, attr))
            goto error;
      }
   }

   FUNC10(lines);

   return true;

error:

   if (lines)
      FUNC10(lines);

   return false;
}