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
typedef  int ALCenum ;
typedef  int /*<<< orphan*/  ALCdevice ;

/* Variables and functions */
#define  ALC_INVALID_CONTEXT 133 
#define  ALC_INVALID_DEVICE 132 
#define  ALC_INVALID_ENUM 131 
#define  ALC_INVALID_VALUE 130 
#define  ALC_NO_ERROR 129 
#define  ALC_OUT_OF_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(ALCdevice *device, const char** error_msg_ret)
{
    ALCenum error = FUNC1(device);
    if (error_msg_ret)
        *error_msg_ret = (const char*) FUNC2(device, error);
    switch (error) {
    case ALC_NO_ERROR:
        return 0;
    case ALC_INVALID_DEVICE:
        return FUNC0(ENODEV);
        break;
    case ALC_INVALID_CONTEXT:
    case ALC_INVALID_ENUM:
    case ALC_INVALID_VALUE:
        return FUNC0(EINVAL);
        break;
    case ALC_OUT_OF_MEMORY:
        return FUNC0(ENOMEM);
        break;
    default:
        return FUNC0(EIO);
    }
}