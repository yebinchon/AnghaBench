; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_generate_missing_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_generate_missing_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32**, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@FF_THREAD_FRAME = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, i32)* @generate_missing_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @generate_missing_ref(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = call %struct.TYPE_17__* @alloc_frame(%struct.TYPE_18__* %10)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %198

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %175, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %36, i64 %38
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %31
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 %49
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %66, i64 %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset(i32 %53, i32 %61, i32 %72)
  br label %74

74:                                               ; preds = %42
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %31

77:                                               ; preds = %31
  br label %174

78:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %170, %78
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %173

90:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %166, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %98, %108
  %110 = icmp slt i32 %92, %109
  br i1 %110, label %111, label %169

111:                                              ; preds = %91
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %121, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %120, i64 %132
  store i32* %133, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = call i32 @AV_WN16(i32* %134, i32 %142)
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %151, %161
  %163 = mul nsw i32 2, %162
  %164 = sub nsw i32 %163, 2
  %165 = call i32 @av_memcpy_backptr(i32* %145, i32 2, i32 %164)
  br label %166

166:                                              ; preds = %111
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %91

169:                                              ; preds = %91
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %79

173:                                              ; preds = %79
  br label %174

174:                                              ; preds = %173, %77
  br label %175

175:                                              ; preds = %174, %15
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @FF_THREAD_FRAME, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %175
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i32, i32* @INT_MAX, align 4
  %195 = call i32 @ff_thread_report_progress(i32* %193, i32 %194, i32 0)
  br label %196

196:                                              ; preds = %191, %175
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %3, align 8
  br label %198

198:                                              ; preds = %196, %14
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %199
}

declare dso_local %struct.TYPE_17__* @alloc_frame(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @AV_WN16(i32*, i32) #1

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

declare dso_local i32 @ff_thread_report_progress(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
