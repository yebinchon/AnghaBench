
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pthread_t ;



void taosResetPthread(pthread_t *thread) { *thread = 0; }
