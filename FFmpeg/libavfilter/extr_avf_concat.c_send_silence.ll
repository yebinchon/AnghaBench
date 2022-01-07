; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_send_silence.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_send_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_15__**, %struct.TYPE_20__**, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32 }

@AVERROR_BUG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32, i32, i64)* @send_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_silence(%struct.TYPE_21__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %10, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %28, i64 %30
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %11, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %51, i64 %53
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %48, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %4
  %63 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %63, i32* %5, align 4
  br label %158

64:                                               ; preds = %4
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %65, %73
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = bitcast { i64, i32 }* %19 to i8*
  %78 = bitcast %struct.TYPE_18__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = bitcast { i64, i32 }* %20 to i8*
  %84 = bitcast %struct.TYPE_18__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @av_rescale_q(i64 %74, i64 %80, i32 %82, i64 %86, i32 %88)
  store i64 %89, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 5
  %93 = call i32 @FFMAX(i32 9600, i32 %92)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %148, %64
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %157

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @FFMIN(i32 %98, i64 %99)
  store i32 %100, i32* %15, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__* %101, i32 %102)
  store %struct.TYPE_19__* %103, %struct.TYPE_19__** %18, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %105 = icmp ne %struct.TYPE_19__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %5, align 4
  br label %158

109:                                              ; preds = %97
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @av_samples_set_silence(i32 %112, i32 0, i32 %113, i32 %116, i32 %119)
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = bitcast { i64, i32 }* %21 to i8*
  %126 = bitcast %struct.TYPE_18__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 12, i1 false)
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %128 = load i64, i64* %127, align 4
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = bitcast { i64, i32 }* %22 to i8*
  %132 = bitcast %struct.TYPE_18__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 12, i1 false)
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %134 = load i64, i64* %133, align 4
  %135 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @av_rescale_q(i64 %122, i64 %128, i32 %130, i64 %134, i32 %136)
  %138 = add nsw i64 %121, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %143 = call i32 @ff_filter_frame(%struct.TYPE_20__* %141, %struct.TYPE_19__* %142)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %109
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %5, align 4
  br label %158

148:                                              ; preds = %109
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %14, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %14, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %13, align 8
  %156 = sub nsw i64 %155, %154
  store i64 %156, i64* %13, align 8
  br label %94

157:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %146, %106, %62
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @av_rescale_q(i64, i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_samples_set_silence(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
