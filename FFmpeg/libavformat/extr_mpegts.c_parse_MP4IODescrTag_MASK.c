#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ MP4DescrParseContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC4(MP4DescrParseContext *d, int64_t off, int len)
{
    FUNC1(&d->pb); // ID
    FUNC0(&d->pb);
    FUNC0(&d->pb);
    FUNC0(&d->pb);
    FUNC0(&d->pb);
    FUNC0(&d->pb);
    FUNC3(&d->pb, &off, &len);
    return FUNC2(d, off, len);
}