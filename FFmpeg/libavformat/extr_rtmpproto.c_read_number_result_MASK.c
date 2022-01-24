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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  strbuffer ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,double*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(RTMPPacket *pkt, double *number)
{
    // We only need to fit "_result" in this.
    uint8_t strbuffer[8];
    int stringlen;
    double numbuffer;
    GetByteContext gbc;

    FUNC0(&gbc, pkt->data, pkt->size);

    // Value 1/4: "_result" as AMF_STRING
    if (FUNC3(&gbc, strbuffer, sizeof(strbuffer), &stringlen))
        return AVERROR_INVALIDDATA;
    if (FUNC4(strbuffer, "_result"))
        return AVERROR_INVALIDDATA;
    // Value 2/4: The callee reference number
    if (FUNC2(&gbc, &numbuffer))
        return AVERROR_INVALIDDATA;
    // Value 3/4: Null
    if (FUNC1(&gbc))
        return AVERROR_INVALIDDATA;
    // Value 4/4: The response as AMF_NUMBER
    if (FUNC2(&gbc, &numbuffer))
        return AVERROR_INVALIDDATA;
    else
        *number = numbuffer;

    return 0;
}