
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int h_scan ;
 int * hb_title_to_dict (int ,int) ;

GhbValue*
ghb_get_title_dict(int title_id)
{
    return hb_title_to_dict(h_scan, title_id);
}
