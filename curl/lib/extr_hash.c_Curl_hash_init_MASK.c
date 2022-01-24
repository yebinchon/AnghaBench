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
struct curl_llist {int dummy; } ;
struct curl_hash {int slots; int /*<<< orphan*/ * table; scalar_t__ size; scalar_t__ dtor; scalar_t__ comp_func; scalar_t__ hash_func; } ;
typedef  scalar_t__ hash_function ;
typedef  int /*<<< orphan*/  curl_llist_dtor ;
typedef  scalar_t__ curl_hash_dtor ;
typedef  scalar_t__ comp_function ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ hash_element_dtor ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

int
FUNC2(struct curl_hash *h,
               int slots,
               hash_function hfunc,
               comp_function comparator,
               curl_hash_dtor dtor)
{
  if(!slots || !hfunc || !comparator ||!dtor) {
    return 1; /* failure */
  }

  h->hash_func = hfunc;
  h->comp_func = comparator;
  h->dtor = dtor;
  h->size = 0;
  h->slots = slots;

  h->table = FUNC1(slots * sizeof(struct curl_llist));
  if(h->table) {
    int i;
    for(i = 0; i < slots; ++i)
      FUNC0(&h->table[i], (curl_llist_dtor) hash_element_dtor);
    return 0; /* fine */
  }
  h->slots = 0;
  return 1; /* failure */
}