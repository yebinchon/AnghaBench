
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;
 scalar_t__ hidpad_ready ;

__attribute__((used)) static bool hidpad_query_pad(unsigned pad)
{
   return hidpad_ready && pad < MAX_USERS;
}
