; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_reset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, float*, i32, float*, float*, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float*, float* }

@DFT_R2C = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IDFT_C2R = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32)* @yae_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yae_reset(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @av_get_bytes_per_sample(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sdiv i32 %29, 24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @av_log2(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @av_assert0(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %4
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %52, 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 10
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load float*, float** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = call i32 @RE_MALLOC_OR_FAIL(float* %64, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = call i32 @RE_MALLOC_OR_FAIL(float* %78, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 10
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load float*, float** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @RE_MALLOC_OR_FAIL(float* %92, i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load float*, float** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @RE_MALLOC_OR_FAIL(float* %105, i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 9
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @av_rdft_end(i32* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 9
  store i32* null, i32** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 8
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @av_rdft_end(i32* %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 8
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* @DFT_R2C, align 4
  %128 = call i8* @av_rdft_init(i32 %126, i32 %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 9
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %58
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %138 = call i32 @yae_release_buffers(%struct.TYPE_7__* %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %5, align 4
  br label %232

141:                                              ; preds = %58
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* @IDFT_C2R, align 4
  %145 = call i8* @av_rdft_init(i32 %143, i32 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 8
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 8
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %141
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = call i32 @yae_release_buffers(%struct.TYPE_7__* %154)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %5, align 4
  br label %232

158:                                              ; preds = %141
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load float*, float** %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = call i32 @RE_MALLOC_OR_FAIL(float* %161, i32 %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %171, 3
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 6
  %177 = load float*, float** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %180, %183
  %185 = call i32 @RE_MALLOC_OR_FAIL(float* %177, i32 %184)
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 7
  %188 = load float*, float** %187, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @RE_MALLOC_OR_FAIL(float* %188, i32 %194)
  store i32 0, i32* %13, align 4
  br label %196

196:                                              ; preds = %226, %158
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %196
  %203 = load i32, i32* %13, align 4
  %204 = sitofp i32 %203 to double
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sitofp i32 %208 to double
  %210 = fdiv double %204, %209
  store double %210, double* %14, align 8
  %211 = load double, double* @M_PI, align 8
  %212 = fmul double 2.000000e+00, %211
  %213 = load double, double* %14, align 8
  %214 = fmul double %212, %213
  %215 = call double @cos(double %214) #3
  %216 = fsub double 1.000000e+00, %215
  %217 = fmul double 5.000000e-01, %216
  store double %217, double* %15, align 8
  %218 = load double, double* %15, align 8
  %219 = fptrunc double %218 to float
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 7
  %222 = load float*, float** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  store float %219, float* %225, align 4
  br label %226

226:                                              ; preds = %202
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %196

229:                                              ; preds = %196
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = call i32 @yae_clear(%struct.TYPE_7__* %230)
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %229, %153, %136
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @RE_MALLOC_OR_FAIL(float*, i32) #1

declare dso_local i32 @av_rdft_end(i32*) #1

declare dso_local i8* @av_rdft_init(i32, i32) #1

declare dso_local i32 @yae_release_buffers(%struct.TYPE_7__*) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

declare dso_local i32 @yae_clear(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
