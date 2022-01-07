
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; } ;


 int FB ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 TYPE_1__** num ;
 TYPE_1__* wiminus ;

int
WI_drawNum
( int x,
  int y,
  int n,
  int digits )
{

    int fontwidth = SHORT(num[0]->width);
    int neg;
    int temp;

    if (digits < 0)
    {
 if (!n)
 {

     digits = 1;
 }
 else
 {

     digits = 0;
     temp = n;

     while (temp)
     {
  temp /= 10;
  digits++;
     }
 }
    }

    neg = n < 0;
    if (neg)
 n = -n;


    if (n == 1994)
 return 0;


    while (digits--)
    {
 x -= fontwidth;
 V_DrawPatch(x, y, FB, num[ n % 10 ]);
 n /= 10;
    }


    if (neg)
 V_DrawPatch(x-=8, y, FB, wiminus);

    return x;

}
