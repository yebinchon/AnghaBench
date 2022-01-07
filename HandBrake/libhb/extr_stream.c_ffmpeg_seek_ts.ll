; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_seek_ts.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_seek_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i32, %struct.TYPE_16__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @ffmpeg_seek_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_seek_ts(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hb_list_count(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.TYPE_14__* @hb_list_item(i32 %34, i32 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %54

45:                                               ; preds = %29
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %25

54:                                               ; preds = %44, %25
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %67

61:                                               ; preds = %2
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* @INT64_MAX, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @AV_TIME_BASE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %70, 90000
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = call i32 @ffmpeg_initial_timestamp(%struct.TYPE_13__* %72)
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %79, i64 %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %12, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AV_TIME_BASE, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = mul nsw i32 %90, %95
  %97 = call i32 @av_rescale(i32 %85, i32 %89, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @avformat_seek_file(%struct.TYPE_16__* %100, i64 %103, i32 0, i32 %104, i32 %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_14__* @hb_list_item(i32, i32) #1

declare dso_local i32 @ffmpeg_initial_timestamp(%struct.TYPE_13__*) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @avformat_seek_file(%struct.TYPE_16__*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
