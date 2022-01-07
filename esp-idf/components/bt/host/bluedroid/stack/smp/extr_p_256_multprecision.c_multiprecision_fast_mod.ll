; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_fast_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_fast_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@curve = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KEY_LENGTH_DWORDS_P192 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiprecision_fast_mod(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve, i32 0, i32 0), align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 6
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 10
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 10
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 11
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 11
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 6
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 10
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 10
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** %3, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %5, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %3, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 9
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %3, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32*, i32** %3, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 9
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 11
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 11
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %216, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load i32*, i32** %4, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32*, i32** %3, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  store i32 %228, i32* %230, align 4
  %231 = load i32*, i32** %3, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %4, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 4
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %233, %236
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %5, align 4
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %3, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i32*, i32** %3, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 8
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %5, align 4
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 10
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %3, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 4
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32*, i32** %3, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %4, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 10
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %265, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %5, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 5
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %275, %276
  %278 = load i32*, i32** %3, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 5
  store i32 %277, i32* %279, align 4
  %280 = load i32*, i32** %3, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 5
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %4, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 5
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %282, %285
  %287 = zext i1 %286 to i32
  store i32 %287, i32* %5, align 4
  %288 = load i32*, i32** %4, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 9
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %3, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 5
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load i32*, i32** %3, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 9
  %300 = load i32, i32* %299, align 4
  %301 = icmp slt i32 %297, %300
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load i32*, i32** %4, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 11
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %3, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 5
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load i32*, i32** %3, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 5
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %4, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 11
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %314, %317
  %319 = zext i1 %318 to i32
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load i32*, i32** %3, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 4
  %327 = load i32*, i32** %3, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %5, align 4
  %331 = icmp slt i32 %329, %330
  %332 = zext i1 %331 to i32
  store i32 %332, i32* %6, align 4
  %333 = load i32, i32* %6, align 4
  %334 = load i32*, i32** %3, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, %333
  store i32 %337, i32* %335, align 4
  %338 = load i32*, i32** %3, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %6, align 4
  %342 = icmp slt i32 %340, %341
  %343 = zext i1 %342 to i32
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* %6, align 4
  %345 = load i32*, i32** %3, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 2
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, %344
  store i32 %348, i32* %346, align 4
  %349 = load i32*, i32** %3, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 2
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %6, align 4
  %353 = icmp slt i32 %351, %352
  %354 = zext i1 %353 to i32
  store i32 %354, i32* %6, align 4
  %355 = load i32, i32* %5, align 4
  %356 = load i32*, i32** %3, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 2
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, %355
  store i32 %359, i32* %357, align 4
  %360 = load i32*, i32** %3, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %5, align 4
  %364 = icmp slt i32 %362, %363
  %365 = zext i1 %364 to i32
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %6, align 4
  %367 = load i32*, i32** %3, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 3
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, %366
  store i32 %370, i32* %368, align 4
  %371 = load i32*, i32** %3, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 3
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %6, align 4
  %375 = icmp slt i32 %373, %374
  %376 = zext i1 %375 to i32
  store i32 %376, i32* %6, align 4
  %377 = load i32, i32* %6, align 4
  %378 = load i32*, i32** %3, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 4
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load i32*, i32** %3, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 4
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %6, align 4
  %386 = icmp slt i32 %384, %385
  %387 = zext i1 %386 to i32
  store i32 %387, i32* %6, align 4
  %388 = load i32, i32* %6, align 4
  %389 = load i32*, i32** %3, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 5
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %391, %388
  store i32 %392, i32* %390, align 4
  %393 = load i32*, i32** %3, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 5
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %6, align 4
  %397 = icmp slt i32 %395, %396
  %398 = zext i1 %397 to i32
  store i32 %398, i32* %6, align 4
  %399 = load i32, i32* %6, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %2
  %402 = load i32*, i32** %3, align 8
  %403 = load i32*, i32** %3, align 8
  %404 = load i32*, i32** %7, align 8
  %405 = load i32, i32* @KEY_LENGTH_DWORDS_P192, align 4
  %406 = call i32 @multiprecision_sub(i32* %402, i32* %403, i32* %404, i32 %405)
  br label %420

407:                                              ; preds = %2
  %408 = load i32*, i32** %3, align 8
  %409 = load i32*, i32** %7, align 8
  %410 = load i32, i32* @KEY_LENGTH_DWORDS_P192, align 4
  %411 = call i64 @multiprecision_compare(i32* %408, i32* %409, i32 %410)
  %412 = icmp sge i64 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = load i32*, i32** %3, align 8
  %415 = load i32*, i32** %3, align 8
  %416 = load i32*, i32** %7, align 8
  %417 = load i32, i32* @KEY_LENGTH_DWORDS_P192, align 4
  %418 = call i32 @multiprecision_sub(i32* %414, i32* %415, i32* %416, i32 %417)
  br label %419

419:                                              ; preds = %413, %407
  br label %420

420:                                              ; preds = %419, %401
  ret void
}

declare dso_local i32 @multiprecision_sub(i32*, i32*, i32*, i32) #1

declare dso_local i64 @multiprecision_compare(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
