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
typedef  scalar_t__ esp_sha_type ;

/* Variables and functions */
 scalar_t__ SHA2_384 ; 
 scalar_t__ SHA2_512 ; 
 scalar_t__ SHA_H_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(esp_sha_type sha_type, void *digest_state)
{
    /* engine should be locked */
    FUNC0();
    if (sha_type != SHA2_512 && sha_type != SHA2_384) {
        /* <SHA-512, read out directly */
        FUNC1(digest_state, (void *)SHA_H_BASE, FUNC3(sha_type));
    } else {
        /* SHA-512, read out with each pair of words swapped */
        FUNC2(digest_state, (void *)SHA_H_BASE, FUNC3(sha_type));
    }
}