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
struct display {char* filename; int /*<<< orphan*/  best; scalar_t__ best_size; scalar_t__ read_size; scalar_t__ size; int /*<<< orphan*/  ct; int /*<<< orphan*/  bpp; scalar_t__ h; scalar_t__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(struct display *dp)
{
   FUNC0(dp->filename != NULL);
   FUNC3("%s [%ld x %ld %d bpp %s, %lu bytes] %lu -> %lu with '%s'\n",
      dp->filename, (unsigned long)dp->w, (unsigned long)dp->h, dp->bpp,
      FUNC1(dp->ct), (unsigned long)dp->size, (unsigned long)dp->read_size,
      (unsigned long)dp->best_size, dp->best);
   FUNC2(stdout);
}