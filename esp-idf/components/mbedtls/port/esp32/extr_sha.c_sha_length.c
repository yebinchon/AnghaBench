
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;







__attribute__((used)) inline static size_t sha_length(esp_sha_type type) {
    switch(type) {
    case 131:
        return 20;
    case 130:
        return 32;
    case 129:
        return 48;
    case 128:
        return 64;
    default:
        return 0;
    }
}
