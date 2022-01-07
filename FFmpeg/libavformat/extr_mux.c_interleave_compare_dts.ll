; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_interleave_compare_dts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_interleave_compare_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @interleave_compare_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interleave_compare_dts(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %17, i64 %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %8, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %28
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = bitcast %struct.TYPE_15__* %35 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %struct.TYPE_15__* %40 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @av_compare_ts(i64 %33, i64 %42, i64 %38, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %165

50:                                               ; preds = %3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %164

70:                                               ; preds = %50
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %87 = bitcast %struct.TYPE_15__* %85 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @av_rescale_q(i64 %83, i64 %88, i32 %86)
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %13, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %98 = bitcast %struct.TYPE_15__* %96 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @av_rescale_q(i64 %94, i64 %99, i32 %97)
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %70
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %110, %114
  %116 = load i32, i32* @AV_TIME_BASE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %118, %122
  %124 = sub nsw i32 %117, %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %124, %128
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %133, %137
  %139 = load i32, i32* @AV_TIME_BASE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %141, %145
  %147 = sub nsw i32 %140, %146
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %147, %151
  %153 = sub nsw i32 %129, %152
  store i32 %153, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %154

154:                                              ; preds = %106, %70
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp sgt i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = sub nsw i32 %158, %162
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %154, %50
  br label %165

165:                                              ; preds = %164, %3
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %171, %174
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %4, align 4
  br label %181

177:                                              ; preds = %165
  %178 = load i32, i32* %10, align 4
  %179 = icmp sgt i32 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %177, %168
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @av_compare_ts(i64, i64, i64, i64) #1

declare dso_local i32 @av_rescale_q(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
