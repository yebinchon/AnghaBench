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
struct SRTPContext {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int RTP_MAX_PACKET_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct SRTPContext*,char*,int*) ; 
 int FUNC1 (struct SRTPContext*,int /*<<< orphan*/  const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SRTPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct SRTPContext*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(const uint8_t *data, int in_len, const char *suite,
                         const char *key)
{
    struct SRTPContext enc = { 0 }, dec = { 0 };
    int len;
    char buf[RTP_MAX_PACKET_LENGTH];
    FUNC3(&enc, suite, key);
    FUNC3(&dec, suite, key);
    len = FUNC1(&enc, data, in_len, buf, sizeof(buf));
    if (!FUNC0(&dec, buf, &len)) {
        if (len == in_len && !FUNC4(buf, data, len))
            FUNC5("Decrypted content matches input\n");
        else
            FUNC5("Decrypted content doesn't match input\n");
    } else {
        FUNC5("Decryption failed\n");
    }
    FUNC2(&enc);
    FUNC2(&dec);
}