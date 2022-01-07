
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GhbValue ;


 int json_equal (int *,int *) ;

gint
ghb_value_cmp(const GhbValue *vala, const GhbValue *valb)
{
    return !json_equal((GhbValue*)vala, (GhbValue*)valb);
}
