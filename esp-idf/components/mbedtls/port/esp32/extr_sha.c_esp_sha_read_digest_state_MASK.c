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
typedef  int uint32_t ;
typedef  scalar_t__ esp_sha_type ;
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ SHA2_384 ; 
 scalar_t__ SHA2_512 ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ SHA_TEXT_BASE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(esp_sha_type sha_type, void *digest_state)
{
    uint32_t *digest_state_words = NULL;
    uint32_t *reg_addr_buf = NULL;
    uint32_t word_len = FUNC14(sha_type)/4;
#ifndef NDEBUG
    {
        SemaphoreHandle_t *engine_state = FUNC13(sha_type);
        FUNC8(FUNC15(engine_state) == 0 &&
               "SHA engine should be locked" );
    }
#endif

    // preemptively do this before entering the critical section, then re-check once in it
    FUNC12();

    FUNC10();

    FUNC12();

    FUNC3(FUNC6(sha_type), 1);
    while(FUNC2(FUNC5(sha_type)) == 1) { }
    digest_state_words = (uint32_t *)digest_state;
    reg_addr_buf = (uint32_t *)(SHA_TEXT_BASE);
    if(sha_type == SHA2_384 || sha_type == SHA2_512) {
        /* for these ciphers using 64-bit states, swap each pair of words */
        FUNC0(); // Disable interrupt only on current CPU.
        for(int i = 0; i < word_len; i += 2) {
            digest_state_words[i+1] = FUNC4((uint32_t)&reg_addr_buf[i]);
            digest_state_words[i]   = FUNC4((uint32_t)&reg_addr_buf[i+1]);
        }
        FUNC1(); // restore the previous interrupt level
    } else {
        FUNC9(digest_state_words, (uint32_t)&reg_addr_buf[0], word_len);
    }
    FUNC11();

    /* Fault injection check: verify SHA engine actually ran,
       state is not all zeroes.
    */
    for (int i = 0; i < word_len; i++) {
        if (digest_state_words[i] != 0) {
            return;
        }
    }
    FUNC7(); // SHA peripheral returned all zero state, probably due to fault injection
}