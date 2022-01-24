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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,unsigned long*,unsigned long*) ; 
 char* FUNC1 (char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int const FUNC7 (char*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(int argc, char* argv[]) {
    if (argc != 2) {
        FUNC11("Usage: %s <my.AppImage>\n", argv[0]);
        FUNC11("\n");
        FUNC11("Calculate AppImage MD5 digest, and compare it to embedded value (if available)\n");
    }

    const char* fname = argv[1];
    if (!FUNC10(fname, G_FILE_TEST_IS_REGULAR)) {
        FUNC6(stderr, "No such file or directory: %s\n", fname);
        return 1;
    }

    static const int digest_size = 16;

    // first, calculate MD5 digest using algorithm in libappimage
    char expected_digest[digest_size];

    if (!FUNC2(fname, expected_digest)) {
        FUNC6(stderr, "Could not calculate MD5 digest\n");
        return 1;
    }

    // print hex encoded digest
    char* hexlified_expected_digest = FUNC1(expected_digest, digest_size);
    FUNC11("calculated: %s\n", hexlified_expected_digest);
    FUNC8(hexlified_expected_digest);

    unsigned long offset = 0, length = 0;

    static const char section_name[] = ".digest_md5";

    if (!FUNC0(fname, section_name, &offset, &length) || offset == 0 || length == 0) {
        FUNC6(stderr, "Could not find %s section in file\n", section_name);
        return 1;
    }

    if (length < digest_size) {
        FUNC6(stderr,
            "Invalid section length for section %s: expected %d bytes, found %lu bytes\n",
            section_name, digest_size, length
        );
        return 1;
    }

    char embedded_digest[digest_size];
    FILE* fp = FUNC5(fname, "r");

    if (fp == NULL) {
        FUNC6(stderr, "Failed to open AppImage for writing");
        return 1;
    }

    if (FUNC9(fp, offset, SEEK_SET) != 0) {
        FUNC6(stderr, "Failed to read embedded digest: failed to seek to offset\n");
        FUNC4(fp);
        return 1;
    }

    if (FUNC7(embedded_digest, sizeof(char), digest_size, fp) != digest_size) {
        FUNC6(stderr, "Failed to read embedded digest: read invalid amount of bytes from file\n");
        FUNC4(fp);
        return 1;
    }

    FUNC4(fp);

    char* hexlified_embedded_digest = FUNC1(embedded_digest, digest_size);
    FUNC11("  embedded: %s\n", hexlified_embedded_digest);
    FUNC8(hexlified_embedded_digest);

    if (FUNC3(expected_digest, embedded_digest, digest_size)) {
        FUNC11("Digests match\n");
        return 0;
    } else {
        FUNC11("Digests don't match!");
        return 1;
    }
}