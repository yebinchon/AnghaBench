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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  EINVAL ; 
#define  OV_EFAULT 130 
#define  OV_EIMPL 129 
#define  OV_EINVAL 128 

__attribute__((used)) static int FUNC1(int ov_err)
{
    switch (ov_err) {
    case OV_EFAULT: return AVERROR_BUG;
    case OV_EINVAL: return FUNC0(EINVAL);
    case OV_EIMPL:  return FUNC0(EINVAL);
    default:        return AVERROR_UNKNOWN;
    }
}