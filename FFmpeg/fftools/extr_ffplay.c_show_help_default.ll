; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_show_help_default.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_show_help_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_callback_help = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Main options:\00", align 1
@OPT_EXPERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Advanced options:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_OPT_FLAG_DECODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_ENCODING_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [890 x i8] c"\0AWhile playing:\0Aq, ESC              quit\0Af                   toggle full screen\0Ap, SPC              pause\0Am                   toggle mute\0A9, 0                decrease and increase volume respectively\0A/, *                decrease and increase volume respectively\0Aa                   cycle audio channel in the current program\0Av                   cycle video channel\0At                   cycle subtitle channel in the current program\0Ac                   cycle program\0Aw                   cycle video filters or show modes\0As                   activate frame-step mode\0Aleft/right          seek backward/forward 10 seconds or to custom interval if -seek_interval is set\0Adown/up             seek backward/forward 1 minute\0Apage down/page up   seek backward/forward 10 minutes\0Aright mouse click   seek to percentage in file corresponding to fraction of width\0Aleft double-click   toggle full screen\0A\00", align 1
@AV_OPT_FLAG_FILTERING_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_help_default(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @log_callback_help, align 4
  %6 = call i32 @av_log_set_callback(i32 %5)
  %7 = call i32 (...) @show_usage()
  %8 = load i32, i32* @options, align 4
  %9 = load i32, i32* @OPT_EXPERT, align 4
  %10 = call i32 @show_help_options(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %9, i32 0)
  %11 = load i32, i32* @options, align 4
  %12 = load i32, i32* @OPT_EXPERT, align 4
  %13 = call i32 @show_help_options(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 0, i32 0)
  %14 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (...) @avcodec_get_class()
  %16 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  %17 = call i32 @show_help_children(i32 %15, i32 %16)
  %18 = call i32 (...) @avformat_get_class()
  %19 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  %20 = call i32 @show_help_children(i32 %18, i32 %19)
  %21 = call i32 (...) @sws_get_class()
  %22 = load i32, i32* @AV_OPT_FLAG_ENCODING_PARAM, align 4
  %23 = call i32 @show_help_children(i32 %21, i32 %22)
  %24 = call i32 @printf(i8* getelementptr inbounds ([890 x i8], [890 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_log_set_callback(i32) #1

declare dso_local i32 @show_usage(...) #1

declare dso_local i32 @show_help_options(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show_help_children(i32, i32) #1

declare dso_local i32 @avcodec_get_class(...) #1

declare dso_local i32 @avformat_get_class(...) #1

declare dso_local i32 @sws_get_class(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
