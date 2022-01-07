; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_find_free_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_find_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__** }

@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@VP56_FRAME_PREVIOUS = common dso_local global i64 0, align 8
@VP56_FRAME_GOLDEN = common dso_local global i64 0, align 8
@VP56_FRAME_GOLDEN2 = common dso_local global i64 0, align 8
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Ran out of free frames!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_12__*)* @vp8_find_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @vp8_find_free_buffer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %72, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %75

8:                                                ; preds = %5
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i64 %13
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %18 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %17, i64 %18
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %14, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %27
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %30, align 8
  %32 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %31, i64 %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp ne %struct.TYPE_11__* %28, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %22
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = load i64, i64* @VP56_FRAME_GOLDEN, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %42, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %58, align 8
  %60 = load i64, i64* @VP56_FRAME_GOLDEN2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %59, i64 %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp ne %struct.TYPE_11__* %56, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %3, align 8
  br label %75

71:                                               ; preds = %50, %36, %22, %8
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %5

75:                                               ; preds = %64, %5
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AV_LOG_FATAL, align 4
  %83 = call i32 @av_log(i32 %81, i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 (...) @abort() #3
  unreachable

85:                                               ; preds = %75
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = call i32 @vp8_release_frame(%struct.TYPE_12__* %96, %struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %100
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @vp8_release_frame(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
