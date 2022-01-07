
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HASH_SIZE ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_free (int ) ;
 int av_md5_alloc () ;
 int av_write_frame (int ,int *) ;
 int check (int,char*,...) ;
 scalar_t__ check_faults ;
 int clear_duration ;
 int close_out () ;
 int ctx ;
 int do_interleave ;
 int duration ;
 int fake_pkt_duration ;
 int finish () ;
 int force_iobuf_size ;
 char* format ;
 int getopt (int,char**,char*) ;
 int gop_size ;
 int hash ;
 int help () ;
 int init (int,int) ;
 int init_count_warnings () ;
 int init_fps (int,int,int) ;
 int init_out (char*) ;
 int md5 ;
 int memcmp (int ,int *,int) ;
 int memcpy (int *,int ,int) ;
 int mux_frames (int,int) ;
 int mux_gops (int) ;
 scalar_t__ num_warnings ;
 int opts ;
 int out_size ;
 int reset_count_warnings () ;
 int signal_init_ts () ;
 int skip_gops (int) ;
 int skip_write_audio ;
 int write_file ;

int main(int argc, char **argv)
{
    int c;
    uint8_t header[HASH_SIZE];
    uint8_t content[HASH_SIZE];
    int empty_moov_pos;
    int prev_pos;

    for (;;) {
        c = getopt(argc, argv, "wh");
        if (c == -1)
            break;
        switch (c) {
        case 'w':
            write_file = 1;
            break;
        default:
        case 'h':
            help();
            return 0;
        }
    }

    md5 = av_md5_alloc();
    if (!md5)
        return 1;




    init_out("non-empty-moov");
    av_dict_set(&opts, "movflags", "frag_keyframe", 0);
    init(0, 0);
    mux_gops(2);
    finish();
    close_out();



    init_out("non-empty-moov-elst");
    av_dict_set(&opts, "movflags", "frag_keyframe", 0);
    av_dict_set(&opts, "use_editlist", "1", 0);
    init(1, 1);
    mux_gops(2);
    finish();
    close_out();





    init_out("non-empty-moov-no-elst");
    av_dict_set(&opts, "movflags", "frag_keyframe", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(1, 0);
    mux_gops(2);
    finish();
    close_out();

    format = "ismv";

    init_out("ismv");
    av_dict_set(&opts, "movflags", "frag_keyframe", 0);
    init(1, 1);
    mux_gops(2);
    finish();
    close_out();
    format = "mp4";



    init_out("empty-moov");
    av_dict_set(&opts, "movflags", "frag_keyframe+empty_moov", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(0, 0);
    mux_gops(2);
    finish();
    close_out();
    memcpy(content, hash, HASH_SIZE);




    init_out("empty-moov-no-elst");
    av_dict_set(&opts, "movflags", "frag_keyframe+empty_moov", 0);
    init(1, 0);
    mux_gops(2);
    finish();
    close_out();





    init_count_warnings();
    init_out("empty-moov-no-elst-no-adjust");
    av_dict_set(&opts, "movflags", "frag_keyframe+empty_moov", 0);
    av_dict_set(&opts, "avoid_negative_ts", "0", 0);
    init(1, 0);
    mux_gops(2);
    finish();
    close_out();

    reset_count_warnings();
    check(num_warnings > 0, "No warnings printed for unhandled start offset");



    init_out("delay-moov");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(0, 0);
    mux_gops(2);
    finish();
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "delay_moov differs from empty_moov");


    init_out("delay-moov-elst");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov", 0);
    init(1, 1);
    mux_gops(2);
    finish();
    close_out();


    skip_write_audio = 1;
    init_out("delay-moov-empty-track");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov", 0);
    init(0, 0);
    mux_gops(2);


    check(out_size == 0, "delay_moov flushed prematurely");


    finish();
    close_out();
    check(out_size > 0, "delay_moov didn't output anything");



    init_out("delay-moov-empty-track-flush");
    av_dict_set(&opts, "movflags", "frag_custom+delay_moov", 0);
    init(0, 0);
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    check(out_size > 0, "No moov written");
    av_write_frame(ctx, ((void*)0));
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    finish();
    close_out();

    skip_write_audio = 0;





    init_out("empty-moov-header");
    av_dict_set(&opts, "movflags", "frag_keyframe+empty_moov", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(0, 0);
    close_out();
    memcpy(header, hash, HASH_SIZE);
    init_out("empty-moov-content");
    mux_gops(2);

    check(out_size > 0, "No automatic flush?");
    empty_moov_pos = prev_pos = out_size;

    av_write_frame(ctx, ((void*)0));
    check(out_size > prev_pos, "No second fragment flushed?");
    prev_pos = out_size;

    av_write_frame(ctx, ((void*)0));
    check(out_size == prev_pos, "More data written?");
    close_out();
    memcpy(content, hash, HASH_SIZE);

    finish();

    init_out("delay-moov-header");
    av_dict_set(&opts, "movflags", "frag_custom+delay_moov", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(0, 0);
    check(out_size == 0, "Output written during init with delay_moov");
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, header, HASH_SIZE), "delay_moov header differs from empty_moov");
    init_out("delay-moov-content");
    av_write_frame(ctx, ((void*)0));
    check(out_size == empty_moov_pos, "Manually flushed content differs from automatically flushed, %d vs %d", out_size, empty_moov_pos);
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "delay_moov content differs from empty_moov");
    finish();





    av_dict_set(&opts, "movflags", "frag_custom+empty_moov+dash", 0);
    init(0, 0);
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    init_out("empty-moov-second-frag");
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    memcpy(content, hash, HASH_SIZE);
    finish();



    av_dict_set(&opts, "movflags", "frag_custom+empty_moov+dash+frag_discont", 0);
    av_dict_set(&opts, "fragment_index", "2", 0);
    av_dict_set(&opts, "avoid_negative_ts", "0", 0);
    av_dict_set(&opts, "use_editlist", "0", 0);
    init(0, 0);
    skip_gops(1);
    init_out("empty-moov-second-frag-discont");
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "discontinuously written fragment differs");
    finish();



    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash+frag_discont", 0);
    av_dict_set(&opts, "fragment_index", "2", 0);
    init(0, 0);
    skip_gops(1);
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    init_out("delay-moov-second-frag-discont");
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "discontinuously written fragment differs");
    finish();





    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash", 0);
    init(1, 0);
    mux_gops(1);
    init_out("delay-moov-elst-init");
    av_write_frame(ctx, ((void*)0));
    close_out();
    memcpy(header, hash, HASH_SIZE);
    av_write_frame(ctx, ((void*)0));
    init_out("delay-moov-elst-second-frag");
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    memcpy(content, hash, HASH_SIZE);
    finish();

    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash+frag_discont", 0);
    av_dict_set(&opts, "fragment_index", "2", 0);
    init(1, 0);
    skip_gops(1);
    mux_gops(1);
    init_out("delay-moov-elst-init-discont");
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, header, HASH_SIZE), "discontinuously written header differs");
    init_out("delay-moov-elst-second-frag-discont");
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "discontinuously written fragment differs");
    finish();




    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash", 0);
    init(1, 1);
    mux_gops(1);
    init_out("delay-moov-elst-signal-init");
    av_write_frame(ctx, ((void*)0));
    close_out();
    memcpy(header, hash, HASH_SIZE);
    av_write_frame(ctx, ((void*)0));
    init_out("delay-moov-elst-signal-second-frag");
    mux_gops(1);
    av_write_frame(ctx, ((void*)0));
    close_out();
    memcpy(content, hash, HASH_SIZE);
    finish();

    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash+frag_discont", 0);
    av_dict_set(&opts, "fragment_index", "2", 0);
    init(1, 1);
    signal_init_ts();
    skip_gops(1);
    mux_gops(1);
    init_out("delay-moov-elst-signal-init-discont");
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, header, HASH_SIZE), "discontinuously written header differs");
    init_out("delay-moov-elst-signal-second-frag-discont");
    av_write_frame(ctx, ((void*)0));
    close_out();
    check(!memcmp(hash, content, HASH_SIZE), "discontinuously written fragment differs");
    finish();



    av_dict_set(&opts, "movflags", "frag_custom+delay_moov+dash+frag_discont", 0);
    av_dict_set(&opts, "fragment_index", "2", 0);
    init(1, 1);
    signal_init_ts();
    skip_gops(1);
    mux_frames(gop_size, 1);
    init_out("delay-moov-elst-signal-init-discont-largets");
    av_write_frame(ctx, ((void*)0));
    close_out();
    init_out("delay-moov-elst-signal-second-frag-discont-largets");
    av_write_frame(ctx, ((void*)0));
    close_out();
    finish();
    init_out("vfr");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov+dash", 0);
    init_fps(1, 1, 3);
    mux_frames(gop_size/2, 0);
    duration /= 10;
    mux_frames(gop_size/2, 0);
    mux_gops(1);
    finish();
    close_out();
    init_count_warnings();
    clear_duration = 1;
    init_out("vfr-noduration");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov+dash", 0);
    init_fps(1, 1, 3);
    mux_frames(gop_size/2, 0);
    duration /= 10;
    mux_frames(gop_size/2, 0);
    mux_gops(1);
    finish();
    close_out();
    clear_duration = 0;
    reset_count_warnings();
    check(num_warnings > 0, "No warnings printed for filled in durations");



    force_iobuf_size = 1500;
    init_out("large_frag");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov", 0);
    init_fps(1, 1, 3);
    mux_gops(2);
    finish();
    close_out();
    force_iobuf_size = 0;





    do_interleave = 1;
    init_out("vfr-noduration-interleave");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov", 0);
    av_dict_set(&opts, "frag_duration", "650000", 0);
    init_fps(1, 1, 30);
    mux_frames(gop_size/2, 0);



    fake_pkt_duration = duration;
    duration *= 10;
    mux_frames(1, 0);
    fake_pkt_duration = 0;
    duration /= 10;
    mux_frames(gop_size/2 - 1, 0);
    mux_gops(1);
    finish();
    close_out();
    clear_duration = 0;
    do_interleave = 0;




    init_out("delay-moov-elst-neg-cts");
    av_dict_set(&opts, "movflags", "frag_keyframe+delay_moov+negative_cts_offsets", 0);
    init(1, 1);
    mux_gops(2);
    finish();
    close_out();




    init_out("empty-moov-neg-cts");
    av_dict_set(&opts, "movflags", "frag_keyframe+empty_moov+negative_cts_offsets", 0);
    init(1, 0);
    mux_gops(2);
    finish();
    close_out();

    av_free(md5);

    return check_faults > 0 ? 1 : 0;
}
