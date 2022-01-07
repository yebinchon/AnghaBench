; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aderivative.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aderivative.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32 (i8**, i8**, i8**, i32, i32)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %18, i64 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @ff_get_audio_buffer(%struct.TYPE_16__* %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @av_frame_copy_props(%struct.TYPE_15__* %34, %struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = call i8* @ff_get_audio_buffer(%struct.TYPE_16__* %42, i32 1)
  %44 = bitcast i8* %43 to %struct.TYPE_14__*
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %85

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i32 (i8**, i8**, i8**, i32, i32)*, i32 (i8**, i8**, i8**, i32, i32)** %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8**
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8**
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8**
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %59(i8** %63, i8** %69, i8** %73, i32 %76, i32 %79)
  %81 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = call i32 @ff_filter_frame(%struct.TYPE_16__* %82, %struct.TYPE_15__* %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %56, %51, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @ff_get_audio_buffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
