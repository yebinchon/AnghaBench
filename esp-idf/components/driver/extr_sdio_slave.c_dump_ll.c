
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lldesc_t ;


 int ESP_EARLY_LOGI (int ,char*,int) ;
 int * STAILQ_NEXT (int *,int ) ;
 int TAG ;
 int qe ;
 int show_ll (int *) ;

__attribute__((used)) static void __attribute((unused)) dump_ll(lldesc_t *queue)
{
    int cnt = 0;
    lldesc_t *item = queue;
    while (item != ((void*)0)) {
        cnt++;
        show_ll(item);
        item = STAILQ_NEXT(item, qe);
    }
    ESP_EARLY_LOGI(TAG, "total: %d", cnt);
}
