; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_FilterAudioFrame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_FilterAudioFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { double, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, double, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i32 }

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@AUDIO_BUF = common dso_local global i32 0, align 4
@HB_FRAME_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*, %struct.TYPE_18__*)* @FilterAudioFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @FilterAudioFrame(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %25, %2
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %205, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %100

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hb_mixdown_get_discrete_channel_count(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = bitcast i64* %73 to i32**
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.TYPE_18__* @hb_audio_resample(i32* %71, i32** %74, i32 %75)
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %7, align 8
  %77 = call i32 @hb_buffer_close(%struct.TYPE_18__** %5)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = icmp eq %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %53
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %215

81:                                               ; preds = %53
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %90, %94
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %5, align 8
  br label %100

100:                                              ; preds = %81, %47
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = fcmp ogt double %105, 0.000000e+00
  br i1 %106, label %107, label %156

107:                                              ; preds = %100
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %152, %107
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %114
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to float*
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fpext float %126 to double
  store double %127, double* %12, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load double, double* %130, align 8
  %132 = load double, double* %12, align 8
  %133 = fmul double %132, %131
  store double %133, double* %12, align 8
  %134 = load double, double* %12, align 8
  %135 = fcmp ogt double %134, 0.000000e+00
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = load double, double* %12, align 8
  %138 = call double @MIN(double %137, double 1.000000e+00)
  store double %138, double* %12, align 8
  br label %142

139:                                              ; preds = %118
  %140 = load double, double* %12, align 8
  %141 = call double @MAX(double %140, double -1.000000e+00)
  store double %141, double* %12, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load double, double* %12, align 8
  %144 = fptrunc double %143 to float
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to float*
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  store float %144, float* %151, align 4
  br label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %114

155:                                              ; preds = %114
  br label %204

156:                                              ; preds = %100
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load double, double* %160, align 8
  %162 = fcmp olt double %161, 0.000000e+00
  br i1 %162, label %163, label %203

163:                                              ; preds = %156
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = udiv i64 %167, 4
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %199, %163
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %170
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to float*
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  store double %183, double* %15, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = load double, double* %15, align 8
  %189 = fmul double %188, %187
  store double %189, double* %15, align 8
  %190 = load double, double* %15, align 8
  %191 = fptrunc double %190 to float
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to float*
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  store float %191, float* %198, align 4
  br label %199

199:                                              ; preds = %174
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %170

202:                                              ; preds = %170
  br label %203

203:                                              ; preds = %202, %156
  br label %204

204:                                              ; preds = %203, %155
  br label %205

205:                                              ; preds = %204, %38
  %206 = load i32, i32* @AUDIO_BUF, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 4
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* @HB_FRAME_AUDIO, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 3
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %214, %struct.TYPE_18__** %3, align 8
  br label %215

215:                                              ; preds = %205, %80
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %216
}

declare dso_local i32 @hb_mixdown_get_discrete_channel_count(i32) #1

declare dso_local %struct.TYPE_18__* @hb_audio_resample(i32*, i32**, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_18__**) #1

declare dso_local double @MIN(double, double) #1

declare dso_local double @MAX(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
