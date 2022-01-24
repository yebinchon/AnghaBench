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
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char TEST_CHAR ; 
 int /*<<< orphan*/ * TEST_STRING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   char buffer[1];

   FUNC3( uri, TEST_STRING );

   if (FUNC2( uri, NULL, 0 ) != FUNC1(TEST_STRING))
   {
      FUNC0(NULL, "Retrieving URI length failed");
      error_count++;
   }

   buffer[0] = TEST_CHAR;
   if (FUNC2( uri, buffer, 1 ) != FUNC1(TEST_STRING))
   {
      FUNC0(NULL, "Building URI to small buffer failed");
      error_count++;
   }
   if (buffer[0] != TEST_CHAR)
   {
      FUNC0(NULL, "Building URI to small buffer modified buffer");
      error_count++;
   }

   FUNC3( uri, NULL );    /* Reset uri */

   return error_count;
}