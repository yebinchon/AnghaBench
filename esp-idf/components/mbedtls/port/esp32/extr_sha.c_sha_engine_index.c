
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;





__attribute__((used)) inline static size_t sha_engine_index(esp_sha_type type) {
    switch(type) {
    case 129:
        return 0;
    case 128:
        return 1;
    default:
        return 2;
    }
}
