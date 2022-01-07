; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tcp.c_customize_fd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tcp.c_customize_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setsockopt(SO_RCVBUF)\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"setsockopt(SO_SNDBUF)\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"setsockopt(TCP_NODELAY)\00", align 1
@TCP_MAXSEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"setsockopt(TCP_MAXSEG)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @customize_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @customize_fd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SOL_SOCKET, align 4
  %15 = load i32, i32* @SO_RCVBUF, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @setsockopt(i32 %13, i32 %14, i32 %15, i64* %17, i32 8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @AV_LOG_WARNING, align 4
  %23 = call i32 @ff_log_net_error(i8* %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %12
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_SNDBUF, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i64* %35, i32 8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @AV_LOG_WARNING, align 4
  %41 = call i32 @ff_log_net_error(i8* %39, i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IPPROTO_TCP, align 4
  %51 = load i32, i32* @TCP_NODELAY, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = call i64 @setsockopt(i32 %49, i32 %50, i32 %51, i64* %53, i32 8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* @AV_LOG_WARNING, align 4
  %59 = call i32 @ff_log_net_error(i8* %57, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IPPROTO_TCP, align 4
  %69 = load i32, i32* @TCP_MAXSEG, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = call i64 @setsockopt(i32 %67, i32 %68, i32 %69, i64* %71, i32 8)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* @AV_LOG_WARNING, align 4
  %77 = call i32 @ff_log_net_error(i8* %75, i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %66
  br label %79

79:                                               ; preds = %78, %61
  ret void
}

declare dso_local i64 @setsockopt(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @ff_log_net_error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
