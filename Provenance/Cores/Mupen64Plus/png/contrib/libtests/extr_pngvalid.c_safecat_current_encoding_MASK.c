#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ encoding_ignored; int /*<<< orphan*/  current_gamma; int /*<<< orphan*/  current_encoding; } ;
typedef  TYPE_1__ png_modifier ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,size_t,char*) ; 
 size_t FUNC1 (char*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(char *buffer, size_t bufsize, size_t pos,
   const png_modifier *pm)
{
   pos = FUNC1(buffer, bufsize, pos, pm->current_encoding,
      pm->current_gamma);

   if (pm->encoding_ignored)
      pos = FUNC0(buffer, bufsize, pos, "[overridden]");

   return pos;
}