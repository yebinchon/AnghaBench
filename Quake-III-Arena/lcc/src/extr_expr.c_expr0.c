
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tree ;


 int expr (int) ;
 int root (int ) ;

Tree expr0(int tok) {
 return root(expr(tok));
}
