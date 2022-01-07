; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_compare_ts_with_wrapdetect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_compare_ts_with_wrapdetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32 }

@MPEG_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.playlist*, i32, %struct.playlist*)* @compare_ts_with_wrapdetect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_ts_with_wrapdetect(i32 %0, %struct.playlist* %1, i32 %2, %struct.playlist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.playlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.playlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.playlist* %1, %struct.playlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.playlist* %3, %struct.playlist** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.playlist*, %struct.playlist** %6, align 8
  %13 = call i32 @get_timebase(%struct.playlist* %12)
  %14 = load i32, i32* @MPEG_TIME_BASE_Q, align 4
  %15 = call i32 @av_rescale_q(i32 %11, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.playlist*, %struct.playlist** %8, align 8
  %18 = call i32 @get_timebase(%struct.playlist* %17)
  %19 = load i32, i32* @MPEG_TIME_BASE_Q, align 4
  %20 = call i32 @av_rescale_q(i32 %16, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @av_compare_mod(i32 %21, i32 %22, i64 8589934592)
  ret i32 %23
}

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @get_timebase(%struct.playlist*) #1

declare dso_local i32 @av_compare_mod(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
