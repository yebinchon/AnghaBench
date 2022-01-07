
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tCMAC_CB ;
struct TYPE_3__ {int * text; } ;


 TYPE_1__ cmac_cb ;
 int memset (TYPE_1__*,int ,int) ;
 int osi_free (int *) ;

__attribute__((used)) static void cmac_aes_cleanup(void)
{
    if (cmac_cb.text != ((void*)0)) {
        osi_free(cmac_cb.text);
    }
    memset(&cmac_cb, 0, sizeof(tCMAC_CB));
}
