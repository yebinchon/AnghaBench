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
struct SRTPContext {int rtp_hmac_size; int rtcp_hmac_size; int /*<<< orphan*/  rtcp_auth; int /*<<< orphan*/  master_salt; int /*<<< orphan*/  aes; int /*<<< orphan*/  rtcp_salt; int /*<<< orphan*/  rtcp_key; int /*<<< orphan*/  rtp_auth; int /*<<< orphan*/  rtp_salt; int /*<<< orphan*/  rtp_key; int /*<<< orphan*/  master_key; int /*<<< orphan*/  hmac; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_HMAC_SHA1 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct SRTPContext*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

int FUNC10(struct SRTPContext *s, const char *suite,
                       const char *params)
{
    uint8_t buf[30];

    FUNC7(s);

    // RFC 4568
    if (!FUNC9(suite, "AES_CM_128_HMAC_SHA1_80") ||
        !FUNC9(suite, "SRTP_AES128_CM_HMAC_SHA1_80")) {
        s->rtp_hmac_size = s->rtcp_hmac_size = 10;
    } else if (!FUNC9(suite, "AES_CM_128_HMAC_SHA1_32")) {
        s->rtp_hmac_size = s->rtcp_hmac_size = 4;
    } else if (!FUNC9(suite, "SRTP_AES128_CM_HMAC_SHA1_32")) {
        // RFC 5764 section 4.1.2
        s->rtp_hmac_size  = 4;
        s->rtcp_hmac_size = 10;
    } else {
        FUNC5(NULL, AV_LOG_WARNING, "SRTP Crypto suite %s not supported\n",
                                     suite);
        return FUNC0(EINVAL);
    }
    if (FUNC3(buf, params, sizeof(buf)) != sizeof(buf)) {
        FUNC5(NULL, AV_LOG_WARNING, "Incorrect amount of SRTP params\n");
        return FUNC0(EINVAL);
    }
    // MKI and lifetime not handled yet
    s->aes  = FUNC1();
    s->hmac = FUNC4(AV_HMAC_SHA1);
    if (!s->aes || !s->hmac)
        return FUNC0(ENOMEM);
    FUNC8(s->master_key, buf, 16);
    FUNC8(s->master_salt, buf + 16, 14);

    // RFC 3711
    FUNC2(s->aes, s->master_key, 128, 0);

    FUNC6(s->aes, s->master_salt, 0x00, s->rtp_key, sizeof(s->rtp_key));
    FUNC6(s->aes, s->master_salt, 0x02, s->rtp_salt, sizeof(s->rtp_salt));
    FUNC6(s->aes, s->master_salt, 0x01, s->rtp_auth, sizeof(s->rtp_auth));

    FUNC6(s->aes, s->master_salt, 0x03, s->rtcp_key, sizeof(s->rtcp_key));
    FUNC6(s->aes, s->master_salt, 0x05, s->rtcp_salt, sizeof(s->rtcp_salt));
    FUNC6(s->aes, s->master_salt, 0x04, s->rtcp_auth, sizeof(s->rtcp_auth));
    return 0;
}