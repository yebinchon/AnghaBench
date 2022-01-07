; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_phaser.c_phaser_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_phaser.c_phaser_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.phaser_data = type { float*, float, i32, double, i32, double, i32, float**, float, i64 }

@phaserlfoskipsamples = common dso_local global i32 0, align 4
@phaserlfoshape = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @phaser_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phaser_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca %struct.phaser_data*, align 8
  %13 = alloca float*, align 8
  %14 = alloca [2 x float], align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.phaser_data*
  store %struct.phaser_data* %16, %struct.phaser_data** %12, align 8
  %17 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %18 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %17, i32 0, i32 0
  %19 = load float*, float** %18, align 8
  store float* %19, float** %13, align 8
  %20 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %21 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %24 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %23, i32 0, i32 0
  store float* %22, float** %24, align 8
  %25 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %26 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %29 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %251, %3
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %33 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %256

36:                                               ; preds = %30
  %37 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 0
  %38 = load float*, float** %13, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  store float %40, float* %37, align 4
  %41 = getelementptr inbounds float, float* %37, i64 1
  %42 = load float*, float** %13, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  store float %44, float* %41, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %69, %36
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %54 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %61 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %60, i32 0, i32 1
  %62 = load float, float* %61, align 8
  %63 = fmul float %59, %62
  %64 = fmul float %63, 0x3F847AE140000000
  %65 = fadd float %52, %64
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %67
  store float %65, float* %68, align 4
  br label %69

69:                                               ; preds = %48
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %74 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @phaserlfoskipsamples, align 4
  %78 = srem i32 %75, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %72
  %81 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %82 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %85 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %90 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = call double @cos(i64 %92)
  %94 = fadd double 1.000000e+00, %93
  %95 = fmul double 5.000000e-01, %94
  %96 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %97 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %96, i32 0, i32 3
  store double %95, double* %97, align 8
  %98 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %99 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %98, i32 0, i32 3
  %100 = load double, double* %99, align 8
  %101 = load i32, i32* @phaserlfoshape, align 4
  %102 = sitofp i32 %101 to double
  %103 = fmul double %100, %102
  %104 = fptosi double %103 to i32
  %105 = call i32 @exp(i32 %104)
  %106 = sitofp i32 %105 to double
  %107 = fsub double %106, 1.000000e+00
  %108 = load i32, i32* @phaserlfoshape, align 4
  %109 = call i32 @exp(i32 %108)
  %110 = sub nsw i32 %109, 1
  %111 = sitofp i32 %110 to double
  %112 = fdiv double %107, %111
  %113 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %114 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %113, i32 0, i32 3
  store double %112, double* %114, align 8
  %115 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %116 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %115, i32 0, i32 3
  %117 = load double, double* %116, align 8
  %118 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %119 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %118, i32 0, i32 5
  %120 = load double, double* %119, align 8
  %121 = fmul double %117, %120
  %122 = fsub double 1.000000e+00, %121
  %123 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %124 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %123, i32 0, i32 3
  store double %122, double* %124, align 8
  br label %125

125:                                              ; preds = %80, %72
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %207, %125
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %129 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %210

132:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %203, %132
  %134 = load i32, i32* %8, align 4
  %135 = icmp ult i32 %134, 2
  br i1 %135, label %136, label %206

136:                                              ; preds = %133
  %137 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %138 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %137, i32 0, i32 7
  %139 = load float**, float*** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %139, i64 %141
  %143 = load float*, float** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 %149
  store float %147, float* %150, align 4
  %151 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %152 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %151, i32 0, i32 3
  %153 = load double, double* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fpext float %157 to double
  %159 = fmul double %153, %158
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fpext float %163 to double
  %165 = fadd double %159, %164
  %166 = fptrunc double %165 to float
  %167 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %168 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %167, i32 0, i32 7
  %169 = load float**, float*** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %169, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  store float %166, float* %176, align 4
  %177 = load i32, i32* %8, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 %178
  %180 = load float, float* %179, align 4
  %181 = fpext float %180 to double
  %182 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %183 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %182, i32 0, i32 3
  %184 = load double, double* %183, align 8
  %185 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %186 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %185, i32 0, i32 7
  %187 = load float**, float*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float*, float** %187, i64 %189
  %191 = load float*, float** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  %196 = fpext float %195 to double
  %197 = fmul double %184, %196
  %198 = fsub double %181, %197
  %199 = fptrunc double %198 to float
  %200 = load i32, i32* %8, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %201
  store float %199, float* %202, align 4
  br label %203

203:                                              ; preds = %136
  %204 = load i32, i32* %8, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %133

206:                                              ; preds = %133
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %126

210:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %247, %210
  %212 = load i32, i32* %8, align 4
  %213 = icmp ult i32 %212, 2
  br i1 %213, label %214, label %250

214:                                              ; preds = %211
  %215 = load i32, i32* %8, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %216
  %218 = load float, float* %217, align 4
  %219 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %220 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %219, i32 0, i32 0
  %221 = load float*, float** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  store float %218, float* %224, align 4
  %225 = load i32, i32* %8, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 %226
  %228 = load float, float* %227, align 4
  %229 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %230 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %229, i32 0, i32 8
  %231 = load float, float* %230, align 8
  %232 = fmul float %228, %231
  %233 = load i32, i32* %8, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load %struct.phaser_data*, %struct.phaser_data** %12, align 8
  %238 = getelementptr inbounds %struct.phaser_data, %struct.phaser_data* %237, i32 0, i32 8
  %239 = load float, float* %238, align 8
  %240 = fsub float 1.000000e+00, %239
  %241 = fmul float %236, %240
  %242 = fadd float %232, %241
  %243 = load float*, float** %13, align 8
  %244 = load i32, i32* %8, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  store float %242, float* %246, align 4
  br label %247

247:                                              ; preds = %214
  %248 = load i32, i32* %8, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %211

250:                                              ; preds = %211
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %7, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %7, align 4
  %254 = load float*, float** %13, align 8
  %255 = getelementptr inbounds float, float* %254, i64 2
  store float* %255, float** %13, align 8
  br label %30

256:                                              ; preds = %30
  ret void
}

declare dso_local double @cos(i64) #1

declare dso_local i32 @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
