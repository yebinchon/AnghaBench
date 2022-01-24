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
typedef  int /*<<< orphan*/  rxml_document_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (long) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

rxml_document_t *FUNC7(const char *path)
{
   rxml_document_t *doc;
   char *memory_buffer     = NULL;
   long len                = 0;
   RFILE *file             = FUNC2(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!file)
      return NULL;

   len           = FUNC1(file);
   memory_buffer = (char*)FUNC5(len + 1);
   if (!memory_buffer)
      goto error;

   memory_buffer[len] = '\0';
   if (FUNC3(file, memory_buffer, len) != (size_t)len)
      goto error;

   FUNC0(file);
   file = NULL;

   doc = FUNC6(memory_buffer);

   FUNC4(memory_buffer);
   return doc;

error:
   FUNC4(memory_buffer);
   if(file)
      FUNC0(file);
   return NULL;
}