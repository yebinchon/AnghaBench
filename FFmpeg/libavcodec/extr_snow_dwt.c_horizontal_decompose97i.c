
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;


 int W_AM ;
 int W_AO ;
 int W_AS ;
 int W_BM ;
 int W_BO ;
 int W_BS ;
 int W_CM ;
 int W_CO ;
 int W_CS ;
 int W_DM ;
 int W_DO ;
 int W_DS ;
 int lift (int *,int *,int *,int,int,int,int,int ,int ,int ,int,int) ;
 int liftS (int *,int *,int *,int,int,int,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void horizontal_decompose97i(DWTELEM *b, DWTELEM *temp, int width)
{
    const int w2 = (width + 1) >> 1;

    lift(temp + w2, b + 1, b, 1, 2, 2, width, W_AM, W_AO, W_AS, 1, 1);
    liftS(temp, b, temp + w2, 1, 2, 1, width, W_BM, W_BO, W_BS, 0, 0);
    lift(b + w2, temp + w2, temp, 1, 1, 1, width, W_CM, W_CO, W_CS, 1, 0);
    lift(b, temp, b + w2, 1, 1, 1, width, W_DM, W_DO, W_DS, 0, 0);
}
