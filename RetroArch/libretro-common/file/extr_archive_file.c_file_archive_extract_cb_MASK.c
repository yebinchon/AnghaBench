#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wanted_file ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct archive_extract_userdata {char const* archive_path; int found_file; int /*<<< orphan*/  extracted_file_path; int /*<<< orphan*/  first_extracted_file_path; int /*<<< orphan*/  extraction_directory; int /*<<< orphan*/  ext; } ;
typedef  int /*<<< orphan*/  new_path ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 scalar_t__ FUNC0 (char*,char const*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct archive_extract_userdata*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC10(const char *name, const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode, uint32_t csize, uint32_t size,
      uint32_t checksum, struct archive_extract_userdata *userdata)
{
   const char *ext                   = FUNC5(name);

   /* Extract first file that matches our list. */
   if (ext && FUNC8(userdata->ext, ext))
   {
      char new_path[PATH_MAX_LENGTH];
      char wanted_file[PATH_MAX_LENGTH];
      const char *delim                 = NULL;

      new_path[0] = wanted_file[0]      = '\0';

      if (userdata->extraction_directory)
         FUNC1(new_path, userdata->extraction_directory,
               FUNC3(name), sizeof(new_path));
      else
         FUNC2(new_path, userdata->archive_path,
               FUNC3(name), sizeof(new_path));

      userdata->first_extracted_file_path = FUNC6(new_path);

      delim = FUNC4(userdata->archive_path);

      if (delim)
      {
         FUNC9(wanted_file, delim + 1, sizeof(wanted_file));

         if (!FUNC7(userdata->extracted_file_path,
                   wanted_file))
           return 1; /* keep searching for the right file */
      }
      else
         FUNC9(wanted_file, userdata->archive_path, sizeof(wanted_file));

      if (FUNC0(new_path,
                valid_exts, cdata, cmode, csize, size,
                0, userdata))
         userdata->found_file = true;

      return 0;
   }

   return 1;
}