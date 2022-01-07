; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_18__** }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__*, i32 (i8**, i8**, i8**, i32, i32, i32, i32)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %6, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %15, i64 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = call i8* @ff_get_audio_buffer(%struct.TYPE_18__* %26, i32 1)
  %28 = bitcast i8* %27 to %struct.TYPE_15__*
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %9, align 8
  br label %63

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @ff_get_audio_buffer(%struct.TYPE_18__* %47, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %9, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %103

59:                                               ; preds = %46
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %60, %struct.TYPE_17__* %61)
  br label %63

63:                                               ; preds = %59, %44
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load i32 (i8**, i8**, i8**, i32, i32, i32, i32)*, i32 (i8**, i8**, i8**, i32, i32, i32, i32)** %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8**
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8**
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8**
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %66(i8** %70, i8** %76, i8** %80, i32 %83, i32 %86, i32 %89, i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = icmp ne %struct.TYPE_17__* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %63
  %98 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %99

99:                                               ; preds = %97, %63
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = call i32 @ff_filter_frame(%struct.TYPE_18__* %100, %struct.TYPE_17__* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %55, %35
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
