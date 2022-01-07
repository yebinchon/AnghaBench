; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_zmq.c_recv_msg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_zmq.c_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not initialize receive message: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@ZMQ_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not receive message: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**, i32*)* @recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_msg(%struct.TYPE_6__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @zmq_msg_init(i32* %9)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load i32, i32* @AV_LOG_WARNING, align 4
  %19 = load i64, i64* @errno, align 8
  %20 = call i32 @zmq_strerror(i64 %19)
  %21 = call i32 @av_log(%struct.TYPE_6__* %17, i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %22, i32* %4, align 4
  br label %74

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ZMQ_DONTWAIT, align 4
  %28 = call i32 @zmq_msg_recv(i32* %9, i32 %26, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EAGAIN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i32, i32* @AV_LOG_WARNING, align 4
  %37 = load i64, i64* @errno, align 8
  %38 = call i32 @zmq_strerror(i64 %37)
  %39 = call i32 @av_log(%struct.TYPE_6__* %35, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %41, i32* %10, align 4
  br label %71

42:                                               ; preds = %23
  %43 = call i32 @zmq_msg_size(i32* %9)
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @av_malloc(i32 %47)
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %10, align 4
  br label %71

56:                                               ; preds = %42
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @zmq_msg_data(i32* %9)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @memcpy(i8* %58, i32 %59, i32 %62)
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %56, %53, %40
  %72 = call i32 @zmq_msg_close(i32* %9)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @zmq_msg_init(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @zmq_strerror(i64) #1

declare dso_local i32 @zmq_msg_recv(i32*, i32, i32) #1

declare dso_local i32 @zmq_msg_size(i32*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @zmq_msg_data(i32*) #1

declare dso_local i32 @zmq_msg_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
