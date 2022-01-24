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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* TEST_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,char const**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   const char *name = NULL, *value = NULL;
   char buffer[1];

   if (FUNC8( uri ))
      error_count++;
   if (FUNC9( uri ))
      error_count++;
   if (FUNC3( uri ))
      error_count++;
   if (FUNC6( uri ))
      error_count++;
   if (FUNC5( uri ))
      error_count++;
   if (FUNC2( uri ))
      error_count++;
   if (FUNC4( uri ) != 0)
      error_count++;

   FUNC7( uri, 0, &name, &value );
   if (name != NULL || value != NULL)
      error_count++;

   if (FUNC1(uri, NULL, 0) != 0)
      error_count++;
   buffer[0] = ~*TEST_STRING;    /* Initialize with something */
   FUNC1(uri, buffer, sizeof(buffer));
   if (buffer[0] != '\0')        /* Expect empty string */
      error_count++;

   if (error_count)
      FUNC0(NULL, "Getting default values gave unexpected values");

   return error_count;
}