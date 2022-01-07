
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* int32_t ;
typedef int int16_t ;


 int memcpy (int*,void**,int) ;
 int sign_extend (int,int) ;
 int sign_only (int) ;

__attribute__((used)) static void lpc_prediction(int32_t *error_buffer, uint32_t *buffer_out,
                           int nb_samples, int bps, int16_t *lpc_coefs,
                           int lpc_order, int lpc_quant)
{
    int i;
    uint32_t *pred = buffer_out;


    *buffer_out = *error_buffer;

    if (nb_samples <= 1)
        return;

    if (!lpc_order) {
        memcpy(&buffer_out[1], &error_buffer[1],
               (nb_samples - 1) * sizeof(*buffer_out));
        return;
    }

    if (lpc_order == 31) {

        for (i = 1; i < nb_samples; i++) {
            buffer_out[i] = sign_extend(buffer_out[i - 1] + error_buffer[i],
                                        bps);
        }
        return;
    }


    for (i = 1; i <= lpc_order && i < nb_samples; i++)
        buffer_out[i] = sign_extend(buffer_out[i - 1] + error_buffer[i], bps);



    for (; i < nb_samples; i++) {
        int j;
        int val = 0;
        unsigned error_val = error_buffer[i];
        int error_sign;
        int d = *pred++;


        for (j = 0; j < lpc_order; j++)
            val += (pred[j] - d) * lpc_coefs[j];
        val = (val + (1LL << (lpc_quant - 1))) >> lpc_quant;
        val += d + error_val;
        buffer_out[i] = sign_extend(val, bps);


        error_sign = sign_only(error_val);
        if (error_sign) {
            for (j = 0; j < lpc_order && (int)(error_val * error_sign) > 0; j++) {
                int sign;
                val = d - pred[j];
                sign = sign_only(val) * error_sign;
                lpc_coefs[j] -= sign;
                val *= sign;
                error_val -= (val >> lpc_quant) * (j + 1);
            }
        }
    }
}
