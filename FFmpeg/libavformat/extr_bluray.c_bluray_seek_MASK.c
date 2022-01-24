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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int /*<<< orphan*/  bd; } ;
typedef  TYPE_2__ BlurayContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  AVSEEK_SIZE 131 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC4(URLContext *h, int64_t pos, int whence)
{
    BlurayContext *bd = h->priv_data;

    if (!bd || !bd->bd) {
        return FUNC0(EFAULT);
    }

    switch (whence) {
    case SEEK_SET:
    case SEEK_CUR:
    case SEEK_END:
        return FUNC3(bd->bd, pos);

    case AVSEEK_SIZE:
        return FUNC2(bd->bd);
    }

    FUNC1(h, AV_LOG_ERROR, "Unsupported whence operation %d\n", whence);
    return FUNC0(EINVAL);
}