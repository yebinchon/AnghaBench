; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_network_wait_fd_timeout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_network_wait_fd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_EXIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_network_wait_fd_timeout(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %4, %47
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @ff_check_interrupt(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %17, i32* %5, align 4
  br label %48

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ff_network_wait_fd(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = call i32 @AVERROR(i32 %23)
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i64 (...) @av_gettime_relative()
  store i64 %35, i64* %11, align 8
  br label %46

36:                                               ; preds = %31
  %37 = call i64 (...) @av_gettime_relative()
  %38 = load i64, i64* %11, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %28
  br label %12

48:                                               ; preds = %42, %26, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @ff_check_interrupt(i32*) #1

declare dso_local i32 @ff_network_wait_fd(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_gettime_relative(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
