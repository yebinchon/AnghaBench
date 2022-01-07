
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ulk_pid; scalar_t__ ulk_addr; } ;
typedef TYPE_1__ ulk_t ;



__attribute__((used)) inline static bool
ull_key_match(ulk_t *a, ulk_t *b)
{
 return ((a->ulk_pid == b->ulk_pid) &&
  (a->ulk_addr == b->ulk_addr));
}
