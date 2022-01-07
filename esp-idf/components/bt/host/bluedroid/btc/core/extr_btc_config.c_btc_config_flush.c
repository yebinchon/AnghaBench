
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_FILE_PATH ;
 int assert (int ) ;
 int * config ;
 int config_save (int *,int ) ;

void btc_config_flush(void)
{
    assert(config != ((void*)0));

    config_save(config, CONFIG_FILE_PATH);
}
