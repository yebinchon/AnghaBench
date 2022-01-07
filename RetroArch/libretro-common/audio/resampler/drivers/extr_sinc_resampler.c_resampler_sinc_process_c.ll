; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/resampler/drivers/extr_sinc_resampler.c_resampler_sinc_process_c.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/resampler/drivers/extr_sinc_resampler.c_resampler_sinc_process_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler_data = type { i32, float*, float*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, float*, float*, i64, float*, i32, float }

@SINC_WINDOW_KAISER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.resampler_data*)* @resampler_sinc_process_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resampler_sinc_process_c(i8* %0, %struct.resampler_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.resampler_data*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store %struct.resampler_data* %1, %struct.resampler_data** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %5, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = shl i32 1, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %35 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = udiv i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %39 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %38, i32 0, i32 1
  %40 = load float*, float** %39, align 8
  store float* %40, float** %8, align 8
  %41 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %42 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %41, i32 0, i32 2
  %43 = load float*, float** %42, align 8
  store float* %43, float** %9, align 8
  %44 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %45 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %264, %2
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %265

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp uge i32 %57, %58
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i1 [ false, %51 ], [ %59, %54 ]
  br i1 %61, label %62, label %127

62:                                               ; preds = %60
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load float*, float** %8, align 8
  %79 = getelementptr inbounds float, float* %78, i32 1
  store float* %79, float** %8, align 8
  %80 = load float, float* %78, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load float*, float** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds float, float* %83, i64 %86
  store float %80, float* %87, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load float*, float** %89, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = getelementptr inbounds float, float* %90, i64 %97
  store float %80, float* %98, align 4
  %99 = load float*, float** %8, align 8
  %100 = getelementptr inbounds float, float* %99, i32 1
  store float* %100, float** %8, align 8
  %101 = load float, float* %99, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  %104 = load float*, float** %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds float, float* %104, i64 %107
  store float %101, float* %108, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = load float*, float** %110, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = getelementptr inbounds float, float* %111, i64 %118
  store float %101, float* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sub i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %10, align 8
  br label %51

127:                                              ; preds = %60
  br label %128

128:                                              ; preds = %248, %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %264

134:                                              ; preds = %128
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float* null, float** %16, align 8
  store float* null, float** %17, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  %137 = load float*, float** %136, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds float, float* %137, i64 %140
  store float* %141, float** %18, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  %144 = load float*, float** %143, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds float, float* %144, i64 %147
  store float* %148, float** %19, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %20, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = lshr i32 %155, %158
  store i32 %159, i32* %21, align 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SINC_WINDOW_KAISER, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %191

165:                                              ; preds = %134
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 8
  %168 = load float*, float** %167, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %20, align 4
  %171 = mul i32 %169, %170
  %172 = mul i32 %171, 2
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %168, i64 %173
  store float* %174, float** %16, align 8
  %175 = load float*, float** %16, align 8
  %176 = load i32, i32* %20, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  store float* %178, float** %17, align 8
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %181, %184
  %186 = uitofp i32 %185 to float
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 10
  %189 = load float, float* %188, align 4
  %190 = fmul float %186, %189
  store float %190, float* %13, align 4
  br label %200

191:                                              ; preds = %134
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 8
  %194 = load float*, float** %193, align 8
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %20, align 4
  %197 = mul i32 %195, %196
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %194, i64 %198
  store float* %199, float** %16, align 8
  br label %200

200:                                              ; preds = %191, %165
  store i32 0, i32* %12, align 4
  br label %201

201:                                              ; preds = %245, %200
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %20, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %248

205:                                              ; preds = %201
  %206 = load float*, float** %16, align 8
  %207 = load i32, i32* %12, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  store float %210, float* %22, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SINC_WINDOW_KAISER, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %205
  %217 = load float, float* %22, align 4
  %218 = load float*, float** %17, align 8
  %219 = load i32, i32* %12, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load float, float* %13, align 4
  %224 = fmul float %222, %223
  %225 = fadd float %217, %224
  store float %225, float* %22, align 4
  br label %226

226:                                              ; preds = %216, %205
  %227 = load float*, float** %18, align 8
  %228 = load i32, i32* %12, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = load float, float* %22, align 4
  %233 = fmul float %231, %232
  %234 = load float, float* %14, align 4
  %235 = fadd float %234, %233
  store float %235, float* %14, align 4
  %236 = load float*, float** %19, align 8
  %237 = load i32, i32* %12, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %239, align 4
  %241 = load float, float* %22, align 4
  %242 = fmul float %240, %241
  %243 = load float, float* %15, align 4
  %244 = fadd float %243, %242
  store float %244, float* %15, align 4
  br label %245

245:                                              ; preds = %226
  %246 = load i32, i32* %12, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %201

248:                                              ; preds = %201
  %249 = load float, float* %14, align 4
  %250 = load float*, float** %9, align 8
  %251 = getelementptr inbounds float, float* %250, i64 0
  store float %249, float* %251, align 4
  %252 = load float, float* %15, align 4
  %253 = load float*, float** %9, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  store float %252, float* %254, align 4
  %255 = load float*, float** %9, align 8
  %256 = getelementptr inbounds float, float* %255, i64 2
  store float* %256, float** %9, align 8
  %257 = load i64, i64* %11, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %11, align 8
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = add i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %128

264:                                              ; preds = %128
  br label %47

265:                                              ; preds = %47
  %266 = load i64, i64* %11, align 8
  %267 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %268 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %267, i32 0, i32 4
  store i64 %266, i64* %268, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
