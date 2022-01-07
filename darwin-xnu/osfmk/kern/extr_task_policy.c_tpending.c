
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ task_pend_token_t ;



uint32_t tpending(task_pend_token_t pend_token) { return *(uint32_t*)(void*)(pend_token); }
