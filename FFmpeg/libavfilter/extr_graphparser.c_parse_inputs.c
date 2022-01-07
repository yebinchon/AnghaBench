
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* name; int pad_idx; } ;
typedef TYPE_1__ AVFilterInOut ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int WHITESPACES ;
 int append_inout (TYPE_1__**,TYPE_1__**) ;
 int av_free (char*) ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_1__* extract_inout (char*,TYPE_1__**) ;
 char* parse_link_name (char const**,void*) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static int parse_inputs(const char **buf, AVFilterInOut **curr_inputs,
                        AVFilterInOut **open_outputs, void *log_ctx)
{
    AVFilterInOut *parsed_inputs = ((void*)0);
    int pad = 0;

    while (**buf == '[') {
        char *name = parse_link_name(buf, log_ctx);
        AVFilterInOut *match;

        if (!name)
            return AVERROR(EINVAL);


        match = extract_inout(name, open_outputs);

        if (match) {
            av_free(name);
        } else {

            if (!(match = av_mallocz(sizeof(AVFilterInOut)))) {
                av_free(name);
                return AVERROR(ENOMEM);
            }
            match->name = name;
            match->pad_idx = pad;
        }

        append_inout(&parsed_inputs, &match);

        *buf += strspn(*buf, WHITESPACES);
        pad++;
    }

    append_inout(&parsed_inputs, curr_inputs);
    *curr_inputs = parsed_inputs;

    return pad;
}
