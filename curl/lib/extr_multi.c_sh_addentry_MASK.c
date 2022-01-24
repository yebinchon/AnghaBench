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
struct curl_hash {int dummy; } ;
struct Curl_sh_entry {int /*<<< orphan*/  transfers; } ;
typedef  int /*<<< orphan*/  curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct curl_hash*,char*,int,struct Curl_sh_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRHASH_SIZE ; 
 struct Curl_sh_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_sh_entry*) ; 
 struct Curl_sh_entry* FUNC4 (struct curl_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trhash ; 
 int /*<<< orphan*/  trhash_compare ; 
 int /*<<< orphan*/  trhash_dtor ; 

__attribute__((used)) static struct Curl_sh_entry *FUNC5(struct curl_hash *sh,
                                         curl_socket_t s)
{
  struct Curl_sh_entry *there = FUNC4(sh, s);
  struct Curl_sh_entry *check;

  if(there) {
    /* it is present, return fine */
    return there;
  }

  /* not present, add it */
  check = FUNC2(1, sizeof(struct Curl_sh_entry));
  if(!check)
    return NULL; /* major failure */

  if(FUNC1(&check->transfers, TRHASH_SIZE, trhash,
                    trhash_compare, trhash_dtor)) {
    FUNC3(check);
    return NULL;
  }

  /* make/add new hash entry */
  if(!FUNC0(sh, (char *)&s, sizeof(curl_socket_t), check)) {
    FUNC3(check);
    return NULL; /* major failure */
  }

  return check; /* things are good in sockhash land */
}