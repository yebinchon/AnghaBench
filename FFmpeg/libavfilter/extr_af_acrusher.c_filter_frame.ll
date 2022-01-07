; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrusher.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrusher.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { double, double, double, double, i32, i64, i32*, i64, i32, i64 }
%struct.TYPE_17__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %6, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to double*
  store double* %34, double** %10, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  store double %37, double* %12, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  store double %40, double* %13, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  store double %43, double* %14, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %9, align 8
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__* %50, i32 %53)
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %9, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %186

61:                                               ; preds = %49
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %62, %struct.TYPE_17__* %63)
  br label %65

65:                                               ; preds = %61, %47
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to double*
  store double* %71, double** %11, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %173, %65
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %176

78:                                               ; preds = %72
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to double
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load double, double* %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 4
  %93 = call double @lfo_get(i32* %92)
  %94 = fadd double %93, 5.000000e-01
  %95 = fmul double %90, %94
  %96 = fadd double %87, %95
  %97 = fptosi double %96 to i64
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @round(i64 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %83, %78
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %152, %106
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %155

113:                                              ; preds = %107
  %114 = load double*, double** %10, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load double, double* %12, align 8
  %120 = fmul double %118, %119
  store double %120, double* %17, align 8
  %121 = load double, double* %14, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load double, double* %17, align 8
  %130 = call double @samplereduction(%struct.TYPE_20__* %122, i32* %128, double %129)
  %131 = fmul double %121, %130
  %132 = load double*, double** %10, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %132, i64 %134
  %136 = load double, double* %135, align 8
  %137 = load double, double* %14, align 8
  %138 = fsub double 1.000000e+00, %137
  %139 = fmul double %136, %138
  %140 = load double, double* %12, align 8
  %141 = fmul double %139, %140
  %142 = fadd double %131, %141
  store double %142, double* %17, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = load double, double* %17, align 8
  %145 = call double @bitreduction(%struct.TYPE_20__* %143, double %144)
  %146 = load double, double* %13, align 8
  %147 = fmul double %145, %146
  %148 = load double*, double** %11, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  store double %147, double* %151, align 8
  br label %152

152:                                              ; preds = %113
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %107

155:                                              ; preds = %107
  %156 = load i32, i32* %16, align 4
  %157 = load double*, double** %10, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds double, double* %157, i64 %158
  store double* %159, double** %10, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load double*, double** %11, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds double, double* %161, i64 %162
  store double* %163, double** %11, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %155
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  %171 = call i32 @lfo_advance(i32* %170, i32 1)
  br label %172

172:                                              ; preds = %168, %155
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %72

176:                                              ; preds = %72
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %179 = icmp ne %struct.TYPE_17__* %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %182

182:                                              ; preds = %180, %176
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %185 = call i32 @ff_filter_frame(%struct.TYPE_18__* %183, %struct.TYPE_17__* %184)
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %57
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local double @lfo_get(i32*) #1

declare dso_local i32 @round(i64) #1

declare dso_local double @samplereduction(%struct.TYPE_20__*, i32*, double) #1

declare dso_local double @bitreduction(%struct.TYPE_20__*, double) #1

declare dso_local i32 @lfo_advance(i32*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
