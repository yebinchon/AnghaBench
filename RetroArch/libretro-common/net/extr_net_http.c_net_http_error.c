
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_t {int status; scalar_t__ error; } ;



bool net_http_error(struct http_t *state)
{
   return (state->error || state->status<200 || state->status>299);
}
