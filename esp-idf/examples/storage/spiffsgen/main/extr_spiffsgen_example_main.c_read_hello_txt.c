
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void read_hello_txt(void)
{
    ESP_LOGI(TAG, "Reading hello.txt");


    FILE* f = fopen("/spiffs/hello.txt", "r");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open hello.txt");
        return;
    }

    char buf[64];
    memset(buf, 0, sizeof(buf));
    fread(buf, 1, sizeof(buf), f);
    fclose(f);


    ESP_LOGI(TAG, "Read from hello.txt: %s", buf);
}
