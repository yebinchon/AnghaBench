
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSANOW ;
 int oldtio ;
 int tcsetattr (int ,int ,int *) ;

void cleanup_handler(void *arg) { tcsetattr(0, TCSANOW, &oldtio); }
