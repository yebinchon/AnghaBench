; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_poll_interrupt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_poll_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }

@POLLING_TIME = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, i32, i32, i32*)* @ff_poll_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_poll_interrupt(%struct.pollfd* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @POLLING_TIME, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %48, %4
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @ff_check_interrupt(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %15
  %22 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @POLLING_TIME, align 4
  %25 = call i32 @poll(%struct.pollfd* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @ff_neterrno()
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EINTR, align 4
  %36 = call i32 @AVERROR(i32 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = icmp sgt i32 %45, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ true, %41 ], [ %47, %44 ]
  br i1 %49, label %15, label %50

50:                                               ; preds = %48, %39
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %53, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @ff_check_interrupt(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @ff_neterrno(...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
