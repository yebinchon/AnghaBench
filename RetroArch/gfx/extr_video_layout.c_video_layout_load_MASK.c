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
typedef  int /*<<< orphan*/  rxml_document_t ;
typedef  int /*<<< orphan*/  respath ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  view_array; int /*<<< orphan*/  base_path; scalar_t__ is_archive; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char*,void**,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 TYPE_1__* video_layout_state ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

bool FUNC16(const char *path)
{
   rxml_document_t *doc;
   bool result;

   if(!path || !FUNC13(path))
      return true;

   video_layout_state->is_archive = FUNC5(path);

   doc = NULL;

   if(video_layout_state->is_archive)
   {
      void *buf;
      int64_t len;

      char respath[PATH_MAX_LENGTH];
      FUNC12(respath, path, sizeof(respath));
      FUNC11(respath, "#", sizeof(respath));
      FUNC10(&video_layout_state->base_path, respath);

      FUNC11(respath, "default.lay", sizeof(respath));
      if (FUNC1(respath, &buf, NULL, &len))
      {
         char *str;
         if ((str = (char*)FUNC6(buf, (size_t)len + 1)))
         {
            str[(size_t)len] = '\0';
            doc = FUNC9(str);
            FUNC3(str);
         }
         else FUNC3(buf);
      }
   }
   else
   {
      char respath[PATH_MAX_LENGTH];
      FUNC2(respath, path, sizeof(respath));
      FUNC10(&video_layout_state->base_path, respath);
      doc = FUNC8(path);
   }

   if (!doc)
   {
      FUNC0("video_layout: unable to open file \"%s\"\n", path);
      return false;
   }

   result = FUNC4(&video_layout_state->view_array, doc);
   FUNC7(doc);

   FUNC15(FUNC14());
   return result;
}