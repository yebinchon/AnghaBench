; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradf2.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*, float*, float*)* @dradf2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dradf2(i32 %0, i32 %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %17, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %73, %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load float*, float** %8, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %8, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fadd float %36, %41
  %43 = load float*, float** %9, align 8
  %44 = load i32, i32* %16, align 4
  %45 = shl i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %43, i64 %46
  store float %42, float* %47, align 4
  %48 = load float*, float** %8, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %8, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fsub float %52, %57
  %59 = load float*, float** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = shl i32 %60, 1
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %59, i64 %65
  store float %58, float* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %31
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %27

76:                                               ; preds = %27
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %277

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %233

84:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %224, %84
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %227

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %16, align 4
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 1
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %21, align 4
  store i32 2, i32* %11, align 4
  br label %101

101:                                              ; preds = %214, %90
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %217

105:                                              ; preds = %101
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = sub nsw i32 %108, 2
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %21, align 4
  %114 = load float*, float** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %114, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %8, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %120, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fmul float %119, %125
  %127 = load float*, float** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %127, i64 %130
  %132 = load float, float* %131, align 4
  %133 = load float*, float** %8, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fmul float %132, %137
  %139 = fadd float %126, %138
  store float %139, float* %14, align 4
  %140 = load float*, float** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %140, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %8, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %145, %150
  %152 = load float*, float** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %152, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %8, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %158, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fmul float %157, %163
  %165 = fsub float %151, %164
  store float %165, float* %13, align 4
  %166 = load float*, float** %8, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  %170 = load float, float* %169, align 4
  %171 = load float, float* %13, align 4
  %172 = fadd float %170, %171
  %173 = load float*, float** %9, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  store float %172, float* %176, align 4
  %177 = load float, float* %13, align 4
  %178 = load float*, float** %8, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fsub float %177, %182
  %184 = load float*, float** %9, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  store float %183, float* %187, align 4
  %188 = load float*, float** %8, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %188, i64 %191
  %193 = load float, float* %192, align 4
  %194 = load float, float* %14, align 4
  %195 = fadd float %193, %194
  %196 = load float*, float** %9, align 8
  %197 = load i32, i32* %21, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %196, i64 %199
  store float %195, float* %200, align 4
  %201 = load float*, float** %8, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %201, i64 %204
  %206 = load float, float* %205, align 4
  %207 = load float, float* %14, align 4
  %208 = fsub float %206, %207
  %209 = load float*, float** %9, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %209, i64 %212
  store float %208, float* %213, align 4
  br label %214

214:                                              ; preds = %105
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 2
  store i32 %216, i32* %11, align 4
  br label %101

217:                                              ; preds = %101
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %217
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %86

227:                                              ; preds = %86
  %228 = load i32, i32* %6, align 4
  %229 = srem i32 %228, 2
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %277

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %232, %83
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %16, align 4
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %239

239:                                              ; preds = %274, %233
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %277

243:                                              ; preds = %239
  %244 = load float*, float** %8, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = fneg float %248
  %250 = load float*, float** %9, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  store float %249, float* %253, align 4
  %254 = load float*, float** %8, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %254, i64 %256
  %258 = load float, float* %257, align 4
  %259 = load float*, float** %9, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %259, i64 %262
  store float %258, float* %263, align 4
  %264 = load i32, i32* %6, align 4
  %265 = shl i32 %264, 1
  %266 = load i32, i32* %16, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %17, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %18, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %18, align 4
  br label %274

274:                                              ; preds = %243
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %239

277:                                              ; preds = %79, %231, %239
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
