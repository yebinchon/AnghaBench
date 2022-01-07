
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Wal ;
typedef int Jobrec ;


 int reserve (int *,int) ;

int
walresvupdate(Wal *w)
{
    int z = 0;
    z +=sizeof(int);
    z +=sizeof(Jobrec);
    return reserve(w, z);
}
