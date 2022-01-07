
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int needLatch0 ;
 int needLatch1 ;

bool TLC59401_SendPending(void) {
    return needLatch0 | needLatch1;
}
