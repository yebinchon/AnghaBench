
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int enqueueGenericCommand (int *,int) ;

void nackCommand(client *c) {
    enqueueGenericCommand(c,1);
}
