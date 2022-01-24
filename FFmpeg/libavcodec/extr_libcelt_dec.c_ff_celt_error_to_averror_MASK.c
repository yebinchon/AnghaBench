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
 int AVERROR_INVALIDDATA ; 
#define  CELT_ALLOC_FAIL 134 
#define  CELT_BAD_ARG 133 
#define  CELT_BUFFER_TOO_SMALL 132 
#define  CELT_CORRUPTED_DATA 131 
#define  CELT_INTERNAL_ERROR 130 
#define  CELT_INVALID_STATE 129 
#define  CELT_UNIMPLEMENTED 128 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  ENOTRECOVERABLE ; 

__attribute__((used)) static int FUNC1(int err)
{
    switch (err) {
        case CELT_BAD_ARG:          return FUNC0(EINVAL);
#ifdef CELT_BUFFER_TOO_SMALL
        case CELT_BUFFER_TOO_SMALL: return FUNC0(ENOBUFS);
#endif
        case CELT_INTERNAL_ERROR:   return FUNC0(EFAULT);
        case CELT_CORRUPTED_DATA:   return AVERROR_INVALIDDATA;
        case CELT_UNIMPLEMENTED:    return FUNC0(ENOSYS);
#ifdef ENOTRECOVERABLE
        case CELT_INVALID_STATE:    return AVERROR(ENOTRECOVERABLE);
#endif
        case CELT_ALLOC_FAIL:       return FUNC0(ENOMEM);
        default:                    return FUNC0(EINVAL);
    }
}