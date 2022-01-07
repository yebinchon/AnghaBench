
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_object_t ;


 void ssa_close (int *) ;

__attribute__((used)) static void textsub_close( hb_filter_object_t * filter )
{
    return ssa_close(filter);
}
