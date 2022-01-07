; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_19__** }
%struct.TYPE_17__ = type { double, double, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %21, i64 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to double*
  store double* %32, double** %9, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  store double %35, double* %10, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  store double %38, double* %11, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = call i64 @av_frame_is_writable(%struct.TYPE_18__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %12, align 8
  br label %60

44:                                               ; preds = %2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_18__* @ff_get_audio_buffer(%struct.TYPE_19__* %45, i32 %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %12, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %159

56:                                               ; preds = %44
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %57, %struct.TYPE_18__* %58)
  br label %60

60:                                               ; preds = %56, %42
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to double*
  store double* %66, double** %13, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %146, %60
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %149

73:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %130, %73
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %133

80:                                               ; preds = %74
  %81 = load double, double* %10, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %80
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load double*, double** %9, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = load double, double* %11, align 8
  %112 = fmul double %110, %111
  %113 = call double @biquad(i32* %105, double %112)
  br label %122

114:                                              ; preds = %80
  %115 = load double*, double** %9, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load double, double* %11, align 8
  %121 = fmul double %119, %120
  br label %122

122:                                              ; preds = %114, %98
  %123 = phi double [ %113, %98 ], [ %121, %114 ]
  %124 = call double @biquad(i32* %88, double %123)
  %125 = fmul double %81, %124
  %126 = load double*, double** %13, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  store double %125, double* %129, align 8
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %74

133:                                              ; preds = %74
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load double*, double** %13, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds double, double* %137, i64 %138
  store double* %139, double** %13, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load double*, double** %9, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds double, double* %143, i64 %144
  store double* %145, double** %9, align 8
  br label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %67

149:                                              ; preds = %67
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %152 = icmp ne %struct.TYPE_18__* %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  br label %155

155:                                              ; preds = %153, %149
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %158 = call i32 @ff_filter_frame(%struct.TYPE_19__* %156, %struct.TYPE_18__* %157)
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %52
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ff_get_audio_buffer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local double @biquad(i32*, double) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
