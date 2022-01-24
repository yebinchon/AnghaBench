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
 long CURLAUTH_BASIC ; 
 long CURLAUTH_DIGEST ; 
 long CURLAUTH_NONE ; 
 long CURLAUTH_NTLM ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static long FUNC1(const char *arg)
{
  if(!arg)
    return CURLAUTH_NONE;
  if(FUNC0(arg, "basic"))
    return CURLAUTH_BASIC;
  if(FUNC0(arg, "digest"))
    return CURLAUTH_DIGEST;
  if(FUNC0(arg, "ntlm"))
    return CURLAUTH_NTLM;
  return CURLAUTH_NONE;
}