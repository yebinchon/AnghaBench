; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/openwfc/extr_khrn_client_platform_openwfc.c_platform_wfc_bounce_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/openwfc/extr_khrn_client_platform_openwfc.c_platform_wfc_bounce_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64*, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_OF_ELEMENTS = common dso_local global i32 0, align 4
@WFC_RECT_SIZE = common dso_local global i32 0, align 4
@WFC_CONTEXT_TARGET_WIDTH = common dso_local global i32 0, align 4
@WFC_CONTEXT_TARGET_HEIGHT = common dso_local global i32 0, align 4
@WFC_CONTEXT_BG_COLOR = common dso_local global i32 0, align 4
@WFC_RECT_X = common dso_local global i64 0, align 8
@WFC_RECT_Y = common dso_local global i64 0, align 8
@WFC_RECT_WIDTH = common dso_local global i64 0, align 8
@WFC_RECT_HEIGHT = common dso_local global i64 0, align 8
@NO_ATTRIBUTES = common dso_local global i32 0, align 4
@WFC_INVALID_HANDLE = common dso_local global i64 0, align 8
@WFC_ERROR_NONE = common dso_local global i64 0, align 8
@WFC_ELEMENT_SOURCE_RECTANGLE = common dso_local global i32 0, align 4
@WFC_ELEMENT_SOURCE = common dso_local global i32 0, align 4
@WFC_ELEMENT_TRANSPARENCY_TYPES = common dso_local global i32 0, align 4
@WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@WFC_ELEMENT_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@WFC_ELEMENT_DESTINATION_RECTANGLE = common dso_local global i32 0, align 4
@WFC_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @platform_wfc_bounce_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %3, align 8
  %24 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %5, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %28 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %31 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  %32 = zext i32 %31 to i64
  %33 = load i32, i32* @WFC_RECT_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nuw i64 %32, %34
  %36 = alloca i32, i64 %35, align 16
  store i64 %32, i64* %8, align 8
  store i64 %34, i64* %9, align 8
  %37 = load i32, i32* @WFC_RECT_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  %40 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i64, i64 %41, align 16
  store i64 %41, i64* %11, align 8
  %43 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  store i32 %43, i32* %12, align 4
  store i64* %42, i64** %13, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @NUM_OF_ELEMENTS, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sle i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @vcos_assert(i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @vcos_assert(i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %13, align 8
  br label %73

73:                                               ; preds = %51, %1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WFC_CONTEXT_TARGET_WIDTH, align 4
  %81 = call i32 @wfcGetContextAttribi(i32 %76, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WFC_CONTEXT_TARGET_HEIGHT, align 4
  %89 = call i32 @wfcGetContextAttribi(i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WFC_CONTEXT_BG_COLOR, align 4
  %97 = call i32 @wfcSetContextAttribi(i32 %92, i32 %95, i32 %96, i32 65535)
  store float 0x3FD99999A0000000, float* %21, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %73
  store float 7.500000e-01, float* %21, align 4
  br label %101

101:                                              ; preds = %100, %73
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load float, float* %103, align 8
  %105 = load float, float* %21, align 4
  %106 = fmul float %104, %105
  %107 = fptosi float %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load float, float* %109, align 4
  %111 = load float, float* %21, align 4
  %112 = fmul float %110, %111
  %113 = fptosi float %112 to i32
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* @WFC_RECT_X, align 8
  %118 = getelementptr inbounds i32, i32* %39, i64 %117
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @WFC_RECT_Y, align 8
  %123 = getelementptr inbounds i32, i32* %39, i64 %122
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @WFC_RECT_WIDTH, align 8
  %128 = getelementptr inbounds i32, i32* %39, i64 %127
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @WFC_RECT_HEIGHT, align 8
  %133 = getelementptr inbounds i32, i32* %39, i64 %132
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %303, %101
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %306

138:                                              ; preds = %134
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %184

141:                                              ; preds = %138
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NO_ATTRIBUTES, align 4
  %149 = call i64 @wfcCreateElement(i32 %144, i32 %147, i32 %148)
  %150 = load i64*, i64** %13, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  %154 = load i64*, i64** %13, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %160 = icmp ne i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @vcos_assert(i32 %161)
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load i64*, i64** %13, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %172 = call i32 @wfcInsertElement(i32 %165, i64 %170, i64 %171)
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @wfcGetError(i32 %175)
  %177 = load i64, i64* @WFC_ERROR_NONE, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i64 @vcos_verify(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %141
  br label %183

183:                                              ; preds = %182, %141
  br label %196

184:                                              ; preds = %138
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %13, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %191, i64* %195, align 8
  br label %196

196:                                              ; preds = %184, %183
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = load i64*, i64** %13, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @WFC_ELEMENT_SOURCE_RECTANGLE, align 4
  %206 = load i32, i32* @WFC_RECT_SIZE, align 4
  %207 = call i32 @wfcSetElementAttribiv(i32 %199, i64 %204, i32 %205, i32 %206, i32* %39)
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load i64*, i64** %13, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @WFC_ELEMENT_SOURCE, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 11
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @wfcSetElementAttribi(i32 %210, i64 %215, i32 %216, i32 %219)
  %221 = load i32, i32* %12, align 4
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %245

223:                                              ; preds = %196
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = load i64*, i64** %13, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* @WFC_ELEMENT_TRANSPARENCY_TYPES, align 4
  %233 = load i32, i32* @WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA, align 4
  %234 = call i32 @wfcSetElementAttribi(i32 %226, i64 %231, i32 %232, i32 %233)
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = load i64*, i64** %13, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @WFC_ELEMENT_GLOBAL_ALPHA, align 4
  %244 = call i32 @wfcSetElementAttribf(i32 %237, i64 %242, i32 %243, double 7.500000e-01)
  br label %245

245:                                              ; preds = %223, %196
  %246 = load i32, i32* %4, align 4
  %247 = mul nsw i32 %246, 100
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, %34
  %251 = getelementptr inbounds i32, i32* %36, i64 %250
  %252 = load i64, i64* @WFC_RECT_X, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %247, i32* %253, align 4
  %254 = load i32, i32* %4, align 4
  %255 = mul nsw i32 %254, 10
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = mul nsw i64 %257, %34
  %259 = getelementptr inbounds i32, i32* %36, i64 %258
  %260 = load i64, i64* @WFC_RECT_Y, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32 %255, i32* %261, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = mul nsw i64 %264, %34
  %266 = getelementptr inbounds i32, i32* %36, i64 %265
  %267 = load i64, i64* @WFC_RECT_WIDTH, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32 %262, i32* %268, align 4
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %271, %34
  %273 = getelementptr inbounds i32, i32* %36, i64 %272
  %274 = load i64, i64* @WFC_RECT_HEIGHT, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %269, i32* %275, align 4
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 4
  %279 = load i64*, i64** %13, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @WFC_ELEMENT_DESTINATION_RECTANGLE, align 4
  %285 = load i32, i32* @WFC_RECT_SIZE, align 4
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = mul nsw i64 %287, %34
  %289 = getelementptr inbounds i32, i32* %36, i64 %288
  %290 = call i32 @wfcSetElementAttribiv(i32 %278, i64 %283, i32 %284, i32 %285, i32* %289)
  %291 = load i32, i32* %4, align 4
  %292 = add nsw i32 %291, 1
  %293 = mul nsw i32 %292, 2
  %294 = load i32, i32* %4, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %27, i64 %295
  store i32 %293, i32* %296, align 4
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  %299 = mul nsw i32 %298, 2
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %30, i64 %301
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %245
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %4, align 4
  br label %134

306:                                              ; preds = %134
  br label %307

307:                                              ; preds = %429, %306
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  br i1 %312, label %313, label %439

313:                                              ; preds = %307
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %426, %313
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* %12, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %429

318:                                              ; preds = %314
  %319 = load i32, i32* %4, align 4
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %320, %34
  %322 = getelementptr inbounds i32, i32* %36, i64 %321
  %323 = load i64, i64* @WFC_RECT_X, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %4, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, %34
  %329 = getelementptr inbounds i32, i32* %36, i64 %328
  %330 = load i64, i64* @WFC_RECT_Y, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %19, align 4
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %27, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %18, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %18, align 4
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* %16, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* %14, align 4
  %343 = icmp sge i32 %341, %342
  br i1 %343, label %344, label %354

344:                                              ; preds = %318
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* %16, align 4
  %347 = sub nsw i32 %345, %346
  %348 = sub nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %27, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = mul nsw i32 %352, -1
  store i32 %353, i32* %351, align 4
  br label %364

354:                                              ; preds = %318
  %355 = load i32, i32* %18, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  store i32 0, i32* %18, align 4
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %27, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %361, -1
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %357, %354
  br label %364

364:                                              ; preds = %363, %344
  %365 = load i32, i32* %4, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %30, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %19, align 4
  %371 = load i32, i32* %19, align 4
  %372 = load i32, i32* %17, align 4
  %373 = add nsw i32 %371, %372
  %374 = load i32, i32* %15, align 4
  %375 = icmp sge i32 %373, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %364
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %17, align 4
  %379 = sub nsw i32 %377, %378
  %380 = sub nsw i32 %379, 1
  store i32 %380, i32* %19, align 4
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %30, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = mul nsw i32 %384, -1
  store i32 %385, i32* %383, align 4
  br label %396

386:                                              ; preds = %364
  %387 = load i32, i32* %19, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  store i32 0, i32* %19, align 4
  %390 = load i32, i32* %4, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %30, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = mul nsw i32 %393, -1
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %389, %386
  br label %396

396:                                              ; preds = %395, %376
  %397 = load i32, i32* %18, align 4
  %398 = load i32, i32* %4, align 4
  %399 = sext i32 %398 to i64
  %400 = mul nsw i64 %399, %34
  %401 = getelementptr inbounds i32, i32* %36, i64 %400
  %402 = load i64, i64* @WFC_RECT_X, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32 %397, i32* %403, align 4
  %404 = load i32, i32* %19, align 4
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = mul nsw i64 %406, %34
  %408 = getelementptr inbounds i32, i32* %36, i64 %407
  %409 = load i64, i64* @WFC_RECT_Y, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32 %404, i32* %410, align 4
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 4
  %414 = load i64*, i64** %13, align 8
  %415 = load i32, i32* %4, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i64, i64* %414, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = load i32, i32* @WFC_ELEMENT_DESTINATION_RECTANGLE, align 4
  %420 = load i32, i32* @WFC_RECT_SIZE, align 4
  %421 = load i32, i32* %4, align 4
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %422, %34
  %424 = getelementptr inbounds i32, i32* %36, i64 %423
  %425 = call i32 @wfcSetElementAttribiv(i32 %413, i64 %418, i32 %419, i32 %420, i32* %424)
  br label %426

426:                                              ; preds = %396
  %427 = load i32, i32* %4, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %4, align 4
  br label %314

429:                                              ; preds = %314
  %430 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %430, i32 0, i32 9
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i32 0, i32 8
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @WFC_TRUE, align 4
  %437 = call i32 @wfcCommit(i32 %432, i32 %435, i32 %436)
  %438 = call i32 @vcos_sleep(i32 30)
  br label %307

439:                                              ; preds = %307
  %440 = load i32, i32* %20, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %461

442:                                              ; preds = %439
  store i32 0, i32* %4, align 4
  br label %443

443:                                              ; preds = %457, %442
  %444 = load i32, i32* %4, align 4
  %445 = load i32, i32* %12, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %460

447:                                              ; preds = %443
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i32 0, i32 9
  %450 = load i32, i32* %449, align 4
  %451 = load i64*, i64** %13, align 8
  %452 = load i32, i32* %4, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %451, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @wfcDestroyElement(i32 %450, i64 %455)
  br label %457

457:                                              ; preds = %447
  %458 = load i32, i32* %4, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %4, align 4
  br label %443

460:                                              ; preds = %443
  br label %461

461:                                              ; preds = %460, %439
  %462 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i32 0, i32 9
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i32 0, i32 8
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @WFC_CONTEXT_BG_COLOR, align 4
  %469 = call i32 @wfcSetContextAttribi(i32 %464, i32 %467, i32 %468, i32 -16776961)
  %470 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 9
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i32 0, i32 8
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @WFC_TRUE, align 4
  %477 = call i32 @wfcCommit(i32 %472, i32 %475, i32 %476)
  %478 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %478)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vcos_assert(i32) #2

declare dso_local i32 @wfcGetContextAttribi(i32, i32, i32) #2

declare dso_local i32 @wfcSetContextAttribi(i32, i32, i32, i32) #2

declare dso_local i64 @wfcCreateElement(i32, i32, i32) #2

declare dso_local i32 @wfcInsertElement(i32, i64, i64) #2

declare dso_local i64 @vcos_verify(i32) #2

declare dso_local i64 @wfcGetError(i32) #2

declare dso_local i32 @wfcSetElementAttribiv(i32, i64, i32, i32, i32*) #2

declare dso_local i32 @wfcSetElementAttribi(i32, i64, i32, i32) #2

declare dso_local i32 @wfcSetElementAttribf(i32, i64, i32, double) #2

declare dso_local i32 @wfcCommit(i32, i32, i32) #2

declare dso_local i32 @vcos_sleep(i32) #2

declare dso_local i32 @wfcDestroyElement(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
