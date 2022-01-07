; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plusdsp.c_waves_synth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plusdsp.c_waves_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 (float*, float*, float, i32)* }

@amp_sf_tab = common dso_local global i32* null, align 8
@sine_table = common dso_local global double* null, align 8
@hann_window = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32, float*)* @waves_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waves_synth(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3, i32 %4, i32 %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %26
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %20, align 8
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %98, %7
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %103

34:                                               ; preds = %28
  %35 = load i32*, i32** @amp_sf_tab, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to float
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, 0x402E428F60000000
  br label %54

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi float [ %52, %46 ], [ 1.000000e+00, %53 ]
  %56 = fmul float %41, %55
  %57 = fpext float %56 to double
  store double %57, double* %19, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DEQUANT_PHASE(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = xor i32 %65, 128
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sub nsw i32 %64, %68
  %70 = and i32 %69, 2047
  store i32 %70, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %94, %54
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 128
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load double*, double** @sine_table, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = load double, double* %19, align 8
  %81 = fmul double %79, %80
  %82 = load float*, float** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  %88 = fadd double %87, %81
  %89 = fptrunc double %88 to float
  store float %89, float* %85, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %90, %91
  %93 = and i32 %92, 2047
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %74
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %71

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 1
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %20, align 8
  br label %28

103:                                              ; preds = %28
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)** %108, align 8
  %110 = load float*, float** %14, align 8
  %111 = load float*, float** %14, align 8
  %112 = call i32 %109(float* %110, float* %111, float -1.000000e+00, i32 128)
  br label %113

113:                                              ; preds = %106, %103
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %192

118:                                              ; preds = %113
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 2
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %191

127:                                              ; preds = %118
  %128 = load i32, i32* %18, align 4
  %129 = icmp sle i32 %128, 128
  br i1 %129, label %130, label %191

130:                                              ; preds = %127
  %131 = load float*, float** %14, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memset(float* %131, i32 0, i32 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %130
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %190

149:                                              ; preds = %141, %130
  %150 = load float*, float** @hann_window, align 8
  %151 = getelementptr inbounds float, float* %150, i64 0
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %14, align 8
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 0
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fmul float %158, %152
  store float %159, float* %157, align 4
  %160 = load float*, float** @hann_window, align 8
  %161 = getelementptr inbounds float, float* %160, i64 32
  %162 = load float, float* %161, align 4
  %163 = load float*, float** %14, align 8
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %163, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fmul float %168, %162
  store float %169, float* %167, align 4
  %170 = load float*, float** @hann_window, align 8
  %171 = getelementptr inbounds float, float* %170, i64 64
  %172 = load float, float* %171, align 4
  %173 = load float*, float** %14, align 8
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %173, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fmul float %178, %172
  store float %179, float* %177, align 4
  %180 = load float*, float** @hann_window, align 8
  %181 = getelementptr inbounds float, float* %180, i64 96
  %182 = load float, float* %181, align 4
  %183 = load float*, float** %14, align 8
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fmul float %188, %182
  store float %189, float* %187, align 4
  br label %190

190:                                              ; preds = %149, %141
  br label %191

191:                                              ; preds = %190, %127, %118
  br label %192

192:                                              ; preds = %191, %113
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %262

197:                                              ; preds = %192
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  %202 = shl i32 %201, 2
  %203 = load i32, i32* %13, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %261

207:                                              ; preds = %197
  %208 = load i32, i32* %18, align 4
  %209 = icmp sle i32 %208, 128
  br i1 %209, label %210, label %261

210:                                              ; preds = %207
  %211 = load float*, float** @hann_window, align 8
  %212 = getelementptr inbounds float, float* %211, i64 96
  %213 = load float, float* %212, align 4
  %214 = load float*, float** %14, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sub nsw i32 %215, 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %214, i64 %217
  %219 = load float, float* %218, align 4
  %220 = fmul float %219, %213
  store float %220, float* %218, align 4
  %221 = load float*, float** @hann_window, align 8
  %222 = getelementptr inbounds float, float* %221, i64 64
  %223 = load float, float* %222, align 4
  %224 = load float*, float** %14, align 8
  %225 = load i32, i32* %18, align 4
  %226 = sub nsw i32 %225, 3
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %224, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fmul float %229, %223
  store float %230, float* %228, align 4
  %231 = load float*, float** @hann_window, align 8
  %232 = getelementptr inbounds float, float* %231, i64 32
  %233 = load float, float* %232, align 4
  %234 = load float*, float** %14, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sub nsw i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %234, i64 %237
  %239 = load float, float* %238, align 4
  %240 = fmul float %239, %233
  store float %240, float* %238, align 4
  %241 = load float*, float** @hann_window, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  %243 = load float, float* %242, align 4
  %244 = load float*, float** %14, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %244, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fmul float %249, %243
  store float %250, float* %248, align 4
  %251 = load float*, float** %14, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %251, i64 %253
  %255 = load i32, i32* %18, align 4
  %256 = sub nsw i32 128, %255
  %257 = sext i32 %256 to i64
  %258 = mul i64 %257, 4
  %259 = trunc i64 %258 to i32
  %260 = call i32 @memset(float* %254, i32 0, i32 %259)
  br label %261

261:                                              ; preds = %210, %207, %197
  br label %262

262:                                              ; preds = %261, %192
  ret void
}

declare dso_local i32 @DEQUANT_PHASE(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
