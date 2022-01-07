
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FF_QP2LAMBDA ;
 int QROOT ;
 int log2 (int) ;
 int lrint (int) ;

__attribute__((used)) static int qscale2qlog(int qscale){
    return lrint(QROOT*log2(qscale / (float)FF_QP2LAMBDA))
           + 61*QROOT/8;
}
