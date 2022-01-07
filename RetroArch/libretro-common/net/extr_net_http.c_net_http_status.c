
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_t {int status; } ;



int net_http_status(struct http_t *state)
{
   if (!state)
      return -1;
   return state->status;
}
