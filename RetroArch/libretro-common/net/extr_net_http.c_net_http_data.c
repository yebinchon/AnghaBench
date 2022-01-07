
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct http_t {size_t len; scalar_t__ data; } ;


 scalar_t__ net_http_error (struct http_t*) ;

uint8_t* net_http_data(struct http_t *state, size_t* len, bool accept_error)
{
   if (!state)
      return ((void*)0);

   if (!accept_error && net_http_error(state))
   {
      if (len)
         *len=0;
      return ((void*)0);
   }

   if (len)
      *len=state->len;

   return (uint8_t*)state->data;
}
