#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {TYPE_1__* file; } ;
typedef  TYPE_2__ Token ;
struct TYPE_5__ {int /*<<< orphan*/  mtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Token *tmpl) {
    // [GNU] __TIMESTAMP__ is expanded to a string that describes the date
    // and time of the last modification time of the current source file.
    char buf[30];
    FUNC3(buf, sizeof(buf), "%a %b %e %T %Y", FUNC0(&tmpl->file->mtime));
    FUNC1(tmpl, TSTRING, FUNC2(buf));
}