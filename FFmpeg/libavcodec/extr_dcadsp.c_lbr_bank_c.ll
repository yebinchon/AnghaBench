; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lbr_bank_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lbr_bank_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([4 x float]*, float**, float*, i32, i32)* @lbr_bank_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbr_bank_c([4 x float]* %0, float** %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca [4 x float]*, align 8
  %7 = alloca float**, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  store [4 x float]* %0, [4 x float]** %6, align 8
  store float** %1, float*** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  store float %31, float* %11, align 4
  %32 = load float*, float** %8, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  store float %34, float* %12, align 4
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  store float %37, float* %13, align 4
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  %40 = load float, float* %39, align 4
  store float %40, float* %14, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 4
  %43 = load float, float* %42, align 4
  store float %43, float* %15, align 4
  %44 = load float*, float** %8, align 8
  %45 = getelementptr inbounds float, float* %44, i64 5
  %46 = load float, float* %45, align 4
  store float %46, float* %16, align 4
  %47 = load float*, float** %8, align 8
  %48 = getelementptr inbounds float, float* %47, i64 6
  %49 = load float, float* %48, align 4
  store float %49, float* %17, align 4
  %50 = load float*, float** %8, align 8
  %51 = getelementptr inbounds float, float* %50, i64 7
  %52 = load float, float* %51, align 4
  store float %52, float* %18, align 4
  %53 = load float*, float** %8, align 8
  %54 = getelementptr inbounds float, float* %53, i64 8
  %55 = load float, float* %54, align 4
  store float %55, float* %19, align 4
  %56 = load float*, float** %8, align 8
  %57 = getelementptr inbounds float, float* %56, i64 9
  %58 = load float, float* %57, align 4
  store float %58, float* %20, align 4
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %196, %5
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %199

63:                                               ; preds = %59
  %64 = load float**, float*** %7, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float*, float** %64, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float* %71, float** %22, align 8
  %72 = load float*, float** %22, align 8
  %73 = getelementptr inbounds float, float* %72, i64 -4
  %74 = load float, float* %73, align 4
  %75 = load float, float* %11, align 4
  %76 = fmul float %74, %75
  %77 = load float*, float** %22, align 8
  %78 = getelementptr inbounds float, float* %77, i64 -1
  %79 = load float, float* %78, align 4
  %80 = load float, float* %14, align 4
  %81 = fmul float %79, %80
  %82 = fsub float %76, %81
  store float %82, float* %23, align 4
  %83 = load float*, float** %22, align 8
  %84 = getelementptr inbounds float, float* %83, i64 -3
  %85 = load float, float* %84, align 4
  %86 = load float, float* %12, align 4
  %87 = fmul float %85, %86
  %88 = load float*, float** %22, align 8
  %89 = getelementptr inbounds float, float* %88, i64 -2
  %90 = load float, float* %89, align 4
  %91 = load float, float* %13, align 4
  %92 = fmul float %90, %91
  %93 = fsub float %87, %92
  store float %93, float* %24, align 4
  %94 = load float*, float** %22, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  %96 = load float, float* %95, align 4
  %97 = load float, float* %12, align 4
  %98 = fmul float %96, %97
  %99 = load float*, float** %22, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  %101 = load float, float* %100, align 4
  %102 = load float, float* %13, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %98, %103
  store float %104, float* %25, align 4
  %105 = load float*, float** %22, align 8
  %106 = getelementptr inbounds float, float* %105, i64 3
  %107 = load float, float* %106, align 4
  %108 = load float, float* %11, align 4
  %109 = fmul float %107, %108
  %110 = load float*, float** %22, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  %112 = load float, float* %111, align 4
  %113 = load float, float* %14, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %109, %114
  store float %115, float* %26, align 4
  %116 = load float, float* %15, align 4
  %117 = load float, float* %24, align 4
  %118 = fmul float %116, %117
  %119 = load float, float* %16, align 4
  %120 = load float, float* %25, align 4
  %121 = fmul float %119, %120
  %122 = fsub float %118, %121
  %123 = load float, float* %18, align 4
  %124 = load float, float* %23, align 4
  %125 = fmul float %123, %124
  %126 = fadd float %122, %125
  %127 = load float, float* %17, align 4
  %128 = load float, float* %26, align 4
  %129 = fmul float %127, %128
  %130 = fsub float %126, %129
  %131 = load [4 x float]*, [4 x float]** %6, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x float], [4 x float]* %131, i64 %133
  %135 = getelementptr inbounds [4 x float], [4 x float]* %134, i64 0, i64 0
  store float %130, float* %135, align 4
  %136 = load float, float* %15, align 4
  %137 = load float, float* %26, align 4
  %138 = fmul float %136, %137
  %139 = load float, float* %16, align 4
  %140 = load float, float* %23, align 4
  %141 = fmul float %139, %140
  %142 = fsub float %138, %141
  %143 = load float, float* %18, align 4
  %144 = load float, float* %24, align 4
  %145 = fmul float %143, %144
  %146 = fsub float %142, %145
  %147 = load float, float* %17, align 4
  %148 = load float, float* %25, align 4
  %149 = fmul float %147, %148
  %150 = fsub float %146, %149
  %151 = load [4 x float]*, [4 x float]** %6, align 8
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x float], [4 x float]* %151, i64 %153
  %155 = getelementptr inbounds [4 x float], [4 x float]* %154, i64 0, i64 1
  store float %150, float* %155, align 4
  %156 = load float, float* %17, align 4
  %157 = load float, float* %24, align 4
  %158 = fmul float %156, %157
  %159 = load float, float* %16, align 4
  %160 = load float, float* %26, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %158, %161
  %163 = load float, float* %18, align 4
  %164 = load float, float* %25, align 4
  %165 = fmul float %163, %164
  %166 = fsub float %162, %165
  %167 = load float, float* %15, align 4
  %168 = load float, float* %23, align 4
  %169 = fmul float %167, %168
  %170 = fadd float %166, %169
  %171 = load [4 x float]*, [4 x float]** %6, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x float], [4 x float]* %171, i64 %173
  %175 = getelementptr inbounds [4 x float], [4 x float]* %174, i64 0, i64 2
  store float %170, float* %175, align 4
  %176 = load float, float* %17, align 4
  %177 = load float, float* %23, align 4
  %178 = fmul float %176, %177
  %179 = load float, float* %16, align 4
  %180 = load float, float* %24, align 4
  %181 = fmul float %179, %180
  %182 = fsub float %178, %181
  %183 = load float, float* %18, align 4
  %184 = load float, float* %26, align 4
  %185 = fmul float %183, %184
  %186 = fadd float %182, %185
  %187 = load float, float* %15, align 4
  %188 = load float, float* %25, align 4
  %189 = fmul float %187, %188
  %190 = fsub float %186, %189
  %191 = load [4 x float]*, [4 x float]** %6, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x float], [4 x float]* %191, i64 %193
  %195 = getelementptr inbounds [4 x float], [4 x float]* %194, i64 0, i64 3
  store float %190, float* %195, align 4
  br label %196

196:                                              ; preds = %63
  %197 = load i32, i32* %21, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %21, align 4
  br label %59

199:                                              ; preds = %59
  store i32 12, i32* %21, align 4
  br label %200

200:                                              ; preds = %282, %199
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %10, align 4
  %203 = sub nsw i32 %202, 1
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %285

205:                                              ; preds = %200
  %206 = load [4 x float]*, [4 x float]** %6, align 8
  %207 = load i32, i32* %21, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x float], [4 x float]* %206, i64 %208
  %210 = getelementptr inbounds [4 x float], [4 x float]* %209, i64 0, i64 3
  %211 = load float, float* %210, align 4
  %212 = load float, float* %19, align 4
  %213 = fmul float %211, %212
  store float %213, float* %27, align 4
  %214 = load [4 x float]*, [4 x float]** %6, align 8
  %215 = load i32, i32* %21, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x float], [4 x float]* %214, i64 %217
  %219 = getelementptr inbounds [4 x float], [4 x float]* %218, i64 0, i64 0
  %220 = load float, float* %219, align 4
  %221 = load float, float* %19, align 4
  %222 = fmul float %220, %221
  store float %222, float* %28, align 4
  %223 = load float, float* %28, align 4
  %224 = load float, float* %27, align 4
  %225 = fsub float %223, %224
  %226 = load [4 x float]*, [4 x float]** %6, align 8
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x float], [4 x float]* %226, i64 %228
  %230 = getelementptr inbounds [4 x float], [4 x float]* %229, i64 0, i64 3
  %231 = load float, float* %230, align 4
  %232 = fadd float %231, %225
  store float %232, float* %230, align 4
  %233 = load float, float* %28, align 4
  %234 = load float, float* %27, align 4
  %235 = fadd float %233, %234
  %236 = load [4 x float]*, [4 x float]** %6, align 8
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x float], [4 x float]* %236, i64 %239
  %241 = getelementptr inbounds [4 x float], [4 x float]* %240, i64 0, i64 0
  %242 = load float, float* %241, align 4
  %243 = fsub float %242, %235
  store float %243, float* %241, align 4
  %244 = load [4 x float]*, [4 x float]** %6, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x float], [4 x float]* %244, i64 %246
  %248 = getelementptr inbounds [4 x float], [4 x float]* %247, i64 0, i64 2
  %249 = load float, float* %248, align 4
  %250 = load float, float* %20, align 4
  %251 = fmul float %249, %250
  store float %251, float* %27, align 4
  %252 = load [4 x float]*, [4 x float]** %6, align 8
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x float], [4 x float]* %252, i64 %255
  %257 = getelementptr inbounds [4 x float], [4 x float]* %256, i64 0, i64 1
  %258 = load float, float* %257, align 4
  %259 = load float, float* %20, align 4
  %260 = fmul float %258, %259
  store float %260, float* %28, align 4
  %261 = load float, float* %28, align 4
  %262 = load float, float* %27, align 4
  %263 = fsub float %261, %262
  %264 = load [4 x float]*, [4 x float]** %6, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [4 x float], [4 x float]* %264, i64 %266
  %268 = getelementptr inbounds [4 x float], [4 x float]* %267, i64 0, i64 2
  %269 = load float, float* %268, align 4
  %270 = fadd float %269, %263
  store float %270, float* %268, align 4
  %271 = load float, float* %28, align 4
  %272 = load float, float* %27, align 4
  %273 = fadd float %271, %272
  %274 = load [4 x float]*, [4 x float]** %6, align 8
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x float], [4 x float]* %274, i64 %277
  %279 = getelementptr inbounds [4 x float], [4 x float]* %278, i64 0, i64 1
  %280 = load float, float* %279, align 4
  %281 = fsub float %280, %273
  store float %281, float* %279, align 4
  br label %282

282:                                              ; preds = %205
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %21, align 4
  br label %200

285:                                              ; preds = %200
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
