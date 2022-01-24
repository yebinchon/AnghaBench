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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYER_KEY_OPEN_PART_LEN ; 
 int /*<<< orphan*/  RTMP_HANDSHAKE_PACKET_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  rtmp_player_key ; 

__attribute__((used)) static int FUNC2(uint8_t *buf, int encrypted)
{
    int ret, digest_pos;

    if (encrypted)
        digest_pos = FUNC1(buf, 772, 728, 776);
    else
        digest_pos = FUNC1(buf, 8, 728, 12);

    ret = FUNC0(buf, RTMP_HANDSHAKE_PACKET_SIZE, digest_pos,
                              rtmp_player_key, PLAYER_KEY_OPEN_PART_LEN,
                              buf + digest_pos);
    if (ret < 0)
        return ret;

    return digest_pos;
}