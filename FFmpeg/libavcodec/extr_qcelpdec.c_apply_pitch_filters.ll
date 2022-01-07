; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_apply_pitch_filters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_apply_pitch_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, double*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double*, i32*, double* }

@RATE_HALF = common dso_local global i64 0, align 8
@SILENCE = common dso_local global i64 0, align 8
@I_F_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*)* @apply_pitch_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_pitch_filters(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RATE_HALF, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SILENCE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I_F_Q, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %217

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RATE_HALF, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %217

32:                                               ; preds = %26, %14, %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RATE_HALF, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fcmp une double %50, 0.000000e+00
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 2.500000e-01
  br label %65

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %52
  %66 = phi double [ %63, %52 ], [ 0.000000e+00, %64 ]
  %67 = fptosi double %66 to i32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load double*, double** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fadd double %81, 1.600000e+01
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load double*, double** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  store double %82, double* %88, align 8
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %39

92:                                               ; preds = %39
  br label %155

93:                                               ; preds = %32
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @I_F_Q, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sitofp i32 %108 to double
  %110 = fmul double 3.000000e-01, %109
  %111 = fsub double 9.000000e-01, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %8, align 4
  br label %114

113:                                              ; preds = %99
  store float 0.000000e+00, float* %8, align 4
  br label %114

114:                                              ; preds = %113, %104
  br label %123

115:                                              ; preds = %93
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SILENCE, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @av_assert2(i32 %121)
  store float 1.000000e+00, float* %8, align 4
  br label %123

123:                                              ; preds = %115, %114
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to double
  %136 = load float, float* %8, align 4
  %137 = fpext float %136 to double
  %138 = call double @FFMIN(double %135, double %137)
  %139 = fptosi double %138 to i32
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %127
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %124

149:                                              ; preds = %124
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load double*, double** %152, align 8
  %154 = call i32 @memset(double* %153, i32 0, i32 8)
  br label %155

155:                                              ; preds = %149, %92
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load float*, float** %4, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to double*
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load double*, double** %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load double*, double** %169, align 8
  %171 = call float* @do_pitchfilter(i32 %158, float* %159, double* %163, double* %166, double* %170)
  store float* %171, float** %6, align 8
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %193, %155
  %173 = load i32, i32* %5, align 4
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %196

175:                                              ; preds = %172
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to double
  %184 = call double @FFMIN(double %183, double 1.000000e+00)
  %185 = fmul double 5.000000e-01, %184
  %186 = fptosi double %185 to i32
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  br label %193

193:                                              ; preds = %175
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %172

196:                                              ; preds = %172
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load float*, float** %6, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = bitcast i32* %203 to double*
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load double*, double** %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load double*, double** %210, align 8
  %212 = call float* @do_pitchfilter(i32 %199, float* %200, double* %204, double* %207, double* %211)
  store float* %212, float** %7, align 8
  %213 = load float*, float** %4, align 8
  %214 = load float*, float** %6, align 8
  %215 = load float*, float** %7, align 8
  %216 = call i32 @apply_gain_ctrl(float* %213, float* %214, float* %215)
  br label %239

217:                                              ; preds = %26, %20
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load float*, float** %4, align 8
  %222 = getelementptr inbounds float, float* %221, i64 17
  %223 = call i32 @memcpy(i32 %220, float* %222, i32 572)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load float*, float** %4, align 8
  %228 = getelementptr inbounds float, float* %227, i64 17
  %229 = call i32 @memcpy(i32 %226, float* %228, i32 572)
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = bitcast i32* %232 to double*
  %234 = call i32 @memset(double* %233, i32 0, i32 8)
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load double*, double** %236, align 8
  %238 = call i32 @memset(double* %237, i32 0, i32 8)
  br label %239

239:                                              ; preds = %217, %196
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local double @FFMIN(double, double) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local float* @do_pitchfilter(i32, float*, double*, double*, double*) #1

declare dso_local i32 @apply_gain_ctrl(float*, float*, float*) #1

declare dso_local i32 @memcpy(i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
