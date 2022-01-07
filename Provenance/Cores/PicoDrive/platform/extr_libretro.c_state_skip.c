
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savestate_state {size_t pos; } ;



size_t state_skip(void *p, size_t size, size_t nmemb, void *file)
{
 struct savestate_state *state = file;
 size_t bsize = size * nmemb;

 state->pos += bsize;
 return bsize;
}
