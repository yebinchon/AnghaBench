; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_compute_sample_count.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_compute_sample_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64* }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"seeking detected on stream #%d with time base (%d/%d) and sample rate (%d/%d), audio pts won't be accurate.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32)* @mxf_compute_sample_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_compute_sample_count(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @av_inv_q(i32 %22)
  %24 = bitcast %struct.TYPE_18__* %12 to i64*
  store i64 %23, i64* %24, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @av_inv_q(i32 %27)
  %29 = bitcast %struct.TYPE_18__* %13 to i64*
  store i64 %28, i64* %29, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %14, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %4, align 4
  br label %150

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %41, %43
  %45 = icmp eq i32 %44, 48000
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %struct.TYPE_18__* %12 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = call %struct.TYPE_15__* @ff_mxf_get_samples_per_frame(i32 %49, i64 %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %14, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  br i1 %55, label %95, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = srem i32 %61, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %56
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_LOG_WARNING, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @av_log(i32 %73, i32 %74, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %70, %56
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = bitcast %struct.TYPE_18__* %13 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = call i32 @av_rescale_q(i32 %88, i64 %93, i32 %91)
  store i32 %94, i32* %4, align 4
  br label %150

95:                                               ; preds = %53
  br label %96

96:                                               ; preds = %105, %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %96
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %96

119:                                              ; preds = %96
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @av_assert2(i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sdiv i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  store i32 %126, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %145, %119
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %10, align 4
  %131 = srem i32 %129, %130
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %127

148:                                              ; preds = %127
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %87, %37
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @av_inv_q(i32) #1

declare dso_local %struct.TYPE_15__* @ff_mxf_get_samples_per_frame(i32, i64) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i64, i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
