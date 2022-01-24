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

/* Variables and functions */
 int FUNC0 (struct curl_hash*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Curl_hash_str ; 
 int /*<<< orphan*/  Curl_str_key_compare ; 
 int /*<<< orphan*/  freednsentry ; 

int FUNC1(struct curl_hash *hash)
{
  return FUNC0(hash, 7, Curl_hash_str, Curl_str_key_compare,
                        freednsentry);
}