; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %27, 32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %33, i64 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %10, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @swr_get_delay(i32 %38, i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @FFMAX(i32 4096, i32 %47)
  %49 = call i64 @FFMIN(i64 %46, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %45, %2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__* %55, i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %11, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %168

64:                                               ; preds = %54
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %65, %struct.TYPE_17__* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %64
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = mul nsw i64 %100, %103
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = mul nsw i64 %104, %107
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @av_rescale(i64 %96, i64 %108, i32 %112)
  store i64 %113, i64* %13, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %13, align 8
  %118 = call i64 @swr_next_pts(i32 %116, i64 %117)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @ROUNDED_DIV(i64 %119, i64 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  store i64 %123, i64* %127, align 8
  br label %132

128:                                              ; preds = %64
  %129 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %93
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @swr_convert(i32 %135, i64 %138, i32 %139, i8* %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %132
  %149 = call i32 @av_frame_free(%struct.TYPE_17__** %11)
  %150 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  store i32 0, i32* %3, align 4
  br label %168

151:                                              ; preds = %132
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %165 = call i32 @ff_filter_frame(%struct.TYPE_18__* %163, %struct.TYPE_17__* %164)
  store i32 %165, i32* %12, align 4
  %166 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %151, %148, %60
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i64 @swr_get_delay(i32, i64) #1

declare dso_local i64 @FFMIN(i64, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @av_rescale(i64, i64, i32) #1

declare dso_local i64 @swr_next_pts(i32, i64) #1

declare dso_local i64 @ROUNDED_DIV(i64, i64) #1

declare dso_local i32 @swr_convert(i32, i64, i32, i8*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
