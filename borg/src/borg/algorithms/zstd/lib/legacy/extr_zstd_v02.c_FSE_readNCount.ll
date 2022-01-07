; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_FSE_readNCount.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_FSE_readNCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@FSE_TABLELOG_ABSOLUTE_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@maxSymbolValue_tooSmall = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16*, i32*, i32*, i8*, i64)* @FSE_readNCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_readNCount(i16* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  store i16* %0, i16** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %12, align 8
  store i32* %30, i32** %14, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @srcSize_wrong, align 4
  %35 = call i64 @ERROR(i32 %34)
  store i64 %35, i64* %6, align 8
  br label %317

36:                                               ; preds = %5
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @MEM_readLE32(i32* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = and i32 %39, 15
  %41 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @FSE_TABLELOG_ABSOLUTE_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @tableLog_tooLarge, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %6, align 8
  br label %317

49:                                               ; preds = %36
  %50 = load i32, i32* %18, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %18, align 4
  store i32 4, i32* %19, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %277, %49
  %62 = load i32, i32* %16, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %20, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ule i32 %65, %67
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br i1 %70, label %71, label %283

71:                                               ; preds = %69
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %167

74:                                               ; preds = %71
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %22, align 4
  br label %76

76:                                               ; preds = %99, %74
  %77 = load i32, i32* %18, align 4
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i32, i32* %22, align 4
  %82 = add i32 %81, 24
  store i32 %82, i32* %22, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -5
  %86 = icmp ult i32* %83, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32* %89, i32** %14, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @MEM_readLE32(i32* %90)
  %92 = load i32, i32* %19, align 4
  %93 = ashr i32 %91, %92
  store i32 %93, i32* %18, align 4
  br label %99

94:                                               ; preds = %80
  %95 = load i32, i32* %18, align 4
  %96 = ashr i32 %95, 16
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 16
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %94, %87
  br label %76

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %105, %100
  %102 = load i32, i32* %18, align 4
  %103 = and i32 %102, 3
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %22, align 4
  %107 = add i32 %106, 3
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %18, align 4
  %109 = ashr i32 %108, 2
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %19, align 4
  br label %101

112:                                              ; preds = %101
  %113 = load i32, i32* %18, align 4
  %114 = and i32 %113, 3
  %115 = load i32, i32* %22, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ugt i32 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load i32, i32* @maxSymbolValue_tooSmall, align 4
  %125 = call i64 @ERROR(i32 %124)
  store i64 %125, i64* %6, align 8
  br label %317

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %131, %126
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %22, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i16*, i16** %7, align 8
  %133 = load i32, i32* %20, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %20, align 4
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds i16, i16* %132, i64 %135
  store i16 0, i16* %136, align 2
  br label %127

137:                                              ; preds = %127
  %138 = load i32*, i32** %14, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 -7
  %141 = icmp ule i32* %138, %140
  br i1 %141, label %151, label %142

142:                                              ; preds = %137
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %19, align 4
  %145 = ashr i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32*, i32** %13, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 -4
  %150 = icmp ule i32* %147, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %142, %137
  %152 = load i32, i32* %19, align 4
  %153 = ashr i32 %152, 3
  %154 = load i32*, i32** %14, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %14, align 8
  %157 = load i32, i32* %19, align 4
  %158 = and i32 %157, 7
  store i32 %158, i32* %19, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @MEM_readLE32(i32* %159)
  %161 = load i32, i32* %19, align 4
  %162 = ashr i32 %160, %161
  store i32 %162, i32* %18, align 4
  br label %166

163:                                              ; preds = %142
  %164 = load i32, i32* %18, align 4
  %165 = ashr i32 %164, 2
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %163, %151
  br label %167

167:                                              ; preds = %166, %71
  %168 = load i32, i32* %17, align 4
  %169 = mul nsw i32 2, %168
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %16, align 4
  %172 = sub nsw i32 %170, %171
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %23, align 2
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sub nsw i32 %175, 1
  %177 = and i32 %174, %176
  %178 = load i16, i16* %23, align 2
  %179 = sext i16 %178 to i32
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %167
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sub nsw i32 %183, 1
  %185 = and i32 %182, %184
  %186 = trunc i32 %185 to i16
  store i16 %186, i16* %24, align 2
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %19, align 4
  br label %213

191:                                              ; preds = %167
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %17, align 4
  %194 = mul nsw i32 2, %193
  %195 = sub nsw i32 %194, 1
  %196 = and i32 %192, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, i16* %24, align 2
  %198 = load i16, i16* %24, align 2
  %199 = sext i16 %198 to i32
  %200 = load i32, i32* %17, align 4
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %191
  %203 = load i16, i16* %23, align 2
  %204 = sext i16 %203 to i32
  %205 = load i16, i16* %24, align 2
  %206 = sext i16 %205 to i32
  %207 = sub nsw i32 %206, %204
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %24, align 2
  br label %209

209:                                              ; preds = %202, %191
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %209, %181
  %214 = load i16, i16* %24, align 2
  %215 = add i16 %214, -1
  store i16 %215, i16* %24, align 2
  %216 = load i16, i16* %24, align 2
  %217 = call i64 @FSE_abs(i16 signext %216)
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %16, align 4
  %222 = load i16, i16* %24, align 2
  %223 = load i16*, i16** %7, align 8
  %224 = load i32, i32* %20, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %20, align 4
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i16, i16* %223, i64 %226
  store i16 %222, i16* %227, align 2
  %228 = load i16, i16* %24, align 2
  %229 = icmp ne i16 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %236, %213
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %17, align 4
  %240 = ashr i32 %239, 1
  store i32 %240, i32* %17, align 4
  br label %232

241:                                              ; preds = %232
  %242 = load i32*, i32** %14, align 8
  %243 = load i32*, i32** %13, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 -7
  %245 = icmp ule i32* %242, %244
  br i1 %245, label %255, label %246

246:                                              ; preds = %241
  %247 = load i32*, i32** %14, align 8
  %248 = load i32, i32* %19, align 4
  %249 = ashr i32 %248, 3
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32*, i32** %13, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 -4
  %254 = icmp ule i32* %251, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %246, %241
  %256 = load i32, i32* %19, align 4
  %257 = ashr i32 %256, 3
  %258 = load i32*, i32** %14, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %14, align 8
  %261 = load i32, i32* %19, align 4
  %262 = and i32 %261, 7
  store i32 %262, i32* %19, align 4
  br label %277

263:                                              ; preds = %246
  %264 = load i32*, i32** %13, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 -4
  %266 = load i32*, i32** %14, align 8
  %267 = ptrtoint i32* %265 to i64
  %268 = ptrtoint i32* %266 to i64
  %269 = sub i64 %267, %268
  %270 = sdiv exact i64 %269, 4
  %271 = mul nsw i64 8, %270
  %272 = trunc i64 %271 to i32
  %273 = load i32, i32* %19, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %19, align 4
  %275 = load i32*, i32** %13, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 -4
  store i32* %276, i32** %14, align 8
  br label %277

277:                                              ; preds = %263, %255
  %278 = load i32*, i32** %14, align 8
  %279 = call i32 @MEM_readLE32(i32* %278)
  %280 = load i32, i32* %19, align 4
  %281 = and i32 %280, 31
  %282 = ashr i32 %279, %281
  store i32 %282, i32* %18, align 4
  br label %61

283:                                              ; preds = %69
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 1
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* @GENERIC, align 4
  %288 = call i64 @ERROR(i32 %287)
  store i64 %288, i64* %6, align 8
  br label %317

289:                                              ; preds = %283
  %290 = load i32, i32* %20, align 4
  %291 = sub i32 %290, 1
  %292 = load i32*, i32** %8, align 8
  store i32 %291, i32* %292, align 4
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %293, 7
  %295 = ashr i32 %294, 3
  %296 = load i32*, i32** %14, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32* %298, i32** %14, align 8
  %299 = load i32*, i32** %14, align 8
  %300 = load i32*, i32** %12, align 8
  %301 = ptrtoint i32* %299 to i64
  %302 = ptrtoint i32* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 4
  %305 = load i64, i64* %11, align 8
  %306 = icmp ugt i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %289
  %308 = load i32, i32* @srcSize_wrong, align 4
  %309 = call i64 @ERROR(i32 %308)
  store i64 %309, i64* %6, align 8
  br label %317

310:                                              ; preds = %289
  %311 = load i32*, i32** %14, align 8
  %312 = load i32*, i32** %12, align 8
  %313 = ptrtoint i32* %311 to i64
  %314 = ptrtoint i32* %312 to i64
  %315 = sub i64 %313, %314
  %316 = sdiv exact i64 %315, 4
  store i64 %316, i64* %6, align 8
  br label %317

317:                                              ; preds = %310, %307, %286, %123, %46, %33
  %318 = load i64, i64* %6, align 8
  ret i64 %318
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @MEM_readLE32(i32*) #1

declare dso_local i64 @FSE_abs(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
