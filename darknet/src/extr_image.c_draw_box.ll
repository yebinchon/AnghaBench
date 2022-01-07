; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_draw_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_draw_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_box(i64 %0, float* %1, i32 %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8) #0 {
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_3__* %10 to { i64, float* }*
  %20 = getelementptr inbounds { i64, float* }, { i64, float* }* %19, i32 0, i32 0
  store i64 %0, i64* %20, align 8
  %21 = getelementptr inbounds { i64, float* }, { i64, float* }* %19, i32 0, i32 1
  store float* %1, float** %21, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  store float %8, float* %17, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %9
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %14, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %188, %73
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %191

79:                                               ; preds = %75
  %80 = load float, float* %15, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %12, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %84, %86
  %88 = add nsw i32 %83, %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 0, %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %91, %93
  %95 = add nsw i32 %88, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %82, i64 %96
  store float %80, float* %97, align 4
  %98 = load float, float* %15, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %100 = load float*, float** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %14, align 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %101, %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 0, %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = add nsw i32 %106, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %100, i64 %114
  store float %98, float* %115, align 4
  %116 = load float, float* %16, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %12, align 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %120, %122
  %124 = add nsw i32 %119, %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 1, %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %127, %129
  %131 = add nsw i32 %124, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %118, i64 %132
  store float %116, float* %133, align 4
  %134 = load float, float* %16, align 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %136 = load float*, float** %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %138, %140
  %142 = add nsw i32 %137, %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 1, %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %145, %147
  %149 = add nsw i32 %142, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %136, i64 %150
  store float %134, float* %151, align 4
  %152 = load float, float* %17, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %12, align 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %156, %158
  %160 = add nsw i32 %155, %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 2, %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %163, %165
  %167 = add nsw i32 %160, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %154, i64 %168
  store float %152, float* %169, align 4
  %170 = load float, float* %17, align 4
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %172 = load float*, float** %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %14, align 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %174, %176
  %178 = add nsw i32 %173, %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 2, %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %181, %183
  %185 = add nsw i32 %178, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %172, i64 %186
  store float %170, float* %187, align 4
  br label %188

188:                                              ; preds = %79
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %75

191:                                              ; preds = %75
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %306, %191
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %14, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %309

197:                                              ; preds = %193
  %198 = load float, float* %15, align 4
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %200 = load float*, float** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %18, align 4
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = mul nsw i32 %202, %204
  %206 = add nsw i32 %201, %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 0, %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %209, %211
  %213 = add nsw i32 %206, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %200, i64 %214
  store float %198, float* %215, align 4
  %216 = load float, float* %15, align 4
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %218 = load float*, float** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %18, align 4
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %220, %222
  %224 = add nsw i32 %219, %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 0, %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %227, %229
  %231 = add nsw i32 %224, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %218, i64 %232
  store float %216, float* %233, align 4
  %234 = load float, float* %16, align 4
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %236 = load float*, float** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %18, align 4
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 %238, %240
  %242 = add nsw i32 %237, %241
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 1, %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %245, %247
  %249 = add nsw i32 %242, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %236, i64 %250
  store float %234, float* %251, align 4
  %252 = load float, float* %16, align 4
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %254 = load float*, float** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %18, align 4
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = mul nsw i32 %256, %258
  %260 = add nsw i32 %255, %259
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 1, %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %263, %265
  %267 = add nsw i32 %260, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %254, i64 %268
  store float %252, float* %269, align 4
  %270 = load float, float* %17, align 4
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %18, align 4
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = mul nsw i32 %274, %276
  %278 = add nsw i32 %273, %277
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 2, %280
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %281, %283
  %285 = add nsw i32 %278, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %272, i64 %286
  store float %270, float* %287, align 4
  %288 = load float, float* %17, align 4
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %290 = load float*, float** %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %18, align 4
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %292, %294
  %296 = add nsw i32 %291, %295
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = mul nsw i32 2, %298
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 %299, %301
  %303 = add nsw i32 %296, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %290, i64 %304
  store float %288, float* %305, align 4
  br label %306

306:                                              ; preds = %197
  %307 = load i32, i32* %18, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %18, align 4
  br label %193

309:                                              ; preds = %193
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
