; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_network_wait_fd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_network_wait_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLING_TIME = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_network_wait_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @POLLOUT, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @POLLIN, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @POLLING_TIME, align 4
  %22 = call i32 @poll(%struct.pollfd* %6, i32 1, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 (...) @ff_neterrno()
  br label %43

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @POLLERR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @POLLHUP, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = call i32 @AVERROR(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i32 [ %26, %25 ], [ %42, %41 ]
  ret i32 %44
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @ff_neterrno(...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
