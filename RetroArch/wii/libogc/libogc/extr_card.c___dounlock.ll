; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___dounlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___dounlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@tmp_buffer = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@_cardunlockdata = common dso_local global i32 0, align 4
@__dsp_initcallback = common dso_local global i32 0, align 4
@__dsp_donecallback = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @__dounlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__dounlock(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %14, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %15, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %68 to i32
  %70 = add nsw i32 %69, 47
  %71 = and i32 %70, -32
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %16, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  store i32* %75, i32** %17, align 8
  %76 = call i32 (...) @__card_initval()
  store i32 %76, i32* %6, align 4
  %77 = call i32 (...) @__card_dummylen()
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* @tmp_buffer, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @__card_readarrayunlock(i64 %78, i32 %79, i64 %80, i32 %81, i32 0)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %2
  %85 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %85, i64* %3, align 8
  br label %410

86:                                               ; preds = %2
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 3
  %90 = add nsw i32 %89, 1
  %91 = call i32 @exnor_1st(i32 %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = ashr i32 %92, 23
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 15
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %8, align 4
  %97 = ashr i32 %96, 7
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %20, align 4
  %100 = xor i32 %98, %99
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %21, align 4
  %103 = xor i32 %101, %102
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %22, align 4
  %106 = xor i32 %104, %105
  %107 = xor i32 %106, -1
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %23, align 4
  %110 = shl i32 %109, 31
  %111 = or i32 %108, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bitrev(i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %6, align 4
  %121 = call i32 (...) @__card_dummylen()
  store i32 %121, i32* %7, align 4
  %122 = load i64, i64* %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i64, i64* @tmp_buffer, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 20
  %127 = call i64 @__card_readarrayunlock(i64 %122, i32 %123, i64 %124, i32 %126, i32 1)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %86
  %130 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %130, i64* %3, align 8
  br label %410

131:                                              ; preds = %86
  %132 = load i64, i64* @tmp_buffer, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i64, i64* @tmp_buffer, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  %140 = load i64, i64* @tmp_buffer, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %11, align 4
  %144 = load i64, i64* @tmp_buffer, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i64, i64* @tmp_buffer, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %152, %155
  store i32 %156, i32* %9, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @exnor(i32 %159, i32 32)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = shl i32 %161, 23
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 %163, 15
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %8, align 4
  %166 = shl i32 %165, 7
  store i32 %166, i32* %26, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %26, align 4
  %169 = xor i32 %167, %168
  store i32 %169, i32* %27, align 4
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %27, align 4
  %172 = xor i32 %170, %171
  store i32 %172, i32* %28, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %28, align 4
  %175 = xor i32 %173, %174
  %176 = xor i32 %175, -1
  store i32 %176, i32* %29, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %29, align 4
  %179 = ashr i32 %178, 31
  %180 = or i32 %177, %179
  store i32 %180, i32* %27, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = xor i32 %184, %187
  store i32 %188, i32* %10, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @exnor(i32 %191, i32 32)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = shl i32 %193, 23
  store i32 %194, i32* %30, align 4
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 %195, 15
  store i32 %196, i32* %31, align 4
  %197 = load i32, i32* %8, align 4
  %198 = shl i32 %197, 7
  store i32 %198, i32* %32, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %32, align 4
  %201 = xor i32 %199, %200
  store i32 %201, i32* %33, align 4
  %202 = load i32, i32* %31, align 4
  %203 = load i32, i32* %33, align 4
  %204 = xor i32 %202, %203
  store i32 %204, i32* %34, align 4
  %205 = load i32, i32* %30, align 4
  %206 = load i32, i32* %34, align 4
  %207 = xor i32 %205, %206
  %208 = xor i32 %207, -1
  store i32 %208, i32* %35, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %35, align 4
  %211 = ashr i32 %210, 31
  %212 = or i32 %209, %211
  store i32 %212, i32* %33, align 4
  %213 = load i32, i32* %33, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = xor i32 %216, %219
  store i32 %220, i32* %11, align 4
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @exnor(i32 %223, i32 32)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = shl i32 %225, 23
  store i32 %226, i32* %36, align 4
  %227 = load i32, i32* %8, align 4
  %228 = shl i32 %227, 15
  store i32 %228, i32* %37, align 4
  %229 = load i32, i32* %8, align 4
  %230 = shl i32 %229, 7
  store i32 %230, i32* %38, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %38, align 4
  %233 = xor i32 %231, %232
  store i32 %233, i32* %39, align 4
  %234 = load i32, i32* %37, align 4
  %235 = load i32, i32* %39, align 4
  %236 = xor i32 %234, %235
  store i32 %236, i32* %40, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %40, align 4
  %239 = xor i32 %237, %238
  %240 = xor i32 %239, -1
  store i32 %240, i32* %41, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %41, align 4
  %243 = ashr i32 %242, 31
  %244 = or i32 %241, %243
  store i32 %244, i32* %39, align 4
  %245 = load i32, i32* %39, align 4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = xor i32 %248, %251
  store i32 %252, i32* %12, align 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @exnor(i32 %255, i32 32)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = shl i32 %257, 23
  store i32 %258, i32* %42, align 4
  %259 = load i32, i32* %8, align 4
  %260 = shl i32 %259, 15
  store i32 %260, i32* %43, align 4
  %261 = load i32, i32* %8, align 4
  %262 = shl i32 %261, 7
  store i32 %262, i32* %44, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %44, align 4
  %265 = xor i32 %263, %264
  store i32 %265, i32* %45, align 4
  %266 = load i32, i32* %43, align 4
  %267 = load i32, i32* %45, align 4
  %268 = xor i32 %266, %267
  store i32 %268, i32* %46, align 4
  %269 = load i32, i32* %42, align 4
  %270 = load i32, i32* %46, align 4
  %271 = xor i32 %269, %270
  %272 = xor i32 %271, -1
  store i32 %272, i32* %47, align 4
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %47, align 4
  %275 = ashr i32 %274, 31
  %276 = or i32 %273, %275
  store i32 %276, i32* %45, align 4
  %277 = load i32, i32* %45, align 4
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = xor i32 %280, %283
  store i32 %284, i32* %13, align 4
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = shl i32 %288, 3
  %290 = call i32 @exnor(i32 %287, i32 %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = shl i32 %291, 23
  store i32 %292, i32* %48, align 4
  %293 = load i32, i32* %8, align 4
  %294 = shl i32 %293, 15
  store i32 %294, i32* %49, align 4
  %295 = load i32, i32* %8, align 4
  %296 = shl i32 %295, 7
  store i32 %296, i32* %50, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %50, align 4
  %299 = xor i32 %297, %298
  store i32 %299, i32* %51, align 4
  %300 = load i32, i32* %49, align 4
  %301 = load i32, i32* %51, align 4
  %302 = xor i32 %300, %301
  store i32 %302, i32* %52, align 4
  %303 = load i32, i32* %48, align 4
  %304 = load i32, i32* %52, align 4
  %305 = xor i32 %303, %304
  %306 = xor i32 %305, -1
  store i32 %306, i32* %53, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %53, align 4
  %309 = ashr i32 %308, 31
  %310 = or i32 %307, %309
  store i32 %310, i32* %51, align 4
  %311 = load i32, i32* %51, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @exnor(i32 %316, i32 33)
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = shl i32 %318, 23
  store i32 %319, i32* %54, align 4
  %320 = load i32, i32* %8, align 4
  %321 = shl i32 %320, 15
  store i32 %321, i32* %55, align 4
  %322 = load i32, i32* %8, align 4
  %323 = shl i32 %322, 7
  store i32 %323, i32* %56, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* %56, align 4
  %326 = xor i32 %324, %325
  store i32 %326, i32* %57, align 4
  %327 = load i32, i32* %55, align 4
  %328 = load i32, i32* %57, align 4
  %329 = xor i32 %327, %328
  store i32 %329, i32* %58, align 4
  %330 = load i32, i32* %54, align 4
  %331 = load i32, i32* %58, align 4
  %332 = xor i32 %330, %331
  %333 = xor i32 %332, -1
  store i32 %333, i32* %59, align 4
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* %59, align 4
  %336 = ashr i32 %335, 31
  %337 = or i32 %334, %336
  store i32 %337, i32* %57, align 4
  %338 = load i32, i32* %57, align 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* %12, align 4
  %342 = load i32*, i32** %16, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %13, align 4
  %345 = load i32*, i32** %16, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  store i32 %344, i32* %346, align 4
  %347 = load i32*, i32** %16, align 8
  %348 = ptrtoint i32* %347 to i32
  %349 = load i32*, i32** %15, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  store i32 %348, i32* %350, align 4
  %351 = load i32*, i32** %15, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  store i32 8, i32* %352, align 4
  %353 = load i32*, i32** %15, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  store i32 0, i32* %354, align 4
  %355 = load i32*, i32** %17, align 8
  %356 = ptrtoint i32* %355 to i32
  %357 = load i32*, i32** %15, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  store i32 %356, i32* %358, align 4
  %359 = load i32*, i32** %16, align 8
  %360 = call i32 @DCFlushRange(i32* %359, i32 8)
  %361 = load i32*, i32** %17, align 8
  %362 = call i32 @DCInvalidateRange(i32* %361, i32 4)
  %363 = load i32*, i32** %15, align 8
  %364 = call i32 @DCFlushRange(i32* %363, i32 16)
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  store i32 255, i32* %367, align 8
  %368 = load i32, i32* @_cardunlockdata, align 4
  %369 = call i64 @MEM_VIRTUAL_TO_PHYSICAL(i32 %368)
  %370 = inttoptr i64 %369 to i32*
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 8
  store i32* %370, i32** %373, align 8
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  store i32 352, i32* %376, align 4
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  store i32 0, i32* %379, align 8
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 3
  store i32 16, i32* %382, align 4
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 7
  store i32* null, i32** %385, align 8
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 6
  store i32* null, i32** %388, align 8
  %389 = load i32, i32* @__dsp_initcallback, align 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 5
  store i32 %389, i32* %392, align 4
  %393 = load i32, i32* @__dsp_donecallback, align 4
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 4
  store i32 %393, i32* %396, align 8
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = call i32 @DSP_AddTask(%struct.TYPE_5__* %398)
  %400 = load i32, i32* %9, align 4
  %401 = load i32*, i32** %5, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* %10, align 4
  %404 = load i32*, i32** %5, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %11, align 4
  %407 = load i32*, i32** %5, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 2
  store i32 %406, i32* %408, align 4
  %409 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %409, i64* %3, align 8
  br label %410

410:                                              ; preds = %131, %129, %84
  %411 = load i64, i64* %3, align 8
  ret i64 %411
}

declare dso_local i32 @__card_initval(...) #1

declare dso_local i32 @__card_dummylen(...) #1

declare dso_local i64 @__card_readarrayunlock(i64, i32, i64, i32, i32) #1

declare dso_local i32 @exnor_1st(i32, i32) #1

declare dso_local i32 @bitrev(i32) #1

declare dso_local i32 @exnor(i32, i32) #1

declare dso_local i32 @DCFlushRange(i32*, i32) #1

declare dso_local i32 @DCInvalidateRange(i32*, i32) #1

declare dso_local i64 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

declare dso_local i32 @DSP_AddTask(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
