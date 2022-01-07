
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
 int fprintf (int *,char*,...) ;

__attribute__((used)) static esp_err_t cis_tuple_func_default(const void* p, uint8_t* data, FILE* fp)
{
    const cis_tuple_t* tuple = (const cis_tuple_t*)p;
    uint8_t code = *(data++);
    int size = *(data++);
    if (tuple) {
        fprintf(fp, "TUPLE: %s, size: %d: ", tuple->name, size);
    } else {
        fprintf(fp, "TUPLE: unknown(%02X), size: %d: ", code, size);
    }
    for (int i = 0; i < size; i++) fprintf(fp, "%02X ", *(data++));
    fprintf(fp, "\n");
    return ESP_OK;
}
