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
struct curl_hash_iterator {int dummy; } ;
struct curl_hash_element {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; struct connectbundle* ptr; } ;
struct connectbundle {int dummy; } ;
struct conncache {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct curl_hash_element* FUNC1 (struct curl_hash_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct curl_hash_iterator*) ; 

__attribute__((used)) static void FUNC3(struct conncache *connc,
                                    struct connectbundle *bundle)
{
  struct curl_hash_iterator iter;
  struct curl_hash_element *he;

  if(!connc)
    return;

  FUNC2(&connc->hash, &iter);

  he = FUNC1(&iter);
  while(he) {
    if(he->ptr == bundle) {
      /* The bundle is destroyed by the hash destructor function,
         free_bundle_hash_entry() */
      FUNC0(&connc->hash, he->key, he->key_len);
      return;
    }

    he = FUNC1(&iter);
  }
}