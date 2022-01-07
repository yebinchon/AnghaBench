; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_25__**, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*, i32, %struct.TYPE_23__*, i32*, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %7, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %19, i64 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %8, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = call i32 @ff_filter_frame(%struct.TYPE_25__* %27, %struct.TYPE_24__* %28)
  store i32 %29, i32* %3, align 4
  br label %99

30:                                               ; preds = %2
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %31, i32 %34, i32 %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %10, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %99

45:                                               ; preds = %30
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %46, %struct.TYPE_24__* %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = bitcast %struct.TYPE_20__* %56 to i8*
  %60 = bitcast %struct.TYPE_20__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %76

61:                                               ; preds = %45
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %61, %54
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store %struct.TYPE_24__* %77, %struct.TYPE_24__** %78, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %80, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_23__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_23__*, i32*, i32)** %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = load i32, i32* @filter_slice, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %92 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_26__* %91)
  %93 = call i32 @FFMIN(i32 %90, i32 %92)
  %94 = call i32 %85(%struct.TYPE_26__* %86, i32 %87, %struct.TYPE_23__* %9, i32* null, i32 %93)
  %95 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %98 = call i32 @ff_filter_frame(%struct.TYPE_25__* %96, %struct.TYPE_24__* %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %76, %41, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
