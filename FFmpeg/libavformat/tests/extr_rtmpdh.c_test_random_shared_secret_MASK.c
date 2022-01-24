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
typedef  int /*<<< orphan*/  sharedkey2 ;
typedef  int /*<<< orphan*/  sharedkey1 ;
typedef  int /*<<< orphan*/  pubkey2 ;
typedef  int /*<<< orphan*/  pubkey1 ;
typedef  int /*<<< orphan*/  FF_DH ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void)
{
    FF_DH *peer1 = NULL, *peer2 = NULL;
    int ret;
    uint8_t pubkey1[128], pubkey2[128];
    uint8_t sharedkey1[128], sharedkey2[128];

    peer1 = FUNC4(1024);
    peer2 = FUNC4(1024);
    if (!peer1 || !peer2) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    if ((ret = FUNC3(peer1)) < 0)
        goto fail;
    if ((ret = FUNC3(peer2)) < 0)
        goto fail;
    if ((ret = FUNC5(peer1, pubkey1, sizeof(pubkey1))) < 0)
        goto fail;
    if ((ret = FUNC5(peer2, pubkey2, sizeof(pubkey2))) < 0)
        goto fail;
    if ((ret = FUNC1(peer1, pubkey2, sizeof(pubkey2),
                                               sharedkey1, sizeof(sharedkey1))) < 0)
        goto fail;
    if ((ret = FUNC1(peer2, pubkey1, sizeof(pubkey1),
                                               sharedkey2, sizeof(sharedkey2))) < 0)
        goto fail;
    if (FUNC6(sharedkey1, sharedkey2, sizeof(sharedkey1))) {
        FUNC7("Mismatched generated shared key\n");
        ret = AVERROR_INVALIDDATA;
    } else {
        FUNC7("Generated shared key ok\n");
    }
fail:
    FUNC2(peer1);
    FUNC2(peer2);
    return ret;
}