; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_tee_process_slave_failure.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_tee_process_slave_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"All tee outputs failed.\0A\00", align 1
@ON_SLAVE_FAILURE_ABORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Slave muxer #%u failed, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Slave muxer #%u failed: %s, continuing with %u/%u slaves.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @tee_process_slave_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tee_process_slave_failure(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = call i32 @close_slave(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %30, i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ON_SLAVE_FAILURE_ABORT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @av_err2str(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %47, i32 %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %46, %40, %29
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @close_slave(%struct.TYPE_7__*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
