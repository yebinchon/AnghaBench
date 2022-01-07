; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_25__**, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)* }
%struct.TYPE_22__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TIME_DOMAIN = common dso_local global i64 0, align 8
@sofalizer_convolute = common dso_local global i32 0, align 4
@FREQUENCY_DOMAIN = common dso_local global i64 0, align 8
@sofalizer_fast_convolute = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d of %d samples clipped. Please reduce gain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %6, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %7, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %20, i64 0
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %8, align 8
  %23 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_24__* @ff_get_audio_buffer(%struct.TYPE_25__* %24, i32 %27)
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %11, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %30 = icmp ne %struct.TYPE_24__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %129

35:                                               ; preds = %2
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %36, %struct.TYPE_24__* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 9
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %40, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 8
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 6
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 5
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i32* %55, i32** %56, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TIME_DOMAIN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %35
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)** %82, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %85 = load i32, i32* @sofalizer_convolute, align 4
  %86 = call i32 %83(%struct.TYPE_26__* %84, i32 %85, %struct.TYPE_22__* %10, i32* null, i32 2)
  br label %103

87:                                               ; preds = %35
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FREQUENCY_DOMAIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)** %97, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %100 = load i32, i32* @sofalizer_fast_convolute, align 4
  %101 = call i32 %98(%struct.TYPE_26__* %99, i32 %100, %struct.TYPE_22__* %10, i32* null, i32 2)
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %78
  %104 = call i32 (...) @emms_c()
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = load i32, i32* @AV_LOG_WARNING, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %115, %117
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 2
  %123 = call i32 @av_log(%struct.TYPE_26__* %112, i32 %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %111, %103
  %125 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %128 = call i32 @ff_filter_frame(%struct.TYPE_25__* %126, %struct.TYPE_24__* %127)
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %31
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_24__* @ff_get_audio_buffer(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #2

declare dso_local i32 @emms_c(...) #2

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, i32, i32) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
