; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_reverse_decorr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_reverse_decorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Decorr = type { i32, i32*, i32* }

@MAX_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Decorr*)* @reverse_decorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_decorr(%struct.Decorr* %0) #0 {
  %2 = alloca %struct.Decorr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Decorr* %0, %struct.Decorr** %2, align 8
  %8 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %9 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MAX_TERM, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %188

13:                                               ; preds = %1
  %14 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %15 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %21 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 2, %24
  %26 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %27 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %25, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %3, align 8
  %34 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %35 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 2, %38
  %40 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %41 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %39, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %4, align 8
  br label %79

48:                                               ; preds = %13
  %49 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %50 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 3, %53
  %55 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %56 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %54, %59
  %61 = ashr i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %3, align 8
  %64 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %65 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 3, %68
  %70 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %71 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %69, %74
  %76 = ashr i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %48, %19
  %80 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %81 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %86 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %90 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %95 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %93, i32* %97, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %101 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %107 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %111 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %79
  %116 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %117 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 2, %120
  %122 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %123 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %121, %126
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %3, align 8
  %130 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %131 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 2, %134
  %136 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %137 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %135, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %4, align 8
  br label %175

144:                                              ; preds = %79
  %145 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %146 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 3, %149
  %151 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %152 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %150, %155
  %157 = ashr i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  store i8* %159, i8** %3, align 8
  %160 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %161 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 3, %164
  %166 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %167 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %165, %170
  %172 = ashr i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  store i8* %174, i8** %4, align 8
  br label %175

175:                                              ; preds = %144, %115
  %176 = load i8*, i8** %3, align 8
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %179 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %177, i32* %181, align 4
  %182 = load i8*, i8** %4, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %185 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %183, i32* %187, align 4
  br label %313

188:                                              ; preds = %1
  %189 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %190 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 1
  br i1 %192, label %193, label %312

193:                                              ; preds = %188
  store i32 0, i32* %5, align 4
  %194 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %195 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %304, %193
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %201 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %202, 2
  %204 = icmp slt i32 %199, %203
  br i1 %204, label %205, label %311

205:                                              ; preds = %198
  %206 = load i32, i32* @MAX_TERM, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %5, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* @MAX_TERM, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load i32, i32* %6, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %215 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %222 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %227, %220
  store i32 %228, i32* %226, align 4
  %229 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %230 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %237 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %242, %235
  store i32 %243, i32* %241, align 4
  %244 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %245 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %252 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = xor i32 %257, %250
  store i32 %258, i32* %256, align 4
  %259 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %260 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %267 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = xor i32 %272, %265
  store i32 %273, i32* %271, align 4
  %274 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %275 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %282 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = xor i32 %287, %280
  store i32 %288, i32* %286, align 4
  %289 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %290 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %297 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = xor i32 %302, %295
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %205
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %7, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %7, align 4
  br label %198

311:                                              ; preds = %198
  br label %312

312:                                              ; preds = %311, %188
  br label %313

313:                                              ; preds = %312, %175
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
