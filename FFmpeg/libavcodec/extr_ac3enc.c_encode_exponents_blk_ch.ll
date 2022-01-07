; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_encode_exponents_blk_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_encode_exponents_blk_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exponent_group_tab = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @encode_exponents_blk_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_exponents_blk_ch(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32***, i32**** @exponent_group_tab, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32**, i32*** %15, i64 %17
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 3
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %147 [
    i32 129, label %31
    i32 128, label %73
  ]

31:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 1, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %69, %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %52, %38
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %34

72:                                               ; preds = %34
  br label %147

73:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 1, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %143, %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %146

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94, %80
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %110, %101
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %126, %117
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %76

146:                                              ; preds = %76
  br label %147

147:                                              ; preds = %4, %146, %72
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 15
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 15, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %150, %147
  store i32 1, i32* %10, align 4
  br label %159

159:                                              ; preds = %181, %158
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %159
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 2
  %176 = call i32 @FFMIN(i32 %168, i32 %175)
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %163
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %159

184:                                              ; preds = %159
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %191, %184
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %10, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 2
  %204 = call i32 @FFMIN(i32 %196, i32 %203)
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %187

209:                                              ; preds = %187
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, -2
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 -1
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %212, %209
  %220 = load i32, i32* %7, align 4
  switch i32 %220, label %296 [
    i32 129, label %221
    i32 128, label %254
  ]

221:                                              ; preds = %219
  %222 = load i32, i32* %9, align 4
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %9, align 4
  %224 = mul nsw i32 %223, 2
  %225 = load i32, i32* %8, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %250, %221
  %228 = load i32, i32* %10, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %253

230:                                              ; preds = %227
  %231 = load i32*, i32** %5, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %11, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %238, i32* %243, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %11, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  br label %250

250:                                              ; preds = %230
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %10, align 4
  br label %227

253:                                              ; preds = %227
  br label %296

254:                                              ; preds = %219
  %255 = load i32, i32* %9, align 4
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %9, align 4
  %257 = mul nsw i32 %256, 4
  %258 = load i32, i32* %8, align 4
  %259 = sub nsw i32 %257, %258
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %292, %254
  %261 = load i32, i32* %10, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %295

263:                                              ; preds = %260
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %8, align 4
  %267 = sub nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 %272, 3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  store i32 %270, i32* %275, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sub nsw i32 %277, 2
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %270, i32* %280, align 4
  %281 = load i32*, i32** %5, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %270, i32* %285, align 4
  %286 = load i32*, i32** %5, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %270, i32* %289, align 4
  %290 = load i32, i32* %11, align 4
  %291 = sub nsw i32 %290, 4
  store i32 %291, i32* %11, align 4
  br label %292

292:                                              ; preds = %263
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %10, align 4
  br label %260

295:                                              ; preds = %260
  br label %296

296:                                              ; preds = %219, %295, %253
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
