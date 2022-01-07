; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wh\00", align 1
@write_file = common dso_local global i32 0, align 4
@md5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"non-empty-moov\00", align 1
@opts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"movflags\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"frag_keyframe\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"non-empty-moov-elst\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"use_editlist\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"non-empty-moov-no-elst\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ismv\00", align 1
@format = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"empty-moov\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"frag_keyframe+empty_moov\00", align 1
@hash = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"empty-moov-no-elst\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"empty-moov-no-elst-no-adjust\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"avoid_negative_ts\00", align 1
@num_warnings = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"No warnings printed for unhandled start offset\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"delay-moov\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"frag_keyframe+delay_moov\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"delay_moov differs from empty_moov\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"delay-moov-elst\00", align 1
@skip_write_audio = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [23 x i8] c"delay-moov-empty-track\00", align 1
@out_size = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [31 x i8] c"delay_moov flushed prematurely\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"delay_moov didn't output anything\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"delay-moov-empty-track-flush\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"frag_custom+delay_moov\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"No moov written\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"empty-moov-header\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"empty-moov-content\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"No automatic flush?\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"No second fragment flushed?\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"More data written?\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"delay-moov-header\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"Output written during init with delay_moov\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"delay_moov header differs from empty_moov\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"delay-moov-content\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"Manually flushed content differs from automatically flushed, %d vs %d\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"delay_moov content differs from empty_moov\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"frag_custom+empty_moov+dash\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"empty-moov-second-frag\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"frag_custom+empty_moov+dash+frag_discont\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"fragment_index\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"empty-moov-second-frag-discont\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"discontinuously written fragment differs\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"frag_custom+delay_moov+dash+frag_discont\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"delay-moov-second-frag-discont\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"frag_custom+delay_moov+dash\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"delay-moov-elst-init\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"delay-moov-elst-second-frag\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"delay-moov-elst-init-discont\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"discontinuously written header differs\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"delay-moov-elst-second-frag-discont\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"delay-moov-elst-signal-init\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"delay-moov-elst-signal-second-frag\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"delay-moov-elst-signal-init-discont\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"delay-moov-elst-signal-second-frag-discont\00", align 1
@gop_size = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [44 x i8] c"delay-moov-elst-signal-init-discont-largets\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"delay-moov-elst-signal-second-frag-discont-largets\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"vfr\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"frag_keyframe+delay_moov+dash\00", align 1
@duration = common dso_local global i32 0, align 4
@clear_duration = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [15 x i8] c"vfr-noduration\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"No warnings printed for filled in durations\00", align 1
@force_iobuf_size = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [11 x i8] c"large_frag\00", align 1
@do_interleave = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [26 x i8] c"vfr-noduration-interleave\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"frag_duration\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"650000\00", align 1
@fake_pkt_duration = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [24 x i8] c"delay-moov-elst-neg-cts\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"frag_keyframe+delay_moov+negative_cts_offsets\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"empty-moov-neg-cts\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"frag_keyframe+empty_moov+negative_cts_offsets\00", align 1
@check_faults = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @HASH_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @HASH_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %30 [
    i32 119, label %29
    i32 104, label %31
  ]

29:                                               ; preds = %27
  store i32 1, i32* @write_file, align 4
  br label %33

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %27, %30
  %32 = call i32 (...) @help()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %467

33:                                               ; preds = %29
  br label %20

34:                                               ; preds = %26
  %35 = call i32 (...) @av_md5_alloc()
  store i32 %35, i32* @md5, align 4
  %36 = load i32, i32* @md5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %467

39:                                               ; preds = %34
  %40 = call i32 @init_out(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %42 = call i32 @init(i32 0, i32 0)
  %43 = call i32 @mux_gops(i32 2)
  %44 = call i32 (...) @finish()
  %45 = call i32 (...) @close_out()
  %46 = call i32 @init_out(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %48 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %49 = call i32 @init(i32 1, i32 1)
  %50 = call i32 @mux_gops(i32 2)
  %51 = call i32 (...) @finish()
  %52 = call i32 (...) @close_out()
  %53 = call i32 @init_out(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %54 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %55 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %56 = call i32 @init(i32 1, i32 0)
  %57 = call i32 @mux_gops(i32 2)
  %58 = call i32 (...) @finish()
  %59 = call i32 (...) @close_out()
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** @format, align 8
  %60 = call i32 @init_out(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %61 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %62 = call i32 @init(i32 1, i32 1)
  %63 = call i32 @mux_gops(i32 2)
  %64 = call i32 (...) @finish()
  %65 = call i32 (...) @close_out()
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** @format, align 8
  %66 = call i32 @init_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %67 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %68 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %69 = call i32 @init(i32 0, i32 0)
  %70 = call i32 @mux_gops(i32 2)
  %71 = call i32 (...) @finish()
  %72 = call i32 (...) @close_out()
  %73 = load i32, i32* @hash, align 4
  %74 = load i32, i32* @HASH_SIZE, align 4
  %75 = call i32 @memcpy(i32* %19, i32 %73, i32 %74)
  %76 = call i32 @init_out(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %77 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %78 = call i32 @init(i32 1, i32 0)
  %79 = call i32 @mux_gops(i32 2)
  %80 = call i32 (...) @finish()
  %81 = call i32 (...) @close_out()
  %82 = call i32 (...) @init_count_warnings()
  %83 = call i32 @init_out(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %84 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %85 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %86 = call i32 @init(i32 1, i32 0)
  %87 = call i32 @mux_gops(i32 2)
  %88 = call i32 (...) @finish()
  %89 = call i32 (...) @close_out()
  %90 = call i32 (...) @reset_count_warnings()
  %91 = load i64, i64* @num_warnings, align 8
  %92 = icmp sgt i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @check(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %95 = call i32 @init_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %96 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %97 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %98 = call i32 @init(i32 0, i32 0)
  %99 = call i32 @mux_gops(i32 2)
  %100 = call i32 (...) @finish()
  %101 = call i32 (...) @close_out()
  %102 = load i32, i32* @hash, align 4
  %103 = load i32, i32* @HASH_SIZE, align 4
  %104 = call i32 @memcmp(i32 %102, i32* %19, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @check(i32 %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %109 = call i32 @init_out(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %110 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %111 = call i32 @init(i32 1, i32 1)
  %112 = call i32 @mux_gops(i32 2)
  %113 = call i32 (...) @finish()
  %114 = call i32 (...) @close_out()
  store i32 1, i32* @skip_write_audio, align 4
  %115 = call i32 @init_out(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %116 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %117 = call i32 @init(i32 0, i32 0)
  %118 = call i32 @mux_gops(i32 2)
  %119 = load i32, i32* @out_size, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @check(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %123 = call i32 (...) @finish()
  %124 = call i32 (...) @close_out()
  %125 = load i32, i32* @out_size, align 4
  %126 = icmp sgt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @check(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  %129 = call i32 @init_out(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  %130 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 0)
  %131 = call i32 @init(i32 0, i32 0)
  %132 = call i32 @mux_gops(i32 1)
  %133 = load i32, i32* @ctx, align 4
  %134 = call i32 @av_write_frame(i32 %133, i32* null)
  %135 = load i32, i32* @out_size, align 4
  %136 = icmp sgt i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @check(i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %139 = load i32, i32* @ctx, align 4
  %140 = call i32 @av_write_frame(i32 %139, i32* null)
  %141 = call i32 @mux_gops(i32 1)
  %142 = load i32, i32* @ctx, align 4
  %143 = call i32 @av_write_frame(i32 %142, i32* null)
  %144 = call i32 (...) @finish()
  %145 = call i32 (...) @close_out()
  store i32 0, i32* @skip_write_audio, align 4
  %146 = call i32 @init_out(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %147 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %148 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %149 = call i32 @init(i32 0, i32 0)
  %150 = call i32 (...) @close_out()
  %151 = load i32, i32* @hash, align 4
  %152 = load i32, i32* @HASH_SIZE, align 4
  %153 = call i32 @memcpy(i32* %16, i32 %151, i32 %152)
  %154 = call i32 @init_out(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %155 = call i32 @mux_gops(i32 2)
  %156 = load i32, i32* @out_size, align 4
  %157 = icmp sgt i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @check(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  %160 = load i32, i32* @out_size, align 4
  store i32 %160, i32* %11, align 4
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @ctx, align 4
  %162 = call i32 @av_write_frame(i32 %161, i32* null)
  %163 = load i32, i32* @out_size, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp sgt i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @check(i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0))
  %168 = load i32, i32* @out_size, align 4
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* @ctx, align 4
  %170 = call i32 @av_write_frame(i32 %169, i32* null)
  %171 = load i32, i32* @out_size, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @check(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %176 = call i32 (...) @close_out()
  %177 = load i32, i32* @hash, align 4
  %178 = load i32, i32* @HASH_SIZE, align 4
  %179 = call i32 @memcpy(i32* %19, i32 %177, i32 %178)
  %180 = call i32 (...) @finish()
  %181 = call i32 @init_out(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %182 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 0)
  %183 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %184 = call i32 @init(i32 0, i32 0)
  %185 = load i32, i32* @out_size, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 (i32, i8*, ...) @check(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0))
  %189 = call i32 @mux_gops(i32 1)
  %190 = load i32, i32* @ctx, align 4
  %191 = call i32 @av_write_frame(i32 %190, i32* null)
  %192 = call i32 (...) @close_out()
  %193 = load i32, i32* @hash, align 4
  %194 = load i32, i32* @HASH_SIZE, align 4
  %195 = call i32 @memcmp(i32 %193, i32* %16, i32 %194)
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @check(i32 %198, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0))
  %200 = call i32 @init_out(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %201 = load i32, i32* @ctx, align 4
  %202 = call i32 @av_write_frame(i32 %201, i32* null)
  %203 = load i32, i32* @out_size, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* @out_size, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 (i32, i8*, ...) @check(i32 %206, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.36, i64 0, i64 0), i32 %207, i32 %208)
  %210 = call i32 @mux_gops(i32 1)
  %211 = load i32, i32* @ctx, align 4
  %212 = call i32 @av_write_frame(i32 %211, i32* null)
  %213 = call i32 (...) @close_out()
  %214 = load i32, i32* @hash, align 4
  %215 = load i32, i32* @HASH_SIZE, align 4
  %216 = call i32 @memcmp(i32 %214, i32* %19, i32 %215)
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = call i32 (i32, i8*, ...) @check(i32 %219, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0))
  %221 = call i32 (...) @finish()
  %222 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i32 0)
  %223 = call i32 @init(i32 0, i32 0)
  %224 = call i32 @mux_gops(i32 1)
  %225 = load i32, i32* @ctx, align 4
  %226 = call i32 @av_write_frame(i32 %225, i32* null)
  %227 = call i32 @init_out(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  %228 = call i32 @mux_gops(i32 1)
  %229 = load i32, i32* @ctx, align 4
  %230 = call i32 @av_write_frame(i32 %229, i32* null)
  %231 = call i32 (...) @close_out()
  %232 = load i32, i32* @hash, align 4
  %233 = load i32, i32* @HASH_SIZE, align 4
  %234 = call i32 @memcpy(i32* %19, i32 %232, i32 %233)
  %235 = call i32 (...) @finish()
  %236 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0), i32 0)
  %237 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 0)
  %238 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %239 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %240 = call i32 @init(i32 0, i32 0)
  %241 = call i32 @skip_gops(i32 1)
  %242 = call i32 @init_out(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0))
  %243 = call i32 @mux_gops(i32 1)
  %244 = load i32, i32* @ctx, align 4
  %245 = call i32 @av_write_frame(i32 %244, i32* null)
  %246 = call i32 (...) @close_out()
  %247 = load i32, i32* @hash, align 4
  %248 = load i32, i32* @HASH_SIZE, align 4
  %249 = call i32 @memcmp(i32 %247, i32* %19, i32 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 (i32, i8*, ...) @check(i32 %252, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %254 = call i32 (...) @finish()
  %255 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i32 0)
  %256 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 0)
  %257 = call i32 @init(i32 0, i32 0)
  %258 = call i32 @skip_gops(i32 1)
  %259 = call i32 @mux_gops(i32 1)
  %260 = load i32, i32* @ctx, align 4
  %261 = call i32 @av_write_frame(i32 %260, i32* null)
  %262 = call i32 @init_out(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0))
  %263 = load i32, i32* @ctx, align 4
  %264 = call i32 @av_write_frame(i32 %263, i32* null)
  %265 = call i32 (...) @close_out()
  %266 = load i32, i32* @hash, align 4
  %267 = load i32, i32* @HASH_SIZE, align 4
  %268 = call i32 @memcmp(i32 %266, i32* %19, i32 %267)
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = call i32 (i32, i8*, ...) @check(i32 %271, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %273 = call i32 (...) @finish()
  %274 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i32 0)
  %275 = call i32 @init(i32 1, i32 0)
  %276 = call i32 @mux_gops(i32 1)
  %277 = call i32 @init_out(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  %278 = load i32, i32* @ctx, align 4
  %279 = call i32 @av_write_frame(i32 %278, i32* null)
  %280 = call i32 (...) @close_out()
  %281 = load i32, i32* @hash, align 4
  %282 = load i32, i32* @HASH_SIZE, align 4
  %283 = call i32 @memcpy(i32* %16, i32 %281, i32 %282)
  %284 = load i32, i32* @ctx, align 4
  %285 = call i32 @av_write_frame(i32 %284, i32* null)
  %286 = call i32 @init_out(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0))
  %287 = call i32 @mux_gops(i32 1)
  %288 = load i32, i32* @ctx, align 4
  %289 = call i32 @av_write_frame(i32 %288, i32* null)
  %290 = call i32 (...) @close_out()
  %291 = load i32, i32* @hash, align 4
  %292 = load i32, i32* @HASH_SIZE, align 4
  %293 = call i32 @memcpy(i32* %19, i32 %291, i32 %292)
  %294 = call i32 (...) @finish()
  %295 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i32 0)
  %296 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 0)
  %297 = call i32 @init(i32 1, i32 0)
  %298 = call i32 @skip_gops(i32 1)
  %299 = call i32 @mux_gops(i32 1)
  %300 = call i32 @init_out(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0))
  %301 = load i32, i32* @ctx, align 4
  %302 = call i32 @av_write_frame(i32 %301, i32* null)
  %303 = call i32 (...) @close_out()
  %304 = load i32, i32* @hash, align 4
  %305 = load i32, i32* @HASH_SIZE, align 4
  %306 = call i32 @memcmp(i32 %304, i32* %16, i32 %305)
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = call i32 (i32, i8*, ...) @check(i32 %309, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %311 = call i32 @init_out(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0))
  %312 = load i32, i32* @ctx, align 4
  %313 = call i32 @av_write_frame(i32 %312, i32* null)
  %314 = call i32 (...) @close_out()
  %315 = load i32, i32* @hash, align 4
  %316 = load i32, i32* @HASH_SIZE, align 4
  %317 = call i32 @memcmp(i32 %315, i32* %19, i32 %316)
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  %321 = call i32 (i32, i8*, ...) @check(i32 %320, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %322 = call i32 (...) @finish()
  %323 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i32 0)
  %324 = call i32 @init(i32 1, i32 1)
  %325 = call i32 @mux_gops(i32 1)
  %326 = call i32 @init_out(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0))
  %327 = load i32, i32* @ctx, align 4
  %328 = call i32 @av_write_frame(i32 %327, i32* null)
  %329 = call i32 (...) @close_out()
  %330 = load i32, i32* @hash, align 4
  %331 = load i32, i32* @HASH_SIZE, align 4
  %332 = call i32 @memcpy(i32* %16, i32 %330, i32 %331)
  %333 = load i32, i32* @ctx, align 4
  %334 = call i32 @av_write_frame(i32 %333, i32* null)
  %335 = call i32 @init_out(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0))
  %336 = call i32 @mux_gops(i32 1)
  %337 = load i32, i32* @ctx, align 4
  %338 = call i32 @av_write_frame(i32 %337, i32* null)
  %339 = call i32 (...) @close_out()
  %340 = load i32, i32* @hash, align 4
  %341 = load i32, i32* @HASH_SIZE, align 4
  %342 = call i32 @memcpy(i32* %19, i32 %340, i32 %341)
  %343 = call i32 (...) @finish()
  %344 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i32 0)
  %345 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 0)
  %346 = call i32 @init(i32 1, i32 1)
  %347 = call i32 (...) @signal_init_ts()
  %348 = call i32 @skip_gops(i32 1)
  %349 = call i32 @mux_gops(i32 1)
  %350 = call i32 @init_out(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0))
  %351 = load i32, i32* @ctx, align 4
  %352 = call i32 @av_write_frame(i32 %351, i32* null)
  %353 = call i32 (...) @close_out()
  %354 = load i32, i32* @hash, align 4
  %355 = load i32, i32* @HASH_SIZE, align 4
  %356 = call i32 @memcmp(i32 %354, i32* %16, i32 %355)
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  %360 = call i32 (i32, i8*, ...) @check(i32 %359, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %361 = call i32 @init_out(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i64 0, i64 0))
  %362 = load i32, i32* @ctx, align 4
  %363 = call i32 @av_write_frame(i32 %362, i32* null)
  %364 = call i32 (...) @close_out()
  %365 = load i32, i32* @hash, align 4
  %366 = load i32, i32* @HASH_SIZE, align 4
  %367 = call i32 @memcmp(i32 %365, i32* %19, i32 %366)
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = zext i1 %369 to i32
  %371 = call i32 (i32, i8*, ...) @check(i32 %370, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %372 = call i32 (...) @finish()
  %373 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i32 0)
  %374 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i32 0)
  %375 = call i32 @init(i32 1, i32 1)
  %376 = call i32 (...) @signal_init_ts()
  %377 = call i32 @skip_gops(i32 1)
  %378 = load i32, i32* @gop_size, align 4
  %379 = call i32 @mux_frames(i32 %378, i32 1)
  %380 = call i32 @init_out(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0))
  %381 = load i32, i32* @ctx, align 4
  %382 = call i32 @av_write_frame(i32 %381, i32* null)
  %383 = call i32 (...) @close_out()
  %384 = call i32 @init_out(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.58, i64 0, i64 0))
  %385 = load i32, i32* @ctx, align 4
  %386 = call i32 @av_write_frame(i32 %385, i32* null)
  %387 = call i32 (...) @close_out()
  %388 = call i32 (...) @finish()
  %389 = call i32 @init_out(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0))
  %390 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i32 0)
  %391 = call i32 @init_fps(i32 1, i32 1, i32 3)
  %392 = load i32, i32* @gop_size, align 4
  %393 = sdiv i32 %392, 2
  %394 = call i32 @mux_frames(i32 %393, i32 0)
  %395 = load i32, i32* @duration, align 4
  %396 = sdiv i32 %395, 10
  store i32 %396, i32* @duration, align 4
  %397 = load i32, i32* @gop_size, align 4
  %398 = sdiv i32 %397, 2
  %399 = call i32 @mux_frames(i32 %398, i32 0)
  %400 = call i32 @mux_gops(i32 1)
  %401 = call i32 (...) @finish()
  %402 = call i32 (...) @close_out()
  %403 = call i32 (...) @init_count_warnings()
  store i32 1, i32* @clear_duration, align 4
  %404 = call i32 @init_out(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0))
  %405 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i32 0)
  %406 = call i32 @init_fps(i32 1, i32 1, i32 3)
  %407 = load i32, i32* @gop_size, align 4
  %408 = sdiv i32 %407, 2
  %409 = call i32 @mux_frames(i32 %408, i32 0)
  %410 = load i32, i32* @duration, align 4
  %411 = sdiv i32 %410, 10
  store i32 %411, i32* @duration, align 4
  %412 = load i32, i32* @gop_size, align 4
  %413 = sdiv i32 %412, 2
  %414 = call i32 @mux_frames(i32 %413, i32 0)
  %415 = call i32 @mux_gops(i32 1)
  %416 = call i32 (...) @finish()
  %417 = call i32 (...) @close_out()
  store i32 0, i32* @clear_duration, align 4
  %418 = call i32 (...) @reset_count_warnings()
  %419 = load i64, i64* @num_warnings, align 8
  %420 = icmp sgt i64 %419, 0
  %421 = zext i1 %420 to i32
  %422 = call i32 (i32, i8*, ...) @check(i32 %421, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i64 0, i64 0))
  store i32 1500, i32* @force_iobuf_size, align 4
  %423 = call i32 @init_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  %424 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %425 = call i32 @init_fps(i32 1, i32 1, i32 3)
  %426 = call i32 @mux_gops(i32 2)
  %427 = call i32 (...) @finish()
  %428 = call i32 (...) @close_out()
  store i32 0, i32* @force_iobuf_size, align 4
  store i32 1, i32* @do_interleave, align 4
  %429 = call i32 @init_out(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0))
  %430 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %431 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32 0)
  %432 = call i32 @init_fps(i32 1, i32 1, i32 30)
  %433 = load i32, i32* @gop_size, align 4
  %434 = sdiv i32 %433, 2
  %435 = call i32 @mux_frames(i32 %434, i32 0)
  %436 = load i32, i32* @duration, align 4
  store i32 %436, i32* @fake_pkt_duration, align 4
  %437 = load i32, i32* @duration, align 4
  %438 = mul nsw i32 %437, 10
  store i32 %438, i32* @duration, align 4
  %439 = call i32 @mux_frames(i32 1, i32 0)
  store i32 0, i32* @fake_pkt_duration, align 4
  %440 = load i32, i32* @duration, align 4
  %441 = sdiv i32 %440, 10
  store i32 %441, i32* @duration, align 4
  %442 = load i32, i32* @gop_size, align 4
  %443 = sdiv i32 %442, 2
  %444 = sub nsw i32 %443, 1
  %445 = call i32 @mux_frames(i32 %444, i32 0)
  %446 = call i32 @mux_gops(i32 1)
  %447 = call i32 (...) @finish()
  %448 = call i32 (...) @close_out()
  store i32 0, i32* @clear_duration, align 4
  store i32 0, i32* @do_interleave, align 4
  %449 = call i32 @init_out(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0))
  %450 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 0)
  %451 = call i32 @init(i32 1, i32 1)
  %452 = call i32 @mux_gops(i32 2)
  %453 = call i32 (...) @finish()
  %454 = call i32 (...) @close_out()
  %455 = call i32 @init_out(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0))
  %456 = call i32 @av_dict_set(i32* @opts, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i64 0, i64 0), i32 0)
  %457 = call i32 @init(i32 1, i32 0)
  %458 = call i32 @mux_gops(i32 2)
  %459 = call i32 (...) @finish()
  %460 = call i32 (...) @close_out()
  %461 = load i32, i32* @md5, align 4
  %462 = call i32 @av_free(i32 %461)
  %463 = load i64, i64* @check_faults, align 8
  %464 = icmp sgt i64 %463, 0
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i32 1, i32 0
  store i32 %466, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %467

467:                                              ; preds = %39, %38, %31
  %468 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %468)
  %469 = load i32, i32* %3, align 4
  ret i32 %469
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @help(...) #2

declare dso_local i32 @av_md5_alloc(...) #2

declare dso_local i32 @init_out(i8*) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @init(i32, i32) #2

declare dso_local i32 @mux_gops(i32) #2

declare dso_local i32 @finish(...) #2

declare dso_local i32 @close_out(...) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @init_count_warnings(...) #2

declare dso_local i32 @reset_count_warnings(...) #2

declare dso_local i32 @check(i32, i8*, ...) #2

declare dso_local i32 @memcmp(i32, i32*, i32) #2

declare dso_local i32 @av_write_frame(i32, i32*) #2

declare dso_local i32 @skip_gops(i32) #2

declare dso_local i32 @signal_init_ts(...) #2

declare dso_local i32 @mux_frames(i32, i32) #2

declare dso_local i32 @init_fps(i32, i32, i32) #2

declare dso_local i32 @av_free(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
