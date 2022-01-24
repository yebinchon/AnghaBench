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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 int FUNC0 (unsigned int) ; 
 char* FUNC1 (unsigned int) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC10(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   char tmp[4096];
   unsigned controller;

   for(controller = 0; controller < MAX_USERS; controller++)
   {
      if (FUNC6(controller))
      {
            FUNC7(tmp, sizeof(tmp), "Port #%d device name: %s (#%d)",
               controller,
               FUNC3(controller),
               FUNC0(controller));

            if (FUNC8(path, tmp))
               break;
      }
   }
   FUNC7(tmp, sizeof(tmp), "Device display name: %s\nDevice config name: %s\nDevice identifiers: %d/%d",
      FUNC2(controller) ? FUNC2(controller) : "N/A",
      FUNC2(controller) ? FUNC1(controller) : "N/A",
      FUNC5(controller), FUNC4(controller));
   FUNC9(s, tmp, len);

   return 0;
}