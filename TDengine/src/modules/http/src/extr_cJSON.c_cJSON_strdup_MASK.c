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
struct TYPE_3__ {scalar_t__ (* allocate ) (size_t) ;} ;
typedef  TYPE_1__ internal_hooks ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (size_t) ; 

__attribute__((used)) static unsigned char* FUNC3(const unsigned char* string, const internal_hooks * const hooks)
{
    size_t length = 0;
    unsigned char *copy = NULL;

    if (string == NULL)
    {
        return NULL;
    }

    length = FUNC1((const char*)string) + sizeof("");
    if (!(copy = (unsigned char*)hooks->allocate(length)))
    {
        return NULL;
    }
    FUNC0(copy, string, length);

    return copy;
}