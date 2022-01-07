
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_STRING ;
 int free (char*) ;
 int hb_audio_encoder_get_from_name (char const*) ;
 int hb_audio_encoder_get_short_name (int) ;
 int * hb_dict_get (int const*,char*) ;
 int hb_error (char*,...) ;
 char* hb_strdup_printf (char*,char const*) ;
 int hb_value_array_append (int *,int ) ;
 int * hb_value_array_get (int *,int) ;
 int * hb_value_array_init () ;
 int hb_value_array_len (int *) ;
 int hb_value_free (int **) ;
 int hb_value_get_int (int *) ;
 char* hb_value_get_string (int *) ;
 int hb_value_string (int ) ;
 scalar_t__ hb_value_type (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static hb_value_t* get_audio_copy_mask(const hb_dict_t * preset, int *mask)
{
    int copy_mask = 0;
    hb_value_array_t *out_copy_mask, *in_copy_mask;

    if (mask != ((void*)0))
        *mask = 0;
    in_copy_mask = hb_dict_get(preset, "AudioCopyMask");
    out_copy_mask = hb_value_array_init();
    if (in_copy_mask != ((void*)0))
    {
        int count, ii;
        count = hb_value_array_len(in_copy_mask);
        for (ii = 0; ii < count; ii++)
        {
            int codec;
            hb_value_t *value;
            value = hb_value_array_get(in_copy_mask, ii);
            if (hb_value_type(value) == HB_VALUE_TYPE_STRING)
            {
                char *tmp = ((void*)0);
                const char * s = hb_value_get_string(value);

                if (strncmp(s, "copy:", 5))
                {
                    s = tmp = hb_strdup_printf("copy:%s", s);
                }
                codec = hb_audio_encoder_get_from_name(s);
                if (codec == 0)
                {
                    hb_error("Invalid audio codec in autopassthru copy mask (%s)", s);
                    hb_error("Codec name is invalid or can not be copied");
                    free(tmp);
                    hb_value_free(&out_copy_mask);
                    return ((void*)0);
                }
                free(tmp);
            }
            else
            {
                codec = hb_value_get_int(value);
            }
            hb_value_array_append(out_copy_mask, hb_value_string(
                hb_audio_encoder_get_short_name(codec)));
            copy_mask |= codec;
        }
    }
    if (mask != ((void*)0))
        *mask = copy_mask;
    return out_copy_mask;
}
