; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_set_options_post.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_set_options_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@SRTO_INPUTBW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SRTO_INPUTBW\00", align 1
@SRTO_OHEADBW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SRTO_OHEADBW\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @libsrt_set_options_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_set_options_post(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SRTO_INPUTBW, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %19, i32 8)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SRTO_OHEADBW, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %32, i32 8)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %14
  %36 = load i32, i32* @EIO, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %27, %22
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @libsrt_setsockopt(%struct.TYPE_5__*, i32, i32, i8*, i64*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
