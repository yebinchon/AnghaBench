#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_5__ {int /*<<< orphan*/  level; int /*<<< orphan*/  pb; int /*<<< orphan*/  profile; TYPE_1__ ver; } ;
typedef  TYPE_2__ VC2EncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(VC2EncContext *s)
{
    FUNC0(&s->pb, s->ver.major); /* VC-2 demands this to be 2 */
    FUNC0(&s->pb, s->ver.minor); /* ^^ and this to be 0       */
    FUNC0(&s->pb, s->profile);   /* 3 to signal HQ profile    */
    FUNC0(&s->pb, s->level);     /* 3 - 1080/720, 6 - 4K      */
}