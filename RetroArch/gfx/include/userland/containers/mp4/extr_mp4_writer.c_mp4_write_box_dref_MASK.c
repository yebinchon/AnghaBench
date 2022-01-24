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
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx )
{
   FUNC5(p_ctx,  0, "version");
   FUNC3(p_ctx, 0, "flags");

   FUNC4(p_ctx,  1, "entry_count");

   /* Add a URL box */
   FUNC4(p_ctx,  12, "box_size");
   FUNC2(p_ctx,  FUNC1('u','r','l',' '), "box_type");
   FUNC5(p_ctx,  0, "version");
   FUNC3(p_ctx, 0x1, "flags");

   return FUNC0(p_ctx);
}