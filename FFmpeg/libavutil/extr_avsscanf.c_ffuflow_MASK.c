#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* read ) (TYPE_1__*,unsigned char*,int) ;} ;
typedef  TYPE_1__ FFFILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(FFFILE *f)
{
    unsigned char c;
    if (!FUNC0(f) && f->read(f, &c, 1)==1) return c;
    return EOF;
}