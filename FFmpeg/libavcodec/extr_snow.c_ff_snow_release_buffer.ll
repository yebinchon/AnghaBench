; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_ff_snow_release_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_ff_snow_release_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32****, %struct.TYPE_6__*, %struct.TYPE_9__** }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i64* }

@EDGE_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_snow_release_buffer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %10, i64 %15
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %125

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @av_frame_unref(%struct.TYPE_9__* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %121, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 9
  br i1 %37, label %38, label %124

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32****, i32***** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32***, i32**** %41, i64 %46
  %48 = load i32***, i32**** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sdiv i32 %49, 3
  %51 = add nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %48, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = srem i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %120

61:                                               ; preds = %38
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32****, i32***** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32***, i32**** %64, i64 %69
  %71 = load i32***, i32**** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sdiv i32 %72, 3
  %74 = add nsw i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %71, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = srem i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @EDGE_WIDTH, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = srem i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 1, %93
  %95 = mul nsw i32 %83, %94
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %82, i64 %97
  %99 = call i32 @av_free(i32* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32****, i32***** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32***, i32**** %102, i64 %107
  %109 = load i32***, i32**** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sdiv i32 %110, 3
  %112 = add nsw i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32**, i32*** %109, i64 %113
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = srem i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %115, i64 %118
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %61, %38
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %35

124:                                              ; preds = %35
  br label %125

125:                                              ; preds = %124, %1
  ret void
}

declare dso_local i32 @av_frame_unref(%struct.TYPE_9__*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
