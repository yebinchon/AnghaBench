; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_network_wait_fd_timeout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_network_wait_fd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_EXIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64, i32*)* @libsrt_network_wait_fd_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_network_wait_fd_timeout(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %6, %53
  %17 = load i32*, i32** %13, align 8
  %18 = call i64 @ff_check_interrupt(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %21, i32* %7, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @libsrt_network_wait_fd(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = call i32 @AVERROR(i32 %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %54

34:                                               ; preds = %22
  %35 = load i64, i64* %12, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i64 (...) @av_gettime_relative()
  store i64 %41, i64* %15, align 8
  br label %52

42:                                               ; preds = %37
  %43 = call i64 (...) @av_gettime_relative()
  %44 = load i64, i64* %15, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %12, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %34
  br label %16

54:                                               ; preds = %48, %32, %20
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @ff_check_interrupt(i32*) #1

declare dso_local i32 @libsrt_network_wait_fd(i32*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_gettime_relative(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
