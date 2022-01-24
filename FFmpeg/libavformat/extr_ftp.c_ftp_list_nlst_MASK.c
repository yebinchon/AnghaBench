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
struct TYPE_4__ {int /*<<< orphan*/  listing_method; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  NLST ; 
 int FUNC1 (TYPE_1__*,char const*,int const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(FTPContext *s)
{
    static const char *command = "NLST\r\n";
    static const int nlst_codes[] = {226, 425, 426, 451, 450, 550, 0};

    if (FUNC1(s, command, nlst_codes, NULL) != 226)
        return FUNC0(ENOSYS);
    s->listing_method = NLST;
    return 0;
}