; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct_fixed.c_ff_mdct_calcw_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct_fixed.c_ff_mdct_calcw_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mdct_calcw_c(%struct.TYPE_8__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %17, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %18, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %19, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = bitcast i8** %37 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %20, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 3, %49
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %200, %3
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %203

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 2, %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 0, %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 2, %68
  %70 = sub nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i8* @RSCALE(i32 %64, i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 2, %88
  %90 = sub nsw i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @RSCALE(i32 %84, i32 %93)
  store i8* %94, i8** %15, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 0, %118
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CMUL(i32 %105, i32 %111, i8* %112, i8* %113, i32 %119, i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 2, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 2, %135
  %137 = sub nsw i32 %134, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %132, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i8* @RSCALE(i32 %131, i32 %141)
  store i8* %142, i8** %14, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 2, %145
  %147 = add nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 0, %150
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 2, %155
  %157 = sub nsw i32 %154, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 0, %160
  %162 = call i8* @RSCALE(i32 %151, i32 %161)
  store i8* %162, i8** %15, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %8, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 0, %190
  %192 = load i32*, i32** %18, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @CMUL(i32 %175, i32 %181, i8* %182, i8* %183, i32 %191, i32 %198)
  br label %200

200:                                              ; preds = %55
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %51

203:                                              ; preds = %51
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %209 = call i32 %206(%struct.TYPE_8__* %207, %struct.TYPE_9__* %208)
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %323, %203
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %326

214:                                              ; preds = %210
  %215 = load i8*, i8** %24, align 8
  %216 = load i8*, i8** %21, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %7, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %227, %228
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %18, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %235, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 0, %242
  %244 = load i32*, i32** %17, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %7, align 4
  %247 = sub nsw i32 %245, %246
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 0, %251
  %253 = call i32 @CMULL(i8* %215, i8* %216, i32 %225, i32 %234, i32 %243, i32 %252)
  %254 = load i8*, i8** %22, align 8
  %255 = load i8*, i8** %23, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 0, %278
  %280 = load i32*, i32** %17, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 0, %286
  %288 = call i32 @CMULL(i8* %254, i8* %255, i32 %263, i32 %271, i32 %279, i32 %287)
  %289 = load i8*, i8** %21, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %7, align 4
  %293 = sub nsw i32 %291, %292
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  store i8* %289, i8** %297, align 8
  %298 = load i8*, i8** %22, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %7, align 4
  %302 = sub nsw i32 %300, %301
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  store i8* %298, i8** %306, align 8
  %307 = load i8*, i8** %23, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 1
  store i8* %307, i8** %314, align 8
  %315 = load i8*, i8** %24, align 8
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  store i8* %315, i8** %322, align 8
  br label %323

323:                                              ; preds = %214
  %324 = load i32, i32* %7, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %7, align 4
  br label %210

326:                                              ; preds = %210
  ret void
}

declare dso_local i8* @RSCALE(i32, i32) #1

declare dso_local i32 @CMUL(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @CMULL(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
