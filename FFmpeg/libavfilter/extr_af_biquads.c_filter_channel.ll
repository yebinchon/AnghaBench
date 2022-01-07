; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_biquads.c_filter_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_biquads.c_filter_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32)* @filter_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_channel(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %19, i64 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %12, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %168, %4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %171

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @av_channel_layout_extract_channel(i32 %56, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = icmp ne %struct.TYPE_12__* %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = call i32 @memcpy(i32 %75, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %68, %64
  br label %168

92:                                               ; preds = %53
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  %95 = load i32 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32)** %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 %95(%struct.TYPE_11__* %96, i32 %103, i32 %110, i32 %113, i32* %120, i32* %127, i32* %134, i32* %141, i32 %144, i32 %147, i32 %150, i32 %153, i32 %156, i32* %163, i32 %166)
  br label %168

168:                                              ; preds = %92, %91
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %49

171:                                              ; preds = %49
  ret i32 0
}

declare dso_local i32 @av_channel_layout_extract_channel(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
