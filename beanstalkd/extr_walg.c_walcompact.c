
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Wal ;


 int moveone (int *) ;
 int ratio (int *) ;

__attribute__((used)) static void
walcompact(Wal *w)
{
    int r;

    for (r=ratio(w); r>=2; r--) {
        moveone(w);
    }
}
