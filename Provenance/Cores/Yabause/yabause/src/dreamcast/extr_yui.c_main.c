
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BFONT_CODE_ISO8859_1 ;
 int DoGui () ;
 int YuiInit (int) ;
 int bfont_set_encoding (int ) ;
 int printf (char*) ;

int main(int argc, char *argv[]) {
    int core;

    printf("...\n");

    bfont_set_encoding(BFONT_CODE_ISO8859_1);
    core = DoGui();
    YuiInit(core);

    return 0;
}
