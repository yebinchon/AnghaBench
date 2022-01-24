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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int RTMP_HANDSHAKE_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(RTMPContext* rt, uint32_t first_int,
                               uint32_t second_int, char *arraydata, int size)
{
    int inoutsize;

    FUNC1(arraydata, first_int);
    FUNC1(arraydata + 4, second_int);
    inoutsize = FUNC3(rt->stream, arraydata,
                            RTMP_HANDSHAKE_PACKET_SIZE);
    if (inoutsize != RTMP_HANDSHAKE_PACKET_SIZE) {
        FUNC2(rt, AV_LOG_ERROR, "Unable to write answer\n");
        return FUNC0(EIO);
    }

    return 0;
}