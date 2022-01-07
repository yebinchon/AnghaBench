
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SWORD ;


 double MAX_SAMPLE ;
 double M_PI ;
 size_t POKEYSND_SAMPBUF_MAX ;
 int* POKEYSND_sampbuf_cnt ;
 size_t POKEYSND_sampbuf_ptr ;
 size_t POKEYSND_sampbuf_rptr ;
 double* POKEYSND_sampbuf_val ;
 double POKEYSND_sampout ;
 double RAND_MAX ;
 scalar_t__ floor (double) ;
 double generate_sample (scalar_t__) ;
 int num_cur_pokeys ;
 scalar_t__ pokey_states ;
 double rand () ;

__attribute__((used)) static void mzpokeysnd_process_16(void* sndbuffer, int sndn)
{
    int i;
    int nsam = sndn;
    SWORD *buffer = (SWORD *) sndbuffer;

    if(num_cur_pokeys<1)
        return;



    while(nsam >= (int) num_cur_pokeys)
    {
        buffer[0] = (SWORD)floor((generate_sample(pokey_states) - MAX_SAMPLE / 2.0)
         * (65535.0 / MAX_SAMPLE / 4 * M_PI * 0.95) + 0.5 + 0.5 * rand() / RAND_MAX - 0.25);

        for(i=1; i<num_cur_pokeys; i++)
        {
            buffer[i] = (SWORD)floor((generate_sample(pokey_states + i) - MAX_SAMPLE / 2.0)
             * (65535.0 / MAX_SAMPLE / 4 * M_PI * 0.95) + 0.5 + 0.5 * rand() / RAND_MAX - 0.25);
        }
        buffer += num_cur_pokeys;
        nsam -= num_cur_pokeys;
    }
}
