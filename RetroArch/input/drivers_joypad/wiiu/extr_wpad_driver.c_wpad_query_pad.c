
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;
 scalar_t__ wpad_ready ;

__attribute__((used)) static bool wpad_query_pad(unsigned pad)
{
   return wpad_ready && pad < MAX_USERS;
}
