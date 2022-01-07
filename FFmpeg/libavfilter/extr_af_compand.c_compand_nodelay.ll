; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_compand.c_compand_nodelay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_compand.c_compand_nodelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, %struct.TYPE_19__**, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)* @compand_nodelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compand_nodelay(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %22, i64 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = call i64 @av_frame_is_writable(%struct.TYPE_18__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %10, align 8
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.TYPE_18__* @ff_get_audio_buffer(i32 %41, i32 %42)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %10, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %138

50:                                               ; preds = %36
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %51, %struct.TYPE_18__* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i32 @av_frame_free(%struct.TYPE_18__** %10)
  %58 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  br label %138

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %34
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %121, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %62
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to double*
  store double* %74, double** %14, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to double*
  store double* %82, double** %15, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i64 %87
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %117, %66
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %95 = load double*, double** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  %100 = call i32 @fabs(double %99)
  %101 = call i32 @update_volume(%struct.TYPE_17__* %94, i32 %100)
  %102 = load double*, double** %14, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call double @get_volume(%struct.TYPE_16__* %107, i32 %110)
  %112 = fmul double %106, %111
  %113 = load double*, double** %15, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  store double %112, double* %116, align 8
  br label %117

117:                                              ; preds = %93
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %89

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %62

124:                                              ; preds = %62
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = icmp ne %struct.TYPE_18__* %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  br label %130

130:                                              ; preds = %128, %124
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %137 = call i32 @ff_filter_frame(i32 %135, %struct.TYPE_18__* %136)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %130, %56, %46
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ff_get_audio_buffer(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @update_volume(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local double @get_volume(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
