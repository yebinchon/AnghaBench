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
typedef  int /*<<< orphan*/  mbedtls_md5_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int MD5_MAX_LEN ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 size_t FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC10(void)
{
    FUNC1(TAG, "Computing alice.txt MD5 hash");

    // The file alice.txt lives under a subdirectory, though SPIFFS itself is flat
    FILE* f = FUNC3("/spiffs/sub/alice.txt", "r");
    if (f == NULL) {
        FUNC0(TAG, "Failed to open alice.txt");
        return;
    }

    // Read file and compute the digest chunk by chunk
    #define MD5_MAX_LEN 16

    char buf[64];
    mbedtls_md5_context ctx;
    unsigned char digest[MD5_MAX_LEN];

    FUNC6(&ctx);
    FUNC7(&ctx);

    size_t read;

    do {
        read = FUNC4((void*) buf, 1, sizeof(buf), f);
        FUNC8(&ctx, (unsigned const char*) buf, read);
    } while(read == sizeof(buf));

    FUNC5(&ctx, digest);

    // Create a string of the digest
    char digest_str[MD5_MAX_LEN * 2];

    for (int i = 0; i < MD5_MAX_LEN; i++) {
        FUNC9(&digest_str[i * 2], "%02x", (unsigned int)digest[i]);
    }

    // For reference, MD5 should be deeb71f585cbb3ae5f7976d5127faf2a
    FUNC1(TAG, "Computed MD5 hash of alice.txt: %s", digest_str);

    FUNC2(f);
}