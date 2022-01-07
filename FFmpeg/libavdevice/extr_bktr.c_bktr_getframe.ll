; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_bktr.c_bktr_getframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_bktr.c_bktr_getframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_frame_time = common dso_local global i64 0, align 8
@nsignals = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SLEPT NO signals - %d microseconds late\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bktr_getframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bktr_getframe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @av_gettime()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* @last_frame_time, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i64, i64* @last_frame_time, align 8
  %9 = load i64, i64* %2, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7, %1
  %14 = load i64, i64* @last_frame_time, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %2, align 8
  %18 = sdiv i64 %17, 8
  %19 = add nsw i64 %16, %18
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @usleep(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %13
  %25 = load i64, i64* @nsignals, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @AV_LOG_INFO, align 4
  %29 = call i64 (...) @av_gettime()
  %30 = load i64, i64* @last_frame_time, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %2, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @av_log(i32* null, i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27, %24
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %37, %7
  store i64 0, i64* @nsignals, align 8
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* @last_frame_time, align 8
  ret void
}

declare dso_local i64 @av_gettime(...) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
