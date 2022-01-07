
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int JPEG2000_T1_SGN_E ;
 int JPEG2000_T1_SGN_N ;
 int JPEG2000_T1_SGN_S ;
 int JPEG2000_T1_SGN_W ;
 int JPEG2000_T1_SIG_E ;
 int JPEG2000_T1_SIG_N ;
 int JPEG2000_T1_SIG_S ;
 int JPEG2000_T1_SIG_W ;
 int** contribtab ;
 int** ctxlbltab ;
 int ** xorbittab ;

__attribute__((used)) static int getsgnctxno(int flag, uint8_t *xorbit)
{
    int vcontrib, hcontrib;

    hcontrib = contribtab[flag & JPEG2000_T1_SIG_E ? flag & JPEG2000_T1_SGN_E ? 1 : 2 : 0]
                         [flag & JPEG2000_T1_SIG_W ? flag & JPEG2000_T1_SGN_W ? 1 : 2 : 0] + 1;
    vcontrib = contribtab[flag & JPEG2000_T1_SIG_S ? flag & JPEG2000_T1_SGN_S ? 1 : 2 : 0]
                         [flag & JPEG2000_T1_SIG_N ? flag & JPEG2000_T1_SGN_N ? 1 : 2 : 0] + 1;
    *xorbit = xorbittab[hcontrib][vcontrib];

    return ctxlbltab[hcontrib][vcontrib];
}
