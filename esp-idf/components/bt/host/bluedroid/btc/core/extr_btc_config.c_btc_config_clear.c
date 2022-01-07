
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_FILE_PATH ;
 int assert (int ) ;
 int * config ;
 int config_free (int *) ;
 int * config_new_empty () ;
 int config_save (int *,int ) ;

int btc_config_clear(void)
{
    assert(config != ((void*)0));

    config_free(config);

    config = config_new_empty();
    if (config == ((void*)0)) {
        return 0;
    }
    int ret = config_save(config, CONFIG_FILE_PATH);
    return ret;
}
