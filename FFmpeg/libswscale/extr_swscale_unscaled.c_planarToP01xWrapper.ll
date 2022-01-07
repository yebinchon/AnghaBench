; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarToP01xWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarToP01xWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32**, i32*, i32, i32, i32**, i32*)* @planarToP01xWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planarToP01xWrapper(%struct.TYPE_7__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_8__* @av_pix_fmt_desc_get(i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %15, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_8__* @av_pix_fmt_desc_get(i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %16, align 8
  %36 = load i32**, i32*** %9, align 8
  store i32** %36, i32*** %17, align 8
  %37 = load i32**, i32*** %13, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  store i32* %46, i32** %18, align 8
  %47 = load i32**, i32*** %13, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  store i32* %57, i32** %19, align 8
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %64, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %71, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %78, %84
  store i32 %85, i32* %58, align 4
  %86 = getelementptr inbounds i32, i32* %58, i64 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %92, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %99, %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %106, %112
  store i32 %113, i32* %86, align 4
  %114 = getelementptr inbounds i32, i32* %86, i64 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %120, %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %127, %133
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %134, %140
  store i32 %141, i32* %114, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = srem i32 %144, 2
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %171, label %147

147:                                              ; preds = %7
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = srem i32 %150, 2
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %171, label %153

153:                                              ; preds = %147
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 2
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %153
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = srem i32 %162, 2
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = srem i32 %168, 2
  %170 = icmp ne i32 %169, 0
  br label %171

171:                                              ; preds = %165, %159, %153, %147, %7
  %172 = phi i1 [ true, %159 ], [ true, %153 ], [ true, %147 ], [ true, %7 ], [ %170, %165 ]
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @av_assert0(i32 %174)
  store i32 0, i32* %21, align 4
  br label %176

176:                                              ; preds = %285, %171
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %288

180:                                              ; preds = %176
  %181 = load i32*, i32** %18, align 8
  store i32* %181, i32** %23, align 8
  %182 = load i32**, i32*** %17, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %24, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %20, align 4
  br label %188

188:                                              ; preds = %200, %180
  %189 = load i32, i32* %20, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load i32*, i32** %24, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %24, align 8
  %194 = load i32, i32* %192, align 4
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %194, %196
  %198 = load i32*, i32** %23, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %23, align 8
  store i32 %197, i32* %198, align 4
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %20, align 4
  br label %188

203:                                              ; preds = %188
  %204 = load i32*, i32** %10, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %206, 2
  %208 = load i32**, i32*** %17, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 0
  %210 = load i32*, i32** %209, align 8
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %209, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = sdiv i32 %215, 2
  %217 = load i32*, i32** %18, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %18, align 8
  %220 = load i32, i32* %21, align 4
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %284, label %223

223:                                              ; preds = %203
  %224 = load i32*, i32** %19, align 8
  store i32* %224, i32** %25, align 8
  %225 = load i32**, i32*** %17, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 1
  %227 = load i32*, i32** %226, align 8
  store i32* %227, i32** %26, align 8
  %228 = load i32**, i32*** %17, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 2
  %230 = load i32*, i32** %229, align 8
  store i32* %230, i32** %27, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 2
  store i32 %234, i32* %20, align 4
  br label %235

235:                                              ; preds = %255, %223
  %236 = load i32, i32* %20, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %235
  %239 = load i32*, i32** %26, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %26, align 8
  %241 = load i32, i32* %239, align 4
  %242 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %241, %243
  %245 = load i32*, i32** %25, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %25, align 8
  store i32 %244, i32* %245, align 4
  %247 = load i32*, i32** %27, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %27, align 8
  %249 = load i32, i32* %247, align 4
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %249, %251
  %253 = load i32*, i32** %25, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %25, align 8
  store i32 %252, i32* %253, align 4
  br label %255

255:                                              ; preds = %238
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %20, align 4
  br label %235

258:                                              ; preds = %235
  %259 = load i32*, i32** %10, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = sdiv i32 %261, 2
  %263 = load i32**, i32*** %17, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  %265 = load i32*, i32** %264, align 8
  %266 = sext i32 %262 to i64
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32* %267, i32** %264, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %270, 2
  %272 = load i32**, i32*** %17, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 2
  %274 = load i32*, i32** %273, align 8
  %275 = sext i32 %271 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %273, align 8
  %277 = load i32*, i32** %14, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = sdiv i32 %279, 2
  %281 = load i32*, i32** %19, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %19, align 8
  br label %284

284:                                              ; preds = %258, %203
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %176

288:                                              ; preds = %176
  %289 = load i32, i32* %12, align 4
  ret i32 %289
}

declare dso_local %struct.TYPE_8__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
