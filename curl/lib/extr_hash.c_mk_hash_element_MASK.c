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
struct curl_hash_element {size_t key_len; void* ptr; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 struct curl_hash_element* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static struct curl_hash_element *
FUNC2(const void *key, size_t key_len, const void *p)
{
  /* allocate the struct plus memory after it to store the key */
  struct curl_hash_element *he = FUNC0(sizeof(struct curl_hash_element) +
                                        key_len);
  if(he) {
    /* copy the key */
    FUNC1(he->key, key, key_len);
    he->key_len = key_len;
    he->ptr = (void *) p;
  }
  return he;
}