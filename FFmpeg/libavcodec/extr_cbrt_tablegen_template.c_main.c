
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AAC_RENAME ;


 int WRITE_ARRAY (char*,int ,int ) ;
 int ff_cbrt_tab ;
 int ff_cbrt_tab_fixed ;
 int uint32_t ;
 int write_fileheader () ;

int main(void)
{
    AAC_RENAME(ff_cbrt_tableinit)();

    write_fileheader();




    WRITE_ARRAY("const", uint32_t, ff_cbrt_tab);


    return 0;
}
