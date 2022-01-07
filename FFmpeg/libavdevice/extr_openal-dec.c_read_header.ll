; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_openal-dec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_openal-dec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_19__, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@read_header.sample_formats = internal constant [2 x [2 x %struct.TYPE_19__]] [[2 x %struct.TYPE_19__] [%struct.TYPE_19__ { i32 130, i32 128 }, %struct.TYPE_19__ zeroinitializer], [2 x %struct.TYPE_19__] [%struct.TYPE_19__ { i32 131, i32 129 }, %struct.TYPE_19__ zeroinitializer]], align 16
@AVERROR_EXIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot open device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i32 @print_al_capture_devices(%struct.TYPE_17__* %17)
  %19 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %19, i32* %2, align 4
  br label %152

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x [2 x %struct.TYPE_19__]], [2 x [2 x %struct.TYPE_19__]]* @read_header.sample_formats, i64 0, i64 %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %29, i64 0, i64 %34
  %36 = bitcast %struct.TYPE_19__* %22 to i8*
  %37 = bitcast %struct.TYPE_19__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  br label %49

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i64* [ %47, %44 ], [ null, %48 ]
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %struct.TYPE_19__* %55 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @alcCaptureOpenDevice(i64* %50, i32 %53, i64 %60, i32 %58)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @al_get_error(i64 %66, i8** %6)
  store i32 %67, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %132

70:                                               ; preds = %49
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %71, i32* null)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %7, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %132

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %78, i32 64, i32 1, i32 1000000)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %8, align 8
  %83 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = bitcast %struct.TYPE_19__* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.TYPE_20__* @get_al_format_info(i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  %102 = bitcast %struct.TYPE_19__* %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_20__* @get_al_format_info(i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  %111 = bitcast %struct.TYPE_19__* %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = call %struct.TYPE_20__* @get_al_format_info(i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @av_get_bits_per_sample(i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  %119 = bitcast %struct.TYPE_19__* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = call %struct.TYPE_20__* @get_al_format_info(i64 %120)
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %116, %123
  %125 = sdiv i32 %124, 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @alcCaptureStart(i64 %130)
  store i32 0, i32* %2, align 4
  br label %152

132:                                              ; preds = %74, %69
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @alcCaptureCloseDevice(i64 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @av_log(%struct.TYPE_17__* %146, i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %77, %16
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @print_al_capture_devices(%struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @alcCaptureOpenDevice(i64*, i32, i64, i32) #1

declare dso_local i32 @al_get_error(i64, i8**) #1

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @get_al_format_info(i64) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @alcCaptureStart(i64) #1

declare dso_local i32 @alcCaptureCloseDevice(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
