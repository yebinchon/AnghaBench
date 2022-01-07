; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_do_exit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_do_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@renderer = common dso_local global i64 0, align 8
@window = common dso_local global i64 0, align 8
@show_status = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_LOG_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vfilters_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_exit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @stream_close(i32* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64, i64* @renderer, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* @renderer, align 8
  %13 = call i32 @SDL_DestroyRenderer(i64 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* @window, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* @window, align 8
  %19 = call i32 @SDL_DestroyWindow(i64 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = call i32 (...) @uninit_opts()
  %22 = call i32 (...) @avformat_network_deinit()
  %23 = load i64, i64* @show_status, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = call i32 (...) @SDL_Quit()
  %29 = load i32, i32* @AV_LOG_QUIET, align 4
  %30 = call i32 @av_log(i32* null, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @stream_close(i32*) #1

declare dso_local i32 @SDL_DestroyRenderer(i64) #1

declare dso_local i32 @SDL_DestroyWindow(i64) #1

declare dso_local i32 @uninit_opts(...) #1

declare dso_local i32 @avformat_network_deinit(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SDL_Quit(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
