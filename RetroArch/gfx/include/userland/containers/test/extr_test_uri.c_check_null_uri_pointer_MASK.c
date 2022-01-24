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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char TEST_CHAR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(void)
{
   int error_count = 0;
   char buffer[1];

   /* Check NULL URI can be passed without failure to all routines */
   FUNC11( NULL );
   FUNC3( NULL );
   if (FUNC7( NULL, NULL ))
      error_count++;
   if (FUNC7( NULL, "" ))
      error_count++;
   if (FUNC2( NULL, NULL, 0 ) != 0)
      error_count++;
   buffer[0] = TEST_CHAR;
   if (FUNC2( NULL, buffer, sizeof(buffer) ) != 0)
      error_count++;
   if (buffer[0] != TEST_CHAR)
      error_count++;
   if (FUNC12( NULL ))
      error_count++;
   if (FUNC19( NULL ))
      error_count++;
   if (FUNC5( NULL ))
      error_count++;
   if (FUNC9( NULL ))
      error_count++;
   if (FUNC8( NULL ))
      error_count++;
   if (FUNC4( NULL ))
      error_count++;
   if (FUNC6( NULL ) != 0)
      error_count++;
   FUNC10( NULL, 0, NULL, NULL );
   if (FUNC17( NULL, NULL ))
      error_count++;
   if (FUNC18( NULL, NULL ))
      error_count++;
   if (FUNC14( NULL, NULL ))
      error_count++;
   if (FUNC16( NULL, NULL ))
      error_count++;
   if (FUNC15( NULL, NULL ))
      error_count++;
   if (FUNC13( NULL, NULL ))
      error_count++;
   if (FUNC1( NULL, NULL, NULL ))
      error_count++;

   if (error_count)
      FUNC0(NULL, "NULL URI parameter testing failed");

   return error_count;
}