; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc_impl.h_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc_impl.h_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float, float, float*, i64, i64* }
%struct.TYPE_8__ = type { float*, i64, i64, i64, i64, i64, i32, i64, i64 }

@rgb_unit = common dso_local global float 0.000000e+00, align 4
@rgb_offset = common dso_local global i64 0, align 8
@artifacts_max = common dso_local global float 0.000000e+00, align 4
@artifacts_mid = common dso_local global i32 0, align 4
@fringing_max = common dso_local global float 0.000000e+00, align 4
@fringing_mid = common dso_local global i32 0, align 4
@gamma_size = common dso_local global i32 0, align 4
@PI = common dso_local global float 0.000000e+00, align 4
@ext_decoder_hue = common dso_local global float 0.000000e+00, align 4
@default_decoder = common dso_local global float* null, align 8
@std_decoder_hue = common dso_local global float 0.000000e+00, align 4
@burst_count = common dso_local global i32 0, align 4
@default_palette_contrast = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = load float, float* @rgb_unit, align 4
  %24 = fmul float 5.000000e-01, %23
  %25 = fmul float %22, %24
  %26 = load i64, i64* @rgb_offset, align 8
  %27 = sitofp i64 %26 to float
  %28 = fadd float %25, %27
  %29 = fptosi float %28 to i64
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to float
  %36 = load float, float* @rgb_unit, align 4
  %37 = fmul float 5.000000e-01, %36
  %38 = fmul float %35, %37
  %39 = load float, float* @rgb_unit, align 4
  %40 = fadd float %38, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store float %40, float* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to float
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store float %46, float* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fcmp ogt float %51, 0.000000e+00
  br i1 %52, label %53, label %62

53:                                               ; preds = %2
  %54 = load float, float* @artifacts_max, align 4
  %55 = load i32, i32* @artifacts_mid, align 4
  %56 = sitofp i32 %55 to float
  %57 = fsub float %54, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fmul float %60, %57
  store float %61, float* %59, align 4
  br label %62

62:                                               ; preds = %53, %2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* @artifacts_mid, align 4
  %67 = sitofp i32 %66 to float
  %68 = fmul float %65, %67
  %69 = load i32, i32* @artifacts_mid, align 4
  %70 = sitofp i32 %69 to float
  %71 = fadd float %68, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store float %71, float* %73, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to float
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store float %77, float* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load float, float* %81, align 8
  %83 = fcmp ogt float %82, 0.000000e+00
  br i1 %83, label %84, label %93

84:                                               ; preds = %62
  %85 = load float, float* @fringing_max, align 4
  %86 = load i32, i32* @fringing_mid, align 4
  %87 = sitofp i32 %86 to float
  %88 = fsub float %85, %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load float, float* %90, align 8
  %92 = fmul float %91, %88
  store float %92, float* %90, align 8
  br label %93

93:                                               ; preds = %84, %62
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load float, float* %95, align 8
  %97 = load i32, i32* @fringing_mid, align 4
  %98 = sitofp i32 %97 to float
  %99 = fmul float %96, %98
  %100 = load i32, i32* @fringing_mid, align 4
  %101 = sitofp i32 %100 to float
  %102 = fadd float %99, %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store float %102, float* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = call i32 @init_filters(%struct.TYPE_9__* %105, %struct.TYPE_8__* %106)
  %108 = load i32, i32* @gamma_size, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %157

110:                                              ; preds = %93
  %111 = load i32, i32* @gamma_size, align 4
  %112 = load i32, i32* @gamma_size, align 4
  %113 = icmp sgt i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = sub nsw i32 %111, %114
  %116 = sitofp i32 %115 to float
  %117 = fdiv float 1.000000e+00, %116
  store float %117, float* %5, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sitofp i64 %120 to float
  %122 = fmul float %121, 5.000000e-01
  %123 = fsub float 0x3FF221FF20000000, %122
  store float %123, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %153, %110
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @gamma_size, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = sitofp i32 %129 to float
  %131 = load float, float* %5, align 4
  %132 = fmul float %130, %131
  %133 = fptosi float %132 to i32
  %134 = load float, float* %6, align 4
  %135 = call i64 @pow(i32 %133, float %134)
  %136 = sitofp i64 %135 to float
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load float, float* %138, align 8
  %140 = fmul float %136, %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = sitofp i64 %143 to float
  %145 = fadd float %140, %144
  %146 = fptosi float %145 to i64
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %146, i64* %152, align 8
  br label %153

153:                                              ; preds = %128
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %124

156:                                              ; preds = %124
  br label %157

157:                                              ; preds = %156, %93
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = sitofp i64 %160 to float
  %162 = load float, float* @PI, align 4
  %163 = fmul float %161, %162
  %164 = load float, float* @PI, align 4
  %165 = fdiv float %164, 1.800000e+02
  %166 = load float, float* @ext_decoder_hue, align 4
  %167 = fmul float %165, %166
  %168 = fadd float %163, %167
  store float %168, float* %8, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = sitofp i64 %171 to float
  %173 = fadd float %172, 1.000000e+00
  store float %173, float* %9, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load float*, float** %175, align 8
  store float* %176, float** %10, align 8
  %177 = load float*, float** %10, align 8
  %178 = icmp ne float* %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %157
  %180 = load float*, float** @default_decoder, align 8
  store float* %180, float** %10, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = call i64 @STD_HUE_CONDITION(%struct.TYPE_8__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load float, float* @PI, align 4
  %186 = fdiv float %185, 1.800000e+02
  %187 = load float, float* @std_decoder_hue, align 4
  %188 = load float, float* @ext_decoder_hue, align 4
  %189 = fsub float %187, %188
  %190 = fmul float %186, %189
  %191 = load float, float* %8, align 4
  %192 = fadd float %191, %190
  store float %192, float* %8, align 4
  br label %193

193:                                              ; preds = %184, %179
  br label %194

194:                                              ; preds = %193, %157
  %195 = load float, float* %8, align 4
  %196 = call i64 @sin(float %195)
  %197 = sitofp i64 %196 to float
  %198 = load float, float* %9, align 4
  %199 = fmul float %197, %198
  store float %199, float* %11, align 4
  %200 = load float, float* %8, align 4
  %201 = call i64 @cos(float %200)
  %202 = sitofp i64 %201 to float
  %203 = load float, float* %9, align 4
  %204 = fmul float %202, %203
  store float %204, float* %12, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load float*, float** %206, align 8
  store float* %207, float** %13, align 8
  %208 = load i32, i32* @burst_count, align 4
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %248, %194
  %210 = load float*, float** %10, align 8
  store float* %210, float** %15, align 8
  store i32 3, i32* %16, align 4
  br label %211

211:                                              ; preds = %236, %209
  %212 = load float*, float** %15, align 8
  %213 = getelementptr inbounds float, float* %212, i32 1
  store float* %213, float** %15, align 8
  %214 = load float, float* %212, align 4
  store float %214, float* %17, align 4
  %215 = load float*, float** %15, align 8
  %216 = getelementptr inbounds float, float* %215, i32 1
  store float* %216, float** %15, align 8
  %217 = load float, float* %215, align 4
  store float %217, float* %18, align 4
  %218 = load float, float* %17, align 4
  %219 = load float, float* %12, align 4
  %220 = fmul float %218, %219
  %221 = load float, float* %18, align 4
  %222 = load float, float* %11, align 4
  %223 = fmul float %221, %222
  %224 = fsub float %220, %223
  %225 = load float*, float** %13, align 8
  %226 = getelementptr inbounds float, float* %225, i32 1
  store float* %226, float** %13, align 8
  store float %224, float* %225, align 4
  %227 = load float, float* %17, align 4
  %228 = load float, float* %11, align 4
  %229 = fmul float %227, %228
  %230 = load float, float* %18, align 4
  %231 = load float, float* %12, align 4
  %232 = fmul float %230, %231
  %233 = fadd float %229, %232
  %234 = load float*, float** %13, align 8
  %235 = getelementptr inbounds float, float* %234, i32 1
  store float* %235, float** %13, align 8
  store float %233, float* %234, align 4
  br label %236

236:                                              ; preds = %211
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %211, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* @burst_count, align 4
  %242 = icmp sle i32 %241, 1
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %252

244:                                              ; preds = %240
  %245 = load float, float* %11, align 4
  %246 = load float, float* %12, align 4
  %247 = call i32 @ROTATE_IQ(float %245, float %246, float 0x3FEBB67A00000000, float -5.000000e-01)
  br label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %209, label %252

252:                                              ; preds = %248, %243
  ret void
}

declare dso_local i32 @init_filters(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i64 @pow(i32, float) #1

declare dso_local i64 @STD_HUE_CONDITION(%struct.TYPE_8__*) #1

declare dso_local i64 @sin(float) #1

declare dso_local i64 @cos(float) #1

declare dso_local i32 @ROTATE_IQ(float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
