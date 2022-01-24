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
 int MAX_DATA_SIZE ; 
 int MAX_ENCODED_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const uint8_t *data, unsigned int data_size,
                              const char *encoded_ref)
{
    char  encoded[MAX_ENCODED_SIZE];
    uint8_t data2[MAX_DATA_SIZE];
    int data2_size, max_data2_size = MAX_DATA_SIZE;

    if (!FUNC1(encoded, MAX_ENCODED_SIZE, data, data_size)) {
        FUNC3("Failed: cannot encode the input data\n");
        return 1;
    }
    if (encoded_ref && FUNC5(encoded, encoded_ref)) {
        FUNC3("Failed: encoded string differs from reference\n"
               "Encoded:\n%s\nReference:\n%s\n", encoded, encoded_ref);
        return 1;
    }

    if ((data2_size = FUNC0(data2, encoded, max_data2_size)) != data_size) {
        FUNC3("Failed: cannot decode the encoded string\n"
               "Encoded:\n%s\n", encoded);
        return 1;
    }
    if ((data2_size = FUNC0(data2, encoded, data_size)) != data_size) {
        FUNC3("Failed: cannot decode with minimal buffer\n"
               "Encoded:\n%s\n", encoded);
        return 1;
    }
    if (FUNC2(data2, data, data_size)) {
        FUNC3("Failed: encoded/decoded data differs from original data\n");
        return 1;
    }
    if (FUNC0(NULL, encoded, 0) != 0) {
        FUNC3("Failed: decode to NULL buffer\n");
        return 1;
    }
    if (FUNC6(encoded)) {
        char *end = FUNC4(encoded, '=');
        if (!end)
            end = encoded + FUNC6(encoded) - 1;
        *end = '%';
        if (FUNC0(NULL, encoded, 0) >= 0) {
            FUNC3("Failed: error detection\n");
            return 1;
        }
    }

    FUNC3("Passed!\n");
    return 0;
}