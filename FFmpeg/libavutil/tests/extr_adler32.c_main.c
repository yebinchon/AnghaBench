
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_LOG_DEBUG ;
 int LEN ;
 int START_TIMER ;
 int STOP_TIMER (char*) ;
 int av_adler32_update (int,int*,int) ;
 int av_log (int *,int ,char*,int) ;
 int av_log_set_level (int ) ;
 int checksum ;
 int strcmp (char*,char*) ;

int main(int argc, char **argv)
{
    int i;
    uint8_t data[LEN];

    av_log_set_level(AV_LOG_DEBUG);

    for (i = 0; i < LEN; i++)
        data[i] = ((i * i) >> 3) + 123 * i;

    if (argc > 1 && !strcmp(argv[1], "-t")) {
        for (i = 0; i < 1000; i++) {
            START_TIMER;
            checksum = av_adler32_update(1, data, LEN);
            STOP_TIMER("adler");
        }
    } else {
        checksum = av_adler32_update(1, data, LEN);
    }

    av_log(((void*)0), AV_LOG_DEBUG, "%X (expected 50E6E508)\n", checksum);
    return checksum == 0x50e6e508 ? 0 : 1;
}
