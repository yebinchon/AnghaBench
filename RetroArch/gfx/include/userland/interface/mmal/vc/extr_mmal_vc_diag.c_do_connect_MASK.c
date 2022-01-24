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
typedef  int MMAL_STATUS_T ;

/* Variables and functions */
 int MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(void)
{
   /* this command needs a vchiq connection */
   MMAL_STATUS_T st;
   if ((st = FUNC3()) != MMAL_SUCCESS)
   {
      FUNC1(stderr, "failed to initialize mmal vc library (%i:%s)\n",
            st, FUNC2(st));
      FUNC0(1);
   }
}