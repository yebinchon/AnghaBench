; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_col.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COL_SHIFT = common dso_local global i32 0, align 4
@W4 = common dso_local global i32 0, align 4
@W2 = common dso_local global i32 0, align 4
@W6 = common dso_local global i32 0, align 4
@W1 = common dso_local global i32 0, align 4
@W3 = common dso_local global i32 0, align 4
@W5 = common dso_local global i32 0, align 4
@W7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32, i32* @COL_SHIFT, align 4
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = load i32, i32* @W4, align 4
  %15 = sdiv i32 %13, %14
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @W4, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @W4, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @W4, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @W4, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %1
  %45 = load i32, i32* @W2, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @W6, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @W6, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @W2, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 16
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %44, %1
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 32
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  %79 = load i32, i32* @W4, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 32
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @W4, align 4
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 32
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @W4, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 32
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @W4, align 4
  %101 = load i32*, i32** %2, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 32
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %78, %73
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 48
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %107
  %113 = load i32, i32* @W6, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 48
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @W2, align 4
  %121 = load i32*, i32** %2, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 48
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* @W2, align 4
  %128 = load i32*, i32** %2, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 48
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @W6, align 4
  %135 = load i32*, i32** %2, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 48
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %112, %107
  %142 = load i32*, i32** %2, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %141
  %147 = load i32, i32* @W1, align 4
  %148 = load i32*, i32** %2, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @W3, align 4
  %153 = load i32*, i32** %2, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 8
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @W5, align 4
  %158 = load i32*, i32** %2, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* @W7, align 4
  %163 = load i32*, i32** %2, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 8
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %162, %165
  store i32 %166, i32* %10, align 4
  br label %168

167:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %168

168:                                              ; preds = %167, %146
  %169 = load i32*, i32** %2, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 24
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %202

173:                                              ; preds = %168
  %174 = load i32, i32* @W3, align 4
  %175 = load i32*, i32** %2, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 24
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %174, %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* @W7, align 4
  %182 = load i32*, i32** %2, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 24
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %181, %184
  %186 = load i32, i32* %8, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* @W1, align 4
  %189 = load i32*, i32** %2, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 24
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* @W5, align 4
  %196 = load i32*, i32** %2, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 24
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %195, %198
  %200 = load i32, i32* %10, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %173, %168
  %203 = load i32*, i32** %2, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 40
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %236

207:                                              ; preds = %202
  %208 = load i32, i32* @W5, align 4
  %209 = load i32*, i32** %2, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 40
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* @W1, align 4
  %216 = load i32*, i32** %2, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 40
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %215, %218
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* @W7, align 4
  %223 = load i32*, i32** %2, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 40
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* @W3, align 4
  %230 = load i32*, i32** %2, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 40
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %207, %202
  %237 = load i32*, i32** %2, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 56
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %270

241:                                              ; preds = %236
  %242 = load i32, i32* @W7, align 4
  %243 = load i32*, i32** %2, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 56
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %242, %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* @W5, align 4
  %250 = load i32*, i32** %2, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 56
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %249, %252
  %254 = load i32, i32* %8, align 4
  %255 = sub nsw i32 %254, %253
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* @W3, align 4
  %257 = load i32*, i32** %2, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 56
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %256, %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* @W1, align 4
  %264 = load i32*, i32** %2, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 56
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %263, %266
  %268 = load i32, i32* %10, align 4
  %269 = sub nsw i32 %268, %267
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %241, %236
  %271 = load i32, i32* %3, align 4
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* @COL_SHIFT, align 4
  %275 = ashr i32 %273, %274
  %276 = load i32*, i32** %2, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* %7, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load i32, i32* @COL_SHIFT, align 4
  %282 = ashr i32 %280, %281
  %283 = load i32*, i32** %2, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 56
  store i32 %282, i32* %284, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32, i32* @COL_SHIFT, align 4
  %289 = ashr i32 %287, %288
  %290 = load i32*, i32** %2, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 8
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %8, align 4
  %294 = sub nsw i32 %292, %293
  %295 = load i32, i32* @COL_SHIFT, align 4
  %296 = ashr i32 %294, %295
  %297 = load i32*, i32** %2, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 48
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* @COL_SHIFT, align 4
  %303 = ashr i32 %301, %302
  %304 = load i32*, i32** %2, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 16
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %5, align 4
  %307 = load i32, i32* %9, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load i32, i32* @COL_SHIFT, align 4
  %310 = ashr i32 %308, %309
  %311 = load i32*, i32** %2, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 40
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* @COL_SHIFT, align 4
  %317 = ashr i32 %315, %316
  %318 = load i32*, i32** %2, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 24
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* %10, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load i32, i32* @COL_SHIFT, align 4
  %324 = ashr i32 %322, %323
  %325 = load i32*, i32** %2, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 32
  store i32 %324, i32* %326, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
