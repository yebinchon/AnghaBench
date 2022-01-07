; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_lsp2lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_lsp2lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC_ORDER = common dso_local global i32 0, align 4
@cos_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @lsp2lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsp2lpc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32, i32* @LPC_ORDER, align 4
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %3, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %20 = load i32, i32* @LPC_ORDER, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %76, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @LPC_ORDER, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 7
  %36 = and i32 %35, 511
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** @cos_tab, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 65536
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** @cos_tab, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @cos_tab, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %54, %59
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 8
  %63 = add nsw i32 %62, 128
  %64 = shl i32 %63, 1
  %65 = mul nsw i32 %60, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @av_sat_dadd32(i32 32768, i32 %68)
  %70 = ashr i32 %69, 16
  %71 = sub nsw i32 0, %70
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %29
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %25

79:                                               ; preds = %25
  %80 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 268435456, i32* %80, align 16
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = mul nsw i32 %87, 16384
  %89 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %2, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = add nsw i32 %96, 536870912
  %98 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 268435456, i32* %99, align 16
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = mul nsw i32 %106, 16384
  %108 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %2, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = add nsw i32 %115, 536870912
  %117 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %116, i32* %117, align 8
  store i32 2, i32* %6, align 4
  br label %118

118:                                              ; preds = %270, %79
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @LPC_ORDER, align 4
  %121 = sdiv i32 %120, 2
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %273

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %19, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %19, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* %6, align 4
  %135 = mul nsw i32 2, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @MULL2(i32 %132, i32 %138)
  %140 = add nsw i32 %128, %139
  %141 = call i32 @av_clipl_int32(i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %19, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %24, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %24, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %2, align 8
  %156 = load i32, i32* %6, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @MULL2(i32 %154, i32 %161)
  %163 = add nsw i32 %150, %162
  %164 = call i32 @av_clipl_int32(i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %24, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %231, %123
  %171 = load i32, i32* %7, align 4
  %172 = icmp sge i32 %171, 2
  br i1 %172, label %173, label %234

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %19, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %2, align 8
  %180 = load i32, i32* %6, align 4
  %181 = mul nsw i32 2, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @MULL2(i32 %178, i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %19, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 1
  %191 = add nsw i32 %185, %190
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %19, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 1
  %198 = add nsw i32 %191, %197
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %19, i64 %200
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* %7, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %24, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* %6, align 4
  %209 = mul nsw i32 2, %208
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @MULL2(i32 %206, i32 %213)
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %24, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 1
  %220 = add nsw i32 %214, %219
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %24, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 1
  %227 = add nsw i32 %220, %226
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %24, i64 %229
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %173
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %7, align 4
  br label %170

234:                                              ; preds = %170
  %235 = getelementptr inbounds i32, i32* %19, i64 0
  %236 = load i32, i32* %235, align 16
  %237 = ashr i32 %236, 1
  store i32 %237, i32* %235, align 16
  %238 = getelementptr inbounds i32, i32* %24, i64 0
  %239 = load i32, i32* %238, align 16
  %240 = ashr i32 %239, 1
  store i32 %240, i32* %238, align 16
  %241 = load i32*, i32** %2, align 8
  %242 = load i32, i32* %6, align 4
  %243 = mul nsw i32 2, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 65536
  %248 = load i32, i32* %6, align 4
  %249 = ashr i32 %247, %248
  %250 = getelementptr inbounds i32, i32* %19, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %249, %251
  %253 = ashr i32 %252, 1
  %254 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %253, i32* %254, align 4
  %255 = load i32*, i32** %2, align 8
  %256 = load i32, i32* %6, align 4
  %257 = mul nsw i32 2, %256
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %261, 65536
  %263 = load i32, i32* %6, align 4
  %264 = ashr i32 %262, %263
  %265 = getelementptr inbounds i32, i32* %24, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %264, %266
  %268 = ashr i32 %267, 1
  %269 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %268, i32* %269, align 4
  br label %270

270:                                              ; preds = %234
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %6, align 4
  br label %118

273:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %274

274:                                              ; preds = %325, %273
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @LPC_ORDER, align 4
  %277 = sdiv i32 %276, 2
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %328

279:                                              ; preds = %274
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %19, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %19, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %284, %288
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %24, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %24, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %294, %298
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %300, %301
  %303 = mul nsw i32 %302, 8
  %304 = add nsw i32 %303, 32768
  %305 = call i32 @av_clipl_int32(i32 %304)
  %306 = ashr i32 %305, 16
  %307 = load i32*, i32** %2, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %306, i32* %310, align 4
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* %13, align 4
  %313 = sub nsw i32 %311, %312
  %314 = mul nsw i32 %313, 8
  %315 = add nsw i32 %314, 32768
  %316 = call i32 @av_clipl_int32(i32 %315)
  %317 = ashr i32 %316, 16
  %318 = load i32*, i32** %2, align 8
  %319 = load i32, i32* @LPC_ORDER, align 4
  %320 = load i32, i32* %6, align 4
  %321 = sub nsw i32 %319, %320
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %318, i64 %323
  store i32 %317, i32* %324, align 4
  br label %325

325:                                              ; preds = %279
  %326 = load i32, i32* %6, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %6, align 4
  br label %274

328:                                              ; preds = %274
  %329 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %329)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_sat_dadd32(i32, i32) #2

declare dso_local i32 @av_clipl_int32(i32) #2

declare dso_local i32 @MULL2(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
