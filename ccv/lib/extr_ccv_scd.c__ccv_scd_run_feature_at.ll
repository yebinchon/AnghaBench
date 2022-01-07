; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c__ccv_scd_run_feature_at.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c__ccv_scd_run_feature_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@CCV_SCD_CHANNEL = common dso_local global i32 0, align 4
@_ccv_scd_run_feature_at.theta = internal global float 0x3FD6A09E60000000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, %struct.TYPE_3__*, float*)* @_ccv_scd_run_feature_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_scd_run_feature_at(float* %0, i32 %1, %struct.TYPE_3__* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store float* %3, float** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %147, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %150

20:                                               ; preds = %17
  %21 = load float*, float** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %22, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %30, %37
  %39 = load i32, i32* @CCV_SCD_CHANNEL, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %21, i64 %41
  store float* %42, float** %11, align 8
  %43 = load float*, float** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %44, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %52, %59
  %61 = load i32, i32* @CCV_SCD_CHANNEL, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %43, i64 %63
  store float* %64, float** %12, align 8
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %66, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %74, %81
  %83 = load i32, i32* @CCV_SCD_CHANNEL, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %65, i64 %85
  store float* %86, float** %13, align 8
  %87 = load float*, float** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %88, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %96, %103
  %105 = load i32, i32* @CCV_SCD_CHANNEL, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %87, i64 %107
  store float* %108, float** %14, align 8
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %143, %20
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 8
  br i1 %111, label %112, label %146

112:                                              ; preds = %109
  %113 = load float*, float** %14, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %12, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fsub float %117, %122
  %124 = load float*, float** %11, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fadd float %123, %128
  %130 = load float*, float** %13, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fsub float %129, %134
  %136 = load float*, float** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %137, 8
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %136, i64 %141
  store float %135, float* %142, align 4
  br label %143

143:                                              ; preds = %112
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %109

146:                                              ; preds = %109
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %17

150:                                              ; preds = %17
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %168, %150
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load float*, float** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = load float, float* %158, align 4
  %160 = load float*, float** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %160, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fmul float %159, %164
  %166 = load float, float* %15, align 4
  %167 = fadd float %166, %165
  store float %167, float* %15, align 4
  br label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %151

171:                                              ; preds = %151
  %172 = load float, float* %15, align 4
  %173 = call i32 @sqrtf(float %172)
  %174 = sitofp i32 %173 to double
  %175 = fadd double %174, 0x3EB0C6F7A0B5ED8D
  %176 = fdiv double 1.000000e+00, %175
  %177 = fptrunc double %176 to float
  store float %177, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %219, %171
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 32
  br i1 %180, label %181, label %222

181:                                              ; preds = %178
  %182 = load float*, float** %8, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float, float* %15, align 4
  %188 = fmul float %186, %187
  %189 = load float*, float** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  store float %188, float* %192, align 4
  %193 = load float*, float** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  %198 = load float, float* @_ccv_scd_run_feature_at.theta, align 4
  %199 = fneg float %198
  %200 = load float, float* @_ccv_scd_run_feature_at.theta, align 4
  %201 = call float @ccv_clamp(float %197, float %199, float %200)
  %202 = load float*, float** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %202, i64 %204
  store float %201, float* %205, align 4
  %206 = load float*, float** %8, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** %8, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fmul float %210, %215
  %217 = load float, float* %16, align 4
  %218 = fadd float %217, %216
  store float %218, float* %16, align 4
  br label %219

219:                                              ; preds = %181
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %178

222:                                              ; preds = %178
  %223 = load float, float* %16, align 4
  %224 = call i32 @sqrtf(float %223)
  %225 = sitofp i32 %224 to double
  %226 = fadd double %225, 0x3EB0C6F7A0B5ED8D
  %227 = fdiv double 1.000000e+00, %226
  %228 = fptrunc double %227 to float
  store float %228, float* %16, align 4
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %244, %222
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %230, 32
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load float*, float** %8, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %233, i64 %235
  %237 = load float, float* %236, align 4
  %238 = load float, float* %16, align 4
  %239 = fmul float %237, %238
  %240 = load float*, float** %8, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  store float %239, float* %243, align 4
  br label %244

244:                                              ; preds = %232
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %229

247:                                              ; preds = %229
  ret void
}

declare dso_local i32 @sqrtf(float) #1

declare dso_local float @ccv_clamp(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
