; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressTimestampImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressTimestampImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_BYTES = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@CHAR_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsCompressTimestampImp(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %327

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %229, %29
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %232

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @safeInt64Add(i32 %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %313

53:                                               ; preds = %41
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @safeInt64Add(i32 %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %313

63:                                               ; preds = %53
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* @LONG_BYTES, align 4
  %69 = load i32, i32* @BITS_PER_BYTE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = ashr i32 %67, %71
  %73 = load i32, i32* %20, align 4
  %74 = shl i32 %73, 1
  %75 = xor i32 %72, %74
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %17, align 4
  %77 = srem i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  %80 = load i32, i32* %21, align 4
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @LONG_BYTES, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @BUILDIN_CLZL(i32 %86)
  %88 = load i32, i32* @BITS_PER_BYTE, align 4
  %89 = sdiv i32 %87, %88
  %90 = sub nsw i32 %85, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %84, %83
  br label %226

92:                                               ; preds = %63
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %104

97:                                               ; preds = %92
  %98 = load i32, i32* @LONG_BYTES, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @BUILDIN_CLZL(i32 %99)
  %101 = load i32, i32* @BITS_PER_BYTE, align 4
  %102 = sdiv i32 %100, %101
  %103 = sub nsw i32 %98, %102
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %97, %96
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = shl i32 %106, 4
  %108 = or i32 %105, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @CHAR_BYTES, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @LONG_BYTES, align 4
  %115 = mul nsw i32 %113, %114
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %313

118:                                              ; preds = %104
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* @CHAR_BYTES, align 4
  %124 = call i32 (i8*, ...) @memcpy(i8* %122, i32* %12, i32 %123)
  %125 = load i32, i32* @CHAR_BYTES, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = call i64 (...) @is_bigendian()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %118
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @LONG_BYTES, align 4
  %137 = mul nsw i32 %135, %136
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %313

140:                                              ; preds = %130
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = bitcast i32* %15 to i8*
  %146 = load i32, i32* @LONG_BYTES, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (i8*, ...) @memcpy(i8* %144, i8* %152, i32 %153)
  br label %173

155:                                              ; preds = %118
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %156, %157
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @LONG_BYTES, align 4
  %162 = mul nsw i32 %160, %161
  %163 = icmp sge i32 %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %313

165:                                              ; preds = %155
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = bitcast i32* %15 to i8*
  %171 = load i32, i32* %13, align 4
  %172 = call i32 (i8*, ...) @memcpy(i8* %169, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %140
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %8, align 4
  %177 = call i64 (...) @is_bigendian()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %173
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @LONG_BYTES, align 4
  %186 = mul nsw i32 %184, %185
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %313

189:                                              ; preds = %179
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = bitcast i32* %16 to i8*
  %195 = load i32, i32* @LONG_BYTES, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i32, i32* %14, align 4
  %203 = call i32 (i8*, ...) @memcpy(i8* %193, i8* %201, i32 %202)
  br label %222

204:                                              ; preds = %173
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %205, %206
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @LONG_BYTES, align 4
  %211 = mul nsw i32 %209, %210
  %212 = icmp sge i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %313

214:                                              ; preds = %204
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = bitcast i32* %16 to i8*
  %220 = load i32, i32* %14, align 4
  %221 = call i32 (i8*, ...) @memcpy(i8* %218, i8* %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %189
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %222, %91
  %227 = load i32, i32* %18, align 4
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %19, align 4
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %17, align 4
  br label %37

232:                                              ; preds = %37
  %233 = load i32, i32* %6, align 4
  %234 = srem i32 %233, 2
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %309

236:                                              ; preds = %232
  store i32 0, i32* %14, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %14, align 4
  %239 = shl i32 %238, 4
  %240 = or i32 %237, %239
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @CHAR_BYTES, align 4
  %243 = add nsw i32 %241, %242
  %244 = sub nsw i32 %243, 1
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @LONG_BYTES, align 4
  %247 = mul nsw i32 %245, %246
  %248 = icmp sge i32 %244, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %236
  br label %313

250:                                              ; preds = %236
  %251 = load i8*, i8** %7, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* @CHAR_BYTES, align 4
  %256 = call i32 (i8*, ...) @memcpy(i8* %254, i32* %12, i32 %255)
  %257 = load i32, i32* @CHAR_BYTES, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = call i64 (...) @is_bigendian()
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %287

262:                                              ; preds = %250
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %263, %264
  %266 = sub nsw i32 %265, 1
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @LONG_BYTES, align 4
  %269 = mul nsw i32 %267, %268
  %270 = icmp sge i32 %266, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %262
  br label %313

272:                                              ; preds = %262
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = bitcast i32* %15 to i8*
  %278 = load i32, i32* @LONG_BYTES, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = sub i64 0, %282
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i32, i32* %13, align 4
  %286 = call i32 (i8*, ...) @memcpy(i8* %276, i8* %284, i32 %285)
  br label %305

287:                                              ; preds = %250
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %288, %289
  %291 = sub nsw i32 %290, 1
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @LONG_BYTES, align 4
  %294 = mul nsw i32 %292, %293
  %295 = icmp sge i32 %291, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %287
  br label %313

297:                                              ; preds = %287
  %298 = load i8*, i8** %7, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = bitcast i32* %15 to i8*
  %303 = load i32, i32* %13, align 4
  %304 = call i32 (i8*, ...) @memcpy(i8* %301, i8* %302, i32 %303)
  br label %305

305:                                              ; preds = %297, %272
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %305, %232
  %310 = load i8*, i8** %7, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  store i8 1, i8* %311, align 1
  %312 = load i32, i32* %8, align 4
  store i32 %312, i32* %4, align 4
  br label %327

313:                                              ; preds = %296, %271, %249, %213, %188, %164, %139, %117, %62, %52
  %314 = load i8*, i8** %7, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  store i8 0, i8* %315, align 1
  %316 = load i8*, i8** %7, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  %318 = load i8*, i8** %5, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* @LONG_BYTES, align 4
  %321 = mul nsw i32 %319, %320
  %322 = call i32 (i8*, ...) @memcpy(i8* %317, i8* %318, i32 %321)
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* @LONG_BYTES, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %313, %309, %28
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @safeInt64Add(i32, i32) #1

declare dso_local i32 @BUILDIN_CLZL(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i64 @is_bigendian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
