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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (size_t) ; 

unsigned char *FUNC3(const char *value, int inlen, int *outlen) {
  int            c1, c2, c3, c4;
  unsigned char *result = (unsigned char *)FUNC2((size_t)(inlen * 3) / 4 + 1);
  unsigned char *out = result;

  *outlen = 0;

  while (1) {
    if (value[0] == 0) {
      *out = '\0';
      return result;
    }

    // skip \r\n
    if (value[0] == '\n' || value[0] == '\r') {
      value += 1;
      continue;
    }

    c1 = value[0];
    if (FUNC0(c1) == -1) goto base64_decode_error;
    c2 = value[1];
    if (FUNC0(c2) == -1) goto base64_decode_error;
    c3 = value[2];
    if ((c3 != '=') && (FUNC0(c3) == -1)) goto base64_decode_error;
    c4 = value[3];
    if ((c4 != '=') && (FUNC0(c4) == -1)) goto base64_decode_error;

    value += 4;
    *out++ = (unsigned char)((FUNC0(c1) << 2) | (FUNC0(c2) >> 4));
    *outlen += 1;
    if (c3 != '=') {
      *out++ = (unsigned char)(((FUNC0(c2) << 4) & 0xf0) | (FUNC0(c3) >> 2));
      *outlen += 1;
      if (c4 != '=') {
        *out++ = (unsigned char)(((FUNC0(c3) << 6) & 0xc0) | FUNC0(c4));
        *outlen += 1;
      }
    }
  }

base64_decode_error:
  FUNC1(result);
  *result = 0;
  *outlen = 0;

  return result;
}