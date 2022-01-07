; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__* }

@ENOMEM = common dso_local global i32 0, align 4
@TIME_DOMAIN = common dso_local global i64 0, align 8
@headphone_convolute = common dso_local global i32 0, align 4
@headphone_fast_convolute = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d of %d samples clipped. Please reduce gain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_24__*)* @headphone_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headphone_frame(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %8, align 8
  %15 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_23__* @ff_get_audio_buffer(%struct.TYPE_24__* %16, i32 %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %11, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %22 = icmp ne %struct.TYPE_23__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 @av_frame_free(%struct.TYPE_23__** %6)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %116

27:                                               ; preds = %3
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 9
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TIME_DOMAIN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %27
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = load i32, i32* @headphone_convolute, align 4
  %80 = call i32 %77(%struct.TYPE_25__* %78, i32 %79, %struct.TYPE_21__* %10, i32* null, i32 2)
  br label %90

81:                                               ; preds = %27
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)** %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %88 = load i32, i32* @headphone_fast_convolute, align 4
  %89 = call i32 %86(%struct.TYPE_25__* %87, i32 %88, %struct.TYPE_21__* %10, i32* null, i32 2)
  br label %90

90:                                               ; preds = %81, %72
  %91 = call i32 (...) @emms_c()
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %93, %95
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %100 = load i32, i32* @AV_LOG_WARNING, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %102, %104
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 2
  %110 = call i32 @av_log(%struct.TYPE_25__* %99, i32 %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %98, %90
  %112 = call i32 @av_frame_free(%struct.TYPE_23__** %6)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %115 = call i32 @ff_filter_frame(%struct.TYPE_24__* %113, %struct.TYPE_23__* %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %23
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @ff_get_audio_buffer(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @emms_c(...) #2

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i32, i32) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
