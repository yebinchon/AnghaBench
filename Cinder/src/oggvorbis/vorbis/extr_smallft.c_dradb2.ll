; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb2.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*, float*, float*)* @dradb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dradb2(i32 %0, i32 %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 1
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %73, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = load float*, float** %8, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %8, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %38, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fadd float %37, %44
  %46 = load float*, float** %9, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float %45, float* %49, align 4
  %50 = load float*, float** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %8, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %55, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fsub float %54, %61
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %63, i64 %67
  store float %62, float* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %32
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %28

76:                                               ; preds = %28
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %283

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %228

84:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %219, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %222

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 %92, 1
  %94 = add nsw i32 %91, %93
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %19, align 4
  store i32 2, i32* %11, align 4
  br label %98

98:                                               ; preds = %211, %89
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %214

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = sub nsw i32 %107, 2
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %19, align 4
  %111 = load float*, float** %8, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %111, i64 %114
  %116 = load float, float* %115, align 4
  %117 = load float*, float** %8, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %117, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fadd float %116, %122
  %124 = load float*, float** %9, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %124, i64 %127
  store float %123, float* %128, align 4
  %129 = load float*, float** %8, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %129, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load float*, float** %8, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %135, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fsub float %134, %140
  store float %141, float* %21, align 4
  %142 = load float*, float** %8, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = load float*, float** %8, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fsub float %146, %151
  %153 = load float*, float** %9, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  store float %152, float* %156, align 4
  %157 = load float*, float** %8, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load float, float* %160, align 4
  %162 = load float*, float** %8, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fadd float %161, %166
  store float %167, float* %20, align 4
  %168 = load float*, float** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  %173 = load float, float* %172, align 4
  %174 = load float, float* %21, align 4
  %175 = fmul float %173, %174
  %176 = load float*, float** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %176, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float, float* %20, align 4
  %183 = fmul float %181, %182
  %184 = fsub float %175, %183
  %185 = load float*, float** %9, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %185, i64 %188
  store float %184, float* %189, align 4
  %190 = load float*, float** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %190, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float, float* %20, align 4
  %197 = fmul float %195, %196
  %198 = load float*, float** %10, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %198, i64 %201
  %203 = load float, float* %202, align 4
  %204 = load float, float* %21, align 4
  %205 = fmul float %203, %204
  %206 = fadd float %197, %205
  %207 = load float*, float** %9, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  store float %206, float* %210, align 4
  br label %211

211:                                              ; preds = %102
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 2
  store i32 %213, i32* %11, align 4
  br label %98

214:                                              ; preds = %98
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %14, align 4
  %218 = shl i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %85

222:                                              ; preds = %85
  %223 = load i32, i32* %6, align 4
  %224 = srem i32 %223, 2
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %283

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %83
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %6, align 4
  %232 = sub nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %233

233:                                              ; preds = %280, %228
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %283

237:                                              ; preds = %233
  %238 = load float*, float** %8, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = load float*, float** %8, align 8
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = fadd float %242, %247
  %249 = load float*, float** %9, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  store float %248, float* %252, align 4
  %253 = load float*, float** %8, align 8
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %253, i64 %256
  %258 = load float, float* %257, align 4
  %259 = load float*, float** %8, align 8
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %259, i64 %262
  %264 = load float, float* %263, align 4
  %265 = fadd float %258, %264
  %266 = fneg float %265
  %267 = load float*, float** %9, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %267, i64 %271
  store float %266, float* %272, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %6, align 4
  %277 = shl i32 %276, 1
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %15, align 4
  br label %280

280:                                              ; preds = %237
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %233

283:                                              ; preds = %79, %226, %233
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
