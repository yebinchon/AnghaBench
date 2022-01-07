; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft.c_gpu_fft_prepare.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft.c_gpu_fft_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT = type { i32, i32, i32, i32, i32 }
%struct.GPU_FFT_BASE = type { i64, i8*, i8** }
%struct.GPU_FFT_PTR = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i64 }

@GPU_FFT_QPUS = common dso_local global i32 0, align 4
@GPU_FFT_BUSY_WAIT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_prepare(i32 %0, i32 %1, i32 %2, i32 %3, %struct.GPU_FFT** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.GPU_FFT**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.GPU_FFT_BASE*, align 8
  %29 = alloca %struct.GPU_FFT_PTR, align 8
  %30 = alloca %struct.GPU_FFT*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.GPU_FFT** %4, %struct.GPU_FFT*** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @gpu_fft_twiddle_size(i32 %31, i32* %24, i32* %25, i32* %26)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 -2, i32* %6, align 4
  br label %275

35:                                               ; preds = %5
  store i32 4096, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 4, %37
  %39 = or i64 %38, 4095
  %40 = add i64 1, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @gpu_fft_shader_size(i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i32, i32* @GPU_FFT_QPUS, align 4
  %46 = load i32, i32* %25, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 64, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* @GPU_FFT_QPUS, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 2
  %57 = add nsw i32 5, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 %54, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @GPU_FFT_QPUS, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = mul i64 %63, 2
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 %67, %68
  %70 = mul i32 %69, 2
  %71 = add i32 %66, %70
  %72 = load i32, i32* %15, align 4
  %73 = add i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* %17, align 4
  %79 = add i32 %77, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @gpu_fft_alloc(i32 %80, i32 %81, %struct.GPU_FFT_PTR* %29)
  store i32 %82, i32* %27, align 4
  %83 = load i32, i32* %27, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %35
  %86 = load i32, i32* %27, align 4
  store i32 %86, i32* %6, align 4
  br label %275

87:                                               ; preds = %35
  %88 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.GPU_FFT*
  store %struct.GPU_FFT* %91, %struct.GPU_FFT** %30, align 8
  %92 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %93 = bitcast %struct.GPU_FFT* %92 to %struct.GPU_FFT_BASE*
  store %struct.GPU_FFT_BASE* %93, %struct.GPU_FFT_BASE** %28, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %29, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %99 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %102 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %107 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %109 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = udiv i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %115 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %26, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %87
  %120 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %121 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = mul i32 %122, %123
  %125 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %126 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %87
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %10, align 4
  %132 = mul i32 %130, %131
  %133 = mul i32 %132, 2
  %134 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %29, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @gpu_fft_shader_code(i32 %139)
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @memcpy(i64 %138, i32 %140, i32 %141)
  %143 = load i32, i32* %15, align 4
  %144 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %29, i32 %143)
  %145 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %146 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @gpu_fft_twiddle_data(i32 %147, i32 %148, i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %29, i32 %153)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %20, align 4
  %156 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %19, align 8
  store i32 0, i32* %23, align 4
  br label %159

159:                                              ; preds = %230, %129
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* @GPU_FFT_QPUS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %233

163:                                              ; preds = %159
  %164 = load i32, i32* %20, align 4
  %165 = load i32*, i32** %19, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %19, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32, i32* %20, align 4
  %168 = zext i32 %167 to i64
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %25, align 4
  %172 = mul nsw i32 %170, %171
  %173 = add nsw i32 %169, %172
  %174 = sext i32 %173 to i64
  %175 = mul i64 64, %174
  %176 = add i64 %168, %175
  %177 = trunc i64 %176 to i32
  %178 = load i32*, i32** %19, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %19, align 8
  store i32 %177, i32* %178, align 4
  %180 = load i32, i32* %23, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %19, align 8
  store i32 %180, i32* %181, align 4
  store i32 0, i32* %22, align 4
  br label %183

183:                                              ; preds = %206, %163
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %183
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %22, align 4
  %191 = mul i32 %189, %190
  %192 = add i32 %188, %191
  %193 = load i32*, i32** %19, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %19, align 8
  store i32 %192, i32* %193, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %22, align 4
  %198 = mul i32 %196, %197
  %199 = add i32 %195, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %10, align 4
  %202 = mul i32 %200, %201
  %203 = add i32 %199, %202
  %204 = load i32*, i32** %19, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %19, align 8
  store i32 %203, i32* %204, align 4
  br label %206

206:                                              ; preds = %187
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %22, align 4
  br label %183

209:                                              ; preds = %183
  %210 = load i32*, i32** %19, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %19, align 8
  store i32 0, i32* %210, align 4
  %212 = load i32, i32* %23, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32*, i32** %19, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %19, align 8
  store i32 %214, i32* %215, align 4
  %217 = load i32, i32* %10, align 4
  %218 = mul nsw i32 %217, 2
  %219 = add nsw i32 5, %218
  %220 = sext i32 %219 to i64
  %221 = mul i64 4, %220
  %222 = trunc i64 %221 to i32
  %223 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %29, i32 %222)
  %224 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %225 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %224, i32 0, i32 2
  %226 = load i8**, i8*** %225, align 8
  %227 = load i32, i32* %23, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  store i8* %223, i8** %229, align 8
  br label %230

230:                                              ; preds = %209
  %231 = load i32, i32* %23, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %23, align 4
  br label %159

233:                                              ; preds = %159
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %8, align 4
  %236 = shl i32 %234, %235
  %237 = load i32, i32* @GPU_FFT_BUSY_WAIT_LIMIT, align 4
  %238 = icmp sle i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %241 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  br label %272

242:                                              ; preds = %233
  store i32 0, i32* %23, align 4
  br label %243

243:                                              ; preds = %264, %242
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* @GPU_FFT_QPUS, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  %248 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %249 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %248, i32 0, i32 2
  %250 = load i8**, i8*** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load i32*, i32** %19, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %19, align 8
  store i32 %255, i32* %256, align 4
  %258 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %259 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = ptrtoint i8* %260 to i32
  %262 = load i32*, i32** %19, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %19, align 8
  store i32 %261, i32* %262, align 4
  br label %264

264:                                              ; preds = %247
  %265 = load i32, i32* %23, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %23, align 4
  br label %243

267:                                              ; preds = %243
  %268 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %29, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %28, align 8
  %271 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %267, %239
  %273 = load %struct.GPU_FFT*, %struct.GPU_FFT** %30, align 8
  %274 = load %struct.GPU_FFT**, %struct.GPU_FFT*** %11, align 8
  store %struct.GPU_FFT* %273, %struct.GPU_FFT** %274, align 8
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %272, %85, %34
  %276 = load i32, i32* %6, align 4
  ret i32 %276
}

declare dso_local i64 @gpu_fft_twiddle_size(i32, i32*, i32*, i32*) #1

declare dso_local i32 @gpu_fft_shader_size(i32) #1

declare dso_local i32 @gpu_fft_alloc(i32, i32, %struct.GPU_FFT_PTR*) #1

declare dso_local i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @gpu_fft_shader_code(i32) #1

declare dso_local i32 @gpu_fft_twiddle_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
