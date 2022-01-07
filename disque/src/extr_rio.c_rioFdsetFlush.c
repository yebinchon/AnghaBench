
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;


 int rioFdsetWrite (int *,int *,int ) ;

__attribute__((used)) static int rioFdsetFlush(rio *r) {


    return rioFdsetWrite(r,((void*)0),0);
}
