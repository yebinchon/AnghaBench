
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tree ;


 int expr1 (int) ;
 int needconst ;

Tree constexpr(int tok) {
 Tree p;

 needconst++;
 p = expr1(tok);
 needconst--;
 return p;
}
