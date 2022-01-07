
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gap_cb_ptr ;
 int osi_free (int *) ;

void GAP_Deinit(void)
{

    if (gap_cb_ptr) {
        osi_free(gap_cb_ptr);
        gap_cb_ptr = ((void*)0);
    }

}
