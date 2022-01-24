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
struct playlist_entry {char* label; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(void *userdata,
      const char *str)
{
   if (str && *str)
   {
      const char        *label    = FUNC2();

      if (!FUNC4(label))
      {
         struct playlist_entry entry = {0};

         /* the update function reads our entry as const, so these casts are safe */
         entry.label = (char*)label;

         FUNC0(NULL,
               FUNC3(),
               &entry);
      }
   }

   FUNC1();
}