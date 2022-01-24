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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DECRYPTION_MODE ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (unsigned char*,char*,int,int /*<<< orphan*/ ) ; 

char* FUNC4(int64_t key, char* src, int len) {
  unsigned char* keyStr = (unsigned char*)(&key);
  char*          temp = FUNC0(len + 8, 1);
  FUNC2(temp, src, len);
  len += 8;

  char* decode = FUNC3(keyStr, temp, len, DECRYPTION_MODE);
  FUNC1(temp);

  return decode;
}