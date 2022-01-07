; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_show_help_default.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_show_help_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_SPEC = common dso_local global i32 0, align 4
@OPT_OFFSET = common dso_local global i32 0, align 4
@OPT_PERFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown help option '%s'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [328 x i8] c"Getting help:\0A    -h      -- print basic options\0A    -h long -- print more options\0A    -h full -- print all options (including all format and codec specific options, very long)\0A    -h type=name -- print all options for the named decoder/encoder/demuxer/muxer/filter/bsf\0A    See man %s for detailed description of the options.\0A\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@options = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Print help / information / capabilities:\00", align 1
@OPT_EXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Global options (affect whole program instead of just one file:\00", align 1
@OPT_EXPERT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Advanced global options:\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Per-file main options:\00", align 1
@OPT_AUDIO = common dso_local global i32 0, align 4
@OPT_VIDEO = common dso_local global i32 0, align 4
@OPT_SUBTITLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Advanced per-file options:\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Video options:\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Advanced Video options:\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Audio options:\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Advanced Audio options:\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Subtitle options:\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_OPT_FLAG_DECODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_ENCODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_VIDEO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_AUDIO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_FILTERING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_BSF_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_help_default(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @OPT_SPEC, align 4
  %10 = load i32, i32* @OPT_OFFSET, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OPT_PERFILE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @av_log(i32* null, i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %30
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %16, %2
  %38 = call i32 (...) @show_usage()
  %39 = load i8*, i8** @program_name, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @options, align 4
  %42 = load i32, i32* @OPT_EXIT, align 4
  %43 = call i32 @show_help_options(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 0, i32 0)
  %44 = load i32, i32* @options, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @OPT_EXIT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @OPT_EXPERT, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @show_help_options(i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %49, i32 0)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load i32, i32* @options, align 4
  %55 = load i32, i32* @OPT_EXPERT, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @OPT_EXIT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @show_help_options(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %53, %37
  %61 = load i32, i32* @options, align 4
  %62 = load i32, i32* @OPT_EXPERT, align 4
  %63 = load i32, i32* @OPT_AUDIO, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @OPT_VIDEO, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @OPT_SUBTITLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @OPT_EXIT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @show_help_options(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %60
  %76 = load i32, i32* @options, align 4
  %77 = load i32, i32* @OPT_EXPERT, align 4
  %78 = load i32, i32* @OPT_AUDIO, align 4
  %79 = load i32, i32* @OPT_VIDEO, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @OPT_SUBTITLE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @show_help_options(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %77, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %60
  %86 = load i32, i32* @options, align 4
  %87 = load i32, i32* @OPT_VIDEO, align 4
  %88 = load i32, i32* @OPT_EXPERT, align 4
  %89 = load i32, i32* @OPT_AUDIO, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @show_help_options(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %87, i32 %90, i32 0)
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i32, i32* @options, align 4
  %96 = load i32, i32* @OPT_EXPERT, align 4
  %97 = load i32, i32* @OPT_VIDEO, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @OPT_AUDIO, align 4
  %100 = call i32 @show_help_options(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %85
  %102 = load i32, i32* @options, align 4
  %103 = load i32, i32* @OPT_AUDIO, align 4
  %104 = load i32, i32* @OPT_EXPERT, align 4
  %105 = load i32, i32* @OPT_VIDEO, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @show_help_options(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %103, i32 %106, i32 0)
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load i32, i32* @options, align 4
  %112 = load i32, i32* @OPT_EXPERT, align 4
  %113 = load i32, i32* @OPT_AUDIO, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @OPT_VIDEO, align 4
  %116 = call i32 @show_help_options(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %114, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %110, %101
  %118 = load i32, i32* @options, align 4
  %119 = load i32, i32* @OPT_SUBTITLE, align 4
  %120 = call i32 @show_help_options(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %119, i32 0, i32 0)
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  %125 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  %126 = load i32, i32* @AV_OPT_FLAG_ENCODING_PARAM, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %8, align 4
  %128 = call i32 (...) @avcodec_get_class()
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @show_help_children(i32 %128, i32 %129)
  %131 = call i32 (...) @avformat_get_class()
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @show_help_children(i32 %131, i32 %132)
  %134 = call i32 (...) @avfilter_get_class()
  %135 = load i32, i32* @AV_OPT_FLAG_VIDEO_PARAM, align 4
  %136 = load i32, i32* @AV_OPT_FLAG_AUDIO_PARAM, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @AV_OPT_FLAG_FILTERING_PARAM, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @show_help_children(i32 %134, i32 %139)
  %141 = call i32 (...) @av_bsf_get_class()
  %142 = load i32, i32* @AV_OPT_FLAG_VIDEO_PARAM, align 4
  %143 = load i32, i32* @AV_OPT_FLAG_AUDIO_PARAM, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @AV_OPT_FLAG_BSF_PARAM, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @show_help_children(i32 %141, i32 %146)
  br label %148

148:                                              ; preds = %124, %117
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @show_usage(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @show_help_options(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @show_help_children(i32, i32) #1

declare dso_local i32 @avcodec_get_class(...) #1

declare dso_local i32 @avformat_get_class(...) #1

declare dso_local i32 @avfilter_get_class(...) #1

declare dso_local i32 @av_bsf_get_class(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
