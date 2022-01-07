; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %21, i64 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %111, %2
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %99, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %54
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 0, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %61, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 256, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %73, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %88, 3
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 512, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %86, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %60
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %54

102:                                              ; preds = %54
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %12, align 8
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %47

114:                                              ; preds = %47
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %132

127:                                              ; preds = %114
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = call i32 @get_best_frame(%struct.TYPE_14__* %129)
  %131 = call i32 @ff_filter_frame(%struct.TYPE_13__* %128, i32 %130)
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %126
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @ff_filter_frame(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @get_best_frame(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
