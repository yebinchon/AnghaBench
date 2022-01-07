; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libzmq.c_zmq_proto_wait.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libzmq.c_zmq_proto_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@ZMQ_POLLOUT = common dso_local global i32 0, align 4
@ZMQ_POLLIN = common dso_local global i32 0, align 4
@POLLING_TIME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error occured during zmq_poll(): %s\0A\00", align 1
@ZMQ_STRERROR = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @zmq_proto_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zmq_proto_wait(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ZMQ_POLLOUT, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ZMQ_POLLIN, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* @POLLING_TIME, align 4
  %26 = call i32 @zmq_poll(%struct.TYPE_3__* %10, i32 1, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* @ZMQ_STRERROR, align 4
  %33 = call i32 @av_log(i32* %30, i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = call i32 @AVERROR(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ 0, %41 ], [ %44, %42 ]
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @zmq_poll(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
