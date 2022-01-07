; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_set_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_set_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_10__*)* @nvenc_set_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_set_timestamp(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @INT64_MAX, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %50, %37
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @INT64_MIN, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %50
  %66 = load i32, i32* @ERANGE, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %4, align 4
  br label %107

68:                                               ; preds = %59, %56
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @INT64_MAX, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %74, %68
  %81 = load i64, i64* %11, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @INT64_MIN, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %85, %86
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83, %74
  %90 = load i32, i32* @ERANGE, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %107

92:                                               ; preds = %83, %80
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  store i32 0, i32* %4, align 4
  br label %107

100:                                              ; preds = %29, %24, %3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @timestamp_queue_dequeue(i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %100, %92, %89, %65
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @timestamp_queue_dequeue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
