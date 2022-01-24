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
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MZ_ENCODING_CODEPAGE_437 ; 
 scalar_t__ MZ_ENCODING_CODEPAGE_932 ; 
 scalar_t__ MZ_ENCODING_CODEPAGE_936 ; 
 scalar_t__ MZ_ENCODING_CODEPAGE_950 ; 
 scalar_t__ MZ_ENCODING_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (scalar_t__,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (char const*) ; 

uint8_t *FUNC7(const char *string, int32_t encoding)
{
    iconv_t cd;
    const char *from_encoding = NULL;
    size_t result = 0;
    size_t string_length = 0;
    size_t string_utf8_size = 0;
    uint8_t *string_utf8 = NULL;
    uint8_t *string_utf8_ptr = NULL;

    if (string == NULL)
        return NULL;

    if (encoding == MZ_ENCODING_CODEPAGE_437)
        from_encoding = "CP437";
    else if (encoding == MZ_ENCODING_CODEPAGE_932)
        from_encoding = "CP932";
    else if (encoding == MZ_ENCODING_CODEPAGE_936)
        from_encoding = "CP936";
    else if (encoding == MZ_ENCODING_CODEPAGE_950)
        from_encoding = "CP950";
    else if (encoding == MZ_ENCODING_UTF8)
        from_encoding = "UTF-8";
    else
        return NULL;

    cd = FUNC4("UTF-8", from_encoding);
    if (cd == (iconv_t)-1)
        return NULL;

    string_length = FUNC6(string);
    string_utf8_size = string_length * 2;
    string_utf8 = (uint8_t *)FUNC0((int32_t)(string_utf8_size + 1));
    string_utf8_ptr = string_utf8;

    if (string_utf8)
    {
        FUNC5(string_utf8, 0, string_utf8_size + 1);

        result = FUNC2(cd, (char **)&string, &string_length,
                (char **)&string_utf8_ptr, &string_utf8_size);
    }

    FUNC3(cd);

    if (result == (size_t)-1)
    {
        FUNC1(string_utf8);
        string_utf8 = NULL;
    }

    return string_utf8;
}