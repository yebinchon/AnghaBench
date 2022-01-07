; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_network_wait_fd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_network_wait_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRT_EPOLL_OUT = common dso_local global i32 0, align 4
@SRT_EPOLL_IN = common dso_local global i32 0, align 4
@POLLING_TIME = common dso_local global i32 0, align 4
@SRT_ETIMEOUT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @libsrt_network_wait_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_network_wait_fd(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32], align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SRT_EPOLL_OUT, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @SRT_EPOLL_IN, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @srt_epoll_add_usock(i32 %22, i32 %23, i32* %12)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @libsrt_neterrno(i32* %27)
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %35 = load i32, i32* @POLLING_TIME, align 4
  %36 = call i32 @srt_epoll_wait(i32 %33, i32* null, i32* null, i32* %34, i32* %11, i32 %35, i32 0, i32 0, i32 0, i32 0)
  store i32 %36, i32* %10, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %40 = load i32, i32* @POLLING_TIME, align 4
  %41 = call i32 @srt_epoll_wait(i32 %38, i32* %39, i32* %11, i32* null, i32* null, i32 %40, i32 0, i32 0, i32 0, i32 0)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = call i64 @srt_getlasterror(i32* null)
  %47 = load i64, i64* @SRT_ETIMEOUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @libsrt_neterrno(i32* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @srt_epoll_remove_usock(i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @libsrt_neterrno(i32* %63)
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %62, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @srt_epoll_add_usock(i32, i32, i32*) #1

declare dso_local i32 @libsrt_neterrno(i32*) #1

declare dso_local i32 @srt_epoll_wait(i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @srt_getlasterror(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @srt_epoll_remove_usock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
