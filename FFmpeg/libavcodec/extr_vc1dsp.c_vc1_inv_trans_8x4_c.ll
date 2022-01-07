; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_8x4_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_8x4_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @vc1_inv_trans_8x4_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_inv_trans_8x4_c(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %16, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %17, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %200, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %203

23:                                               ; preds = %20
  %24 = load i32*, i32** %16, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %16, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = mul nsw i32 12, %30
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = mul nsw i32 12, %39
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 16, %44
  %46 = load i32*, i32** %16, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 6, %48
  %50 = add nsw i32 %45, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 6, %53
  %55 = load i32*, i32** %16, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 16, %57
  %59 = sub nsw i32 %54, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 16, %74
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 15, %78
  %80 = add nsw i32 %75, %79
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 9, %83
  %85 = add nsw i32 %80, %84
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 4, %88
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 15, %93
  %95 = load i32*, i32** %16, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 4, %97
  %99 = sub nsw i32 %94, %98
  %100 = load i32*, i32** %16, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 16, %102
  %104 = sub nsw i32 %99, %103
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 9, %107
  %109 = sub nsw i32 %104, %108
  store i32 %109, i32* %9, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 9, %112
  %114 = load i32*, i32** %16, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 16, %116
  %118 = sub nsw i32 %113, %117
  %119 = load i32*, i32** %16, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 4, %121
  %123 = add nsw i32 %118, %122
  %124 = load i32*, i32** %16, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 15, %126
  %128 = add nsw i32 %123, %127
  store i32 %128, i32* %10, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 4, %131
  %133 = load i32*, i32** %16, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 9, %135
  %137 = sub nsw i32 %132, %136
  %138 = load i32*, i32** %16, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 15, %140
  %142 = add nsw i32 %137, %141
  %143 = load i32*, i32** %16, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 16, %145
  %147 = sub nsw i32 %142, %146
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %148, %149
  %151 = ashr i32 %150, 3
  %152 = load i32*, i32** %17, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %154, %155
  %157 = ashr i32 %156, 3
  %158 = load i32*, i32** %17, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %160, %161
  %163 = ashr i32 %162, 3
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %166, %167
  %169 = ashr i32 %168, 3
  %170 = load i32*, i32** %17, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %11, align 4
  %174 = sub nsw i32 %172, %173
  %175 = ashr i32 %174, 3
  %176 = load i32*, i32** %17, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  %181 = ashr i32 %180, 3
  %182 = load i32*, i32** %17, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 5
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %184, %185
  %187 = ashr i32 %186, 3
  %188 = load i32*, i32** %17, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %190, %191
  %193 = ashr i32 %192, 3
  %194 = load i32*, i32** %17, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 7
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %16, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 8
  store i32* %197, i32** %16, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32* %199, i32** %17, align 8
  br label %200

200:                                              ; preds = %23
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %20

203:                                              ; preds = %20
  %204 = load i32*, i32** %6, align 8
  store i32* %204, i32** %16, align 8
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %309, %203
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 8
  br i1 %207, label %208, label %312

208:                                              ; preds = %205
  %209 = load i32*, i32** %16, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %16, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 16
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %211, %214
  %216 = mul nsw i32 17, %215
  %217 = add nsw i32 %216, 64
  store i32 %217, i32* %8, align 4
  %218 = load i32*, i32** %16, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %16, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 16
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %220, %223
  %225 = mul nsw i32 17, %224
  %226 = add nsw i32 %225, 64
  store i32 %226, i32* %9, align 4
  %227 = load i32*, i32** %16, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 22, %229
  %231 = load i32*, i32** %16, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 24
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 10, %233
  %235 = add nsw i32 %230, %234
  store i32 %235, i32* %10, align 4
  %236 = load i32*, i32** %16, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 24
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 22, %238
  %240 = load i32*, i32** %16, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 8
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 10, %242
  %244 = sub nsw i32 %239, %243
  store i32 %244, i32* %11, align 4
  %245 = load i32*, i32** %4, align 8
  %246 = load i64, i64* %5, align 8
  %247 = mul i64 0, %246
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %250, %251
  %253 = ashr i32 %252, 7
  %254 = add nsw i32 %249, %253
  %255 = call i32 @av_clip_uint8(i32 %254)
  %256 = load i32*, i32** %4, align 8
  %257 = load i64, i64* %5, align 8
  %258 = mul i64 0, %257
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %255, i32* %259, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = load i64, i64* %5, align 8
  %262 = mul i64 1, %261
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %11, align 4
  %267 = sub nsw i32 %265, %266
  %268 = ashr i32 %267, 7
  %269 = add nsw i32 %264, %268
  %270 = call i32 @av_clip_uint8(i32 %269)
  %271 = load i32*, i32** %4, align 8
  %272 = load i64, i64* %5, align 8
  %273 = mul i64 1, %272
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %270, i32* %274, align 4
  %275 = load i32*, i32** %4, align 8
  %276 = load i64, i64* %5, align 8
  %277 = mul i64 2, %276
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %280, %281
  %283 = ashr i32 %282, 7
  %284 = add nsw i32 %279, %283
  %285 = call i32 @av_clip_uint8(i32 %284)
  %286 = load i32*, i32** %4, align 8
  %287 = load i64, i64* %5, align 8
  %288 = mul i64 2, %287
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %285, i32* %289, align 4
  %290 = load i32*, i32** %4, align 8
  %291 = load i64, i64* %5, align 8
  %292 = mul i64 3, %291
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %10, align 4
  %297 = sub nsw i32 %295, %296
  %298 = ashr i32 %297, 7
  %299 = add nsw i32 %294, %298
  %300 = call i32 @av_clip_uint8(i32 %299)
  %301 = load i32*, i32** %4, align 8
  %302 = load i64, i64* %5, align 8
  %303 = mul i64 3, %302
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %300, i32* %304, align 4
  %305 = load i32*, i32** %16, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %16, align 8
  %307 = load i32*, i32** %4, align 8
  %308 = getelementptr inbounds i32, i32* %307, i32 1
  store i32* %308, i32** %4, align 8
  br label %309

309:                                              ; preds = %208
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %7, align 4
  br label %205

312:                                              ; preds = %205
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
