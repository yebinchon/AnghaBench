
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_2__ {char* name; } ;
typedef TYPE_1__ cis_tuple_t ;
typedef int FILE ;


 int ESP_OK ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static esp_err_t cis_tuple_func_end(const void* p, uint8_t* data, FILE* fp)
{
    const cis_tuple_t* tuple = (const cis_tuple_t*)p;
    data++;
    fprintf(fp, "TUPLE: %s\n", tuple->name);
    return ESP_OK;
}
