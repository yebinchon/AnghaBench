; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_inverse_quant_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_inverse_quant_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32*, i32*, float*, i32*, i64* }

@BANDS = common dso_local global i32 0, align 4
@band_tab = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@imc_quantizer2 = common dso_local global float** null, align 8
@imc_quantizer1 = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @inverse_quant_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inverse_quant_coeff(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %252, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BANDS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %255

18:                                               ; preds = %14
  %19 = load i32*, i32** @band_tab, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %248, %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** @band_tab, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %25, %31
  br i1 %32, label %33, label %251

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  store float 0.000000e+00, float* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %33
  br label %248

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 1, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %59
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73, %59
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %4, align 4
  br label %256

84:                                               ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %163

87:                                               ; preds = %84
  %88 = load float**, float*** @imc_quantizer2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 2
  %91 = ashr i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float*, float** %88, i64 %92
  %94 = load float*, float** %93, align 8
  store float* %94, float** %13, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %87
  %105 = load float*, float** %13, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %105, i64 %114
  %116 = load float, float* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fmul float %116, %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load float*, float** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  store float %124, float* %130, align 4
  br label %162

131:                                              ; preds = %87
  %132 = load float*, float** %13, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %133, %140
  %142 = sub nsw i32 %141, 8
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %132, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fneg float %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load float*, float** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fmul float %147, %154
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load float*, float** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  store float %155, float* %161, align 4
  br label %162

162:                                              ; preds = %131, %104
  br label %247

163:                                              ; preds = %84
  %164 = load float**, float*** @imc_quantizer1, align 8
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, 2
  %167 = ashr i32 %166, 1
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 1
  %176 = or i32 %167, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %164, i64 %177
  %179 = load float*, float** %178, align 8
  store float* %179, float** %13, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %163
  %190 = load float*, float** %13, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %190, i64 %199
  %201 = load float, float* %200, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  %204 = load float*, float** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fmul float %201, %208
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load float*, float** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %209, float* %215, align 4
  br label %246

216:                                              ; preds = %163
  %217 = load float*, float** %13, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sub nsw i32 %218, 2
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %219, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %217, i64 %228
  %230 = load float, float* %229, align 4
  %231 = fneg float %230
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 3
  %234 = load float*, float** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = fmul float %231, %238
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load float*, float** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %242, i64 %244
  store float %239, float* %245, align 4
  br label %246

246:                                              ; preds = %216, %189
  br label %247

247:                                              ; preds = %246, %162
  br label %248

248:                                              ; preds = %247, %58
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %24

251:                                              ; preds = %24
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  br label %14

255:                                              ; preds = %14
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %82
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
