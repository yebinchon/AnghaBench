
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int const cpu_flag; scalar_t__ name; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int atoi (char*) ;
 int av_get_cpu_flags () ;
 int dct_error (TYPE_1__*,int,int,int,int) ;
 TYPE_1__* fdct_tab ;
 TYPE_1__* fdct_tab_arch ;
 int ff_ref_dct_init () ;
 int ff_simple_idct248_put ;
 int getopt (int,char**,char*) ;
 int help () ;
 int idct248_error (char*,int ,int) ;
 TYPE_1__* idct_tab ;
 TYPE_1__* idct_tab_arch ;
 int optind ;
 int printf (char*,...) ;

int main(int argc, char **argv)
{
    int test_idct = 0, test_248_dct = 0;
    int c, i;
    int test = 1;
    int speed = 0;
    int err = 0;
    int bits=8;

    ff_ref_dct_init();

    for (;;) {
        c = getopt(argc, argv, "ih4t");
        if (c == -1)
            break;
        switch (c) {
        case 'i':
            test_idct = 1;
            break;
        case '4':
            test_248_dct = 1;
            break;
        case 't':
            speed = 1;
            break;
        default:
        case 'h':
            help();
            return 0;
        }
    }

    if (optind < argc)
        test = atoi(argv[optind]);
    if(optind+1 < argc) bits= atoi(argv[optind+1]);

    printf("ffmpeg DCT/IDCT test\n");

    if (test_248_dct) {
        idct248_error("SIMPLE-C", ff_simple_idct248_put, speed);
    } else {
        const int cpu_flags = av_get_cpu_flags();
        if (test_idct) {
            for (i = 0; i < FF_ARRAY_ELEMS(idct_tab); i++)
                err |= dct_error(&idct_tab[i], test, test_idct, speed, bits);

            for (i = 0; idct_tab_arch[i].name; i++)
                if (!(~cpu_flags & idct_tab_arch[i].cpu_flag))
                    err |= dct_error(&idct_tab_arch[i], test, test_idct, speed, bits);
        }
    }

    if (err)
        printf("Error: %d.\n", err);

    return !!err;
}
