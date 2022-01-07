
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int split_state_t ;


 int END_ARG () ;


 int SS_FLAG_ESCAPE ;




size_t esp_console_split_argv(char *line, char **argv, size_t argv_size)
{
    const int QUOTE = '"';
    const int ESCAPE = '\\';
    const int SPACE = ' ';
    split_state_t state = 128;
    int argc = 0;
    char *next_arg_start = line;
    char *out_ptr = line;
    for (char *in_ptr = line; argc < argv_size - 1; ++in_ptr) {
        int char_in = (unsigned char) *in_ptr;
        if (char_in == 0) {
            break;
        }
        int char_out = -1;

        switch (state) {
        case 128:
            if (char_in == SPACE) {

            } else if (char_in == QUOTE) {
                next_arg_start = out_ptr;
                state = 130;
            } else if (char_in == ESCAPE) {
                next_arg_start = out_ptr;
                state = 131;
            } else {
                next_arg_start = out_ptr;
                state = 132;
                char_out = char_in;
            }
            break;

        case 130:
            if (char_in == QUOTE) {
                END_ARG();
            } else if (char_in == ESCAPE) {
                state = 129;
            } else {
                char_out = char_in;
            }
            break;

        case 131:
        case 129:
            if (char_in == ESCAPE || char_in == QUOTE || char_in == SPACE) {
                char_out = char_in;
            } else {

            }
            state = (split_state_t) (state & (~SS_FLAG_ESCAPE));
            break;

        case 132:
            if (char_in == SPACE) {
                END_ARG();
            } else if (char_in == ESCAPE) {
                state = 131;
            } else {
                char_out = char_in;
            }
            break;
        }

        if (char_out >= 0) {
            *out_ptr = char_out;
            ++out_ptr;
        }
    }

    *out_ptr = 0;

    if (state != 128 && argc < argv_size - 1) {
        argv[argc++] = next_arg_start;
    }

    argv[argc] = ((void*)0);

    return argc;
}
