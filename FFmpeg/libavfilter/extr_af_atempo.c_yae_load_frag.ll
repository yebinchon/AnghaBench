; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_load_frag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_load_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i64, i64, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i64*, i32*, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i32*)* @yae_load_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yae_load_frag(%struct.TYPE_8__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call %struct.TYPE_7__* @yae_curr_frag(%struct.TYPE_8__* %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %22, align 8
  %34 = load i32**, i32*** %6, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %22, align 8
  %41 = call i64 @yae_load_data(%struct.TYPE_8__* %37, i32** %38, i32* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %297

46:                                               ; preds = %36, %3
  %47 = load i64, i64* %22, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %47, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i64, i64* %22, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %55, %60
  br label %63

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i64 [ %61, %54 ], [ 0, %62 ]
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub nsw i64 %73, %74
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i64 [ %75, %70 ], [ 0, %76 ]
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %9, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  store i64 %93, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %77
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %102, %107
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i8* @FFMIN(i32 %109, i32 %111)
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @av_assert0(i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = mul nsw i64 %120, %123
  %125 = call i32 @memset(i32* %119, i32 0, i64 %124)
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = mul nsw i64 %126, %129
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32* %132, i32** %9, align 8
  br label %133

133:                                              ; preds = %101, %77
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %297

138:                                              ; preds = %133
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %138
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  br label %162

154:                                              ; preds = %138
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %157, %160
  br label %162

162:                                              ; preds = %154, %146
  %163 = phi i32 [ %153, %146 ], [ %161, %154 ]
  store i32 %163, i32* %20, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %176

172:                                              ; preds = %162
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  br label %176

176:                                              ; preds = %172, %171
  %177 = phi i32 [ 0, %171 ], [ %175, %172 ]
  store i32 %177, i32* %21, align 4
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load i32, i32* %21, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %182, %184
  %186 = icmp sle i64 %178, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @av_assert0(i32 %187)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = mul nsw i64 %195, %198
  %200 = getelementptr inbounds i32, i32* %191, i64 %199
  store i32* %200, i32** %14, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  store i32* %203, i32** %15, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %12, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i64, i64* %11, align 8
  %212 = sub nsw i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %176
  br label %222

218:                                              ; preds = %176
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %20, align 4
  %221 = sub nsw i32 %219, %220
  br label %222

222:                                              ; preds = %218, %217
  %223 = phi i32 [ 0, %217 ], [ %221, %218 ]
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %20, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %16, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i64, i64* %13, align 8
  %232 = load i64, i64* %12, align 8
  %233 = sub nsw i64 %231, %232
  %234 = trunc i64 %233 to i32
  %235 = call i8* @FFMIN(i32 %230, i32 %234)
  br label %237

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236, %227
  %238 = phi i8* [ %235, %227 ], [ null, %236 ]
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %18, align 4
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* %12, align 8
  %242 = sub nsw i64 %240, %241
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = sub nsw i64 %242, %244
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %19, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %237
  %250 = load i32*, i32** %9, align 8
  %251 = load i32*, i32** %14, align 8
  %252 = load i32, i32* %16, align 4
  %253 = sext i32 %252 to i64
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = mul nsw i64 %253, %256
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = mul nsw i64 %260, %263
  %265 = trunc i64 %264 to i32
  %266 = call i32 @memcpy(i32* %250, i32* %258, i32 %265)
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = mul nsw i64 %268, %271
  %273 = load i32*, i32** %9, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 %272
  store i32* %274, i32** %9, align 8
  br label %275

275:                                              ; preds = %249, %237
  %276 = load i32, i32* %19, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %275
  %279 = load i32*, i32** %9, align 8
  %280 = load i32*, i32** %15, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = mul nsw i64 %282, %285
  %287 = getelementptr inbounds i32, i32* %280, i64 %286
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = mul nsw i64 %289, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 @memcpy(i32* %279, i32* %287, i32 %294)
  br label %296

296:                                              ; preds = %278, %275
  store i32 0, i32* %4, align 4
  br label %297

297:                                              ; preds = %296, %137, %43
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local %struct.TYPE_7__* @yae_curr_frag(%struct.TYPE_8__*) #1

declare dso_local i64 @yae_load_data(%struct.TYPE_8__*, i32**, i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
