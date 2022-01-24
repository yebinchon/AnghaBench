#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int body_size; int /*<<< orphan*/  created_at; } ;
struct TYPE_8__ {char* body; TYPE_1__ r; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

Job *
FUNC5(int body_size)
{
    Job *j;

    j = FUNC1(sizeof(Job) + body_size);
    if (!j) {
        FUNC4("OOM");
        return (Job *) 0;
    }

    FUNC2(j, 0, sizeof(Job));
    j->r.created_at = FUNC3();
    j->r.body_size = body_size;
    j->body = (char *)j + sizeof(Job);
    FUNC0(j);
    return j;
}