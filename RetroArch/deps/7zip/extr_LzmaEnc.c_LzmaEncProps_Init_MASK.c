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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {int level; int lc; int lp; int pb; int algo; int fb; int btMode; int numHashBytes; int numThreads; scalar_t__ writeEndMark; scalar_t__ reduceSize; scalar_t__ mc; scalar_t__ dictSize; } ;
typedef  TYPE_1__ CLzmaEncProps ;

/* Variables and functions */

void FUNC0(CLzmaEncProps *p)
{
  p->level = 5;
  p->dictSize = p->mc = 0;
  p->reduceSize = (uint64_t)(int64_t)-1;
  p->lc = p->lp = p->pb = p->algo = p->fb = p->btMode = p->numHashBytes = p->numThreads = -1;
  p->writeEndMark = 0;
}