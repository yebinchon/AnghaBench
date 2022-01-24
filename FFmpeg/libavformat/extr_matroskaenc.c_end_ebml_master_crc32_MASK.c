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
typedef  int /*<<< orphan*/  crc ;
struct TYPE_3__ {scalar_t__ write_crc; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_32_IEEE_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EBML_ID_CRC32 ; 
 int UINT32_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(AVIOContext *pb, AVIOContext **dyn_cp, MatroskaMuxContext *mkv)
{
    uint8_t *buf, crc[4];
    int size, skip = 0;

    size = FUNC4(*dyn_cp, &buf);
    FUNC7(pb, size, 0);
    if (mkv->write_crc) {
        skip = 6; /* Skip reserved 6-byte long void element from the dynamic buffer. */
        FUNC0(crc, FUNC1(FUNC2(AV_CRC_32_IEEE_LE), UINT32_MAX, buf + skip, size - skip) ^ UINT32_MAX);
        FUNC6(pb, EBML_ID_CRC32, crc, sizeof(crc));
    }
    FUNC5(pb, buf + skip, size - skip);

    FUNC3(buf);
    *dyn_cp = NULL;
}