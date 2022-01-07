; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W4 = common dso_local global i32 0, align 4
@ROW_SHIFT = common dso_local global i32 0, align 4
@W2 = common dso_local global i32 0, align 4
@W6 = common dso_local global i32 0, align 4
@W1 = common dso_local global i32 0, align 4
@W3 = common dso_local global i32 0, align 4
@W5 = common dso_local global i32 0, align 4
@W7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @idct_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idct_row(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ldq(i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @ldq(i32* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %312

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @W4, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @sextw(i32 %29)
  %31 = mul nsw i32 %28, %30
  %32 = load i32, i32* @ROW_SHIFT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 1, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, -65536
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = or i64 %38, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %27
  %44 = load i32, i32* @ROW_SHIFT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = shl i32 %52, 32
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @stq(i32 %56, i32* %57)
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = call i32 @stq(i32 %59, i32* %61)
  store i32 1, i32* %2, align 4
  br label %312

63:                                               ; preds = %27
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @extwl(i32 %67, i32 4)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @sextw(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @W2, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @W6, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @W6, align 4
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @W2, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %71, %63
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @extwl(i32 %95, i32 0)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @sextw(i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @W4, align 4
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* @W4, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @W4, align 4
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @W4, align 4
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %99, %94
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @extwl(i32 %123, i32 4)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @sextw(i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* @W6, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @W2, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* @W2, align 4
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @W6, align 4
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %127, %122
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @extwl(i32 %151, i32 2)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @sextw(i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* @W1, align 4
  %159 = load i32, i32* %12, align 4
  %160 = mul nsw i32 %158, %159
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* @W3, align 4
  %162 = load i32, i32* %12, align 4
  %163 = mul nsw i32 %161, %162
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* @W5, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %164, %165
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* @W7, align 4
  %168 = load i32, i32* %12, align 4
  %169 = mul nsw i32 %167, %168
  store i32 %169, i32* %11, align 4
  br label %171

170:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %171

171:                                              ; preds = %170, %155
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @extwl(i32 %172, i32 6)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %171
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @sextw(i32 %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* @W3, align 4
  %180 = load i32, i32* %12, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @W7, align 4
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* @W1, align 4
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* @W5, align 4
  %195 = load i32, i32* %12, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %11, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %176, %171
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @extwl(i32 %200, i32 2)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @sextw(i32 %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* @W5, align 4
  %208 = load i32, i32* %12, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* @W1, align 4
  %213 = load i32, i32* %12, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %9, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* @W7, align 4
  %218 = load i32, i32* %12, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* @W3, align 4
  %223 = load i32, i32* %12, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %204, %199
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @extwl(i32 %228, i32 6)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %255

232:                                              ; preds = %227
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @sextw(i32 %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* @W7, align 4
  %236 = load i32, i32* %12, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* @W5, align 4
  %241 = load i32, i32* %12, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load i32, i32* %9, align 4
  %244 = sub nsw i32 %243, %242
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* @W3, align 4
  %246 = load i32, i32* %12, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* @W1, align 4
  %251 = load i32, i32* %12, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 %253, %252
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %232, %227
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* @ROW_SHIFT, align 4
  %260 = ashr i32 %258, %259
  %261 = load i32*, i32** %3, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* @ROW_SHIFT, align 4
  %267 = ashr i32 %265, %266
  %268 = load i32*, i32** %3, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* @ROW_SHIFT, align 4
  %274 = ashr i32 %272, %273
  %275 = load i32*, i32** %3, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %277, %278
  %280 = load i32, i32* @ROW_SHIFT, align 4
  %281 = ashr i32 %279, %280
  %282 = load i32*, i32** %3, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %11, align 4
  %286 = sub nsw i32 %284, %285
  %287 = load i32, i32* @ROW_SHIFT, align 4
  %288 = ashr i32 %286, %287
  %289 = load i32*, i32** %3, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 4
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %10, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* @ROW_SHIFT, align 4
  %295 = ashr i32 %293, %294
  %296 = load i32*, i32** %3, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 5
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* %9, align 4
  %300 = sub nsw i32 %298, %299
  %301 = load i32, i32* @ROW_SHIFT, align 4
  %302 = ashr i32 %300, %301
  %303 = load i32*, i32** %3, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 6
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %4, align 4
  %306 = load i32, i32* %8, align 4
  %307 = sub nsw i32 %305, %306
  %308 = load i32, i32* @ROW_SHIFT, align 4
  %309 = ashr i32 %307, %308
  %310 = load i32*, i32** %3, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 7
  store i32 %309, i32* %311, align 4
  store i32 2, i32* %2, align 4
  br label %312

312:                                              ; preds = %255, %43, %26
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @ldq(i32*) #1

declare dso_local i32 @sextw(i32) #1

declare dso_local i32 @stq(i32, i32*) #1

declare dso_local i32 @extwl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
