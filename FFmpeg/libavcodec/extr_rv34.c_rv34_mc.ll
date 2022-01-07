; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_mc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32**, i32**, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, i32**, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_20__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32** }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*** }

@chroma_coeffs = common dso_local global i32* null, align 8
@HAVE_THREADS = common dso_local global i64 0, align 8
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@RV34_MB_P_16x8 = common dso_local global i32 0, align 4
@RV34_MB_P_8x16 = common dso_local global i32 0, align 4
@RV34_MB_P_8x8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32 (i32*, i32*, i32)*]*, i32 (i32*, i32*, i32, i32, i32, i32)**)* @rv34_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_mc(%struct.TYPE_21__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, [16 x i32 (i32*, i32*, i32)*]* %10, i32 (i32*, i32*, i32, i32, i32, i32)** %11) #0 {
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [16 x i32 (i32*, i32*, i32)*]*, align 8
  %24 = alloca i32 (i32*, i32*, i32, i32, i32, i32)**, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
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
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store [16 x i32 (i32*, i32*, i32)*]* %10, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  store i32 (i32*, i32*, i32, i32, i32, i32)** %11, i32 (i32*, i32*, i32, i32, i32, i32)*** %24, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %25, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = add nsw i32 %60, %68
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %45, align 4
  store i32 1, i32* %46, align 4
  store i32 0, i32* %47, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %199

74:                                               ; preds = %12
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 13
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32***, i32**** %78, align 8
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32**, i32*** %79, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %45, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 50331648
  %91 = sdiv i32 %90, 3
  %92 = sub nsw i32 %91, 16777216
  store i32 %92, i32* %33, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 13
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32***, i32**** %96, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32**, i32*** %97, i64 %99
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %45, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 50331648
  %109 = sdiv i32 %108, 3
  %110 = sub nsw i32 %109, 16777216
  store i32 %110, i32* %34, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 13
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32***, i32**** %114, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32**, i32*** %115, i64 %117
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %45, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 50331648
  %127 = srem i32 %126, 3
  store i32 %127, i32* %37, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 13
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32***, i32**** %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32**, i32*** %132, i64 %134
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %45, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 50331648
  %144 = srem i32 %143, 3
  store i32 %144, i32* %38, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 13
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32***, i32**** %148, align 8
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32**, i32*** %149, i64 %151
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %45, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 2
  store i32 %160, i32* %48, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 13
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32***, i32**** %164, align 8
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32**, i32*** %165, i64 %167
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %45, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 2
  store i32 %176, i32* %49, align 4
  %177 = load i32, i32* %48, align 4
  %178 = add nsw i32 %177, 50331648
  %179 = sdiv i32 %178, 3
  %180 = sub nsw i32 %179, 16777216
  store i32 %180, i32* %35, align 4
  %181 = load i32, i32* %49, align 4
  %182 = add nsw i32 %181, 50331648
  %183 = sdiv i32 %182, 3
  %184 = sub nsw i32 %183, 16777216
  store i32 %184, i32* %36, align 4
  %185 = load i32*, i32** @chroma_coeffs, align 8
  %186 = load i32, i32* %48, align 4
  %187 = add nsw i32 %186, 50331648
  %188 = srem i32 %187, 3
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %39, align 4
  %192 = load i32*, i32** @chroma_coeffs, align 8
  %193 = load i32, i32* %49, align 4
  %194 = add nsw i32 %193, 50331648
  %195 = srem i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %40, align 4
  br label %313

199:                                              ; preds = %12
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 13
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32***, i32**** %203, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32**, i32*** %204, i64 %206
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %45, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 2
  store i32 %215, i32* %33, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 13
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32***, i32**** %219, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32**, i32*** %220, i64 %222
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %45, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 2
  store i32 %231, i32* %34, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 13
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32***, i32**** %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32**, i32*** %236, i64 %238
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %45, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 3
  store i32 %247, i32* %37, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 13
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32***, i32**** %251, align 8
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32**, i32*** %252, i64 %254
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %45, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 3
  store i32 %263, i32* %38, align 4
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 13
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32***, i32**** %267, align 8
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32**, i32*** %268, i64 %270
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %45, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = sdiv i32 %278, 2
  store i32 %279, i32* %50, align 4
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 13
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i32***, i32**** %283, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32**, i32*** %284, i64 %286
  %288 = load i32**, i32*** %287, align 8
  %289 = load i32, i32* %45, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32*, i32** %288, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = sdiv i32 %294, 2
  store i32 %295, i32* %51, align 4
  %296 = load i32, i32* %50, align 4
  %297 = ashr i32 %296, 2
  store i32 %297, i32* %35, align 4
  %298 = load i32, i32* %51, align 4
  %299 = ashr i32 %298, 2
  store i32 %299, i32* %36, align 4
  %300 = load i32, i32* %50, align 4
  %301 = and i32 %300, 3
  %302 = shl i32 %301, 1
  store i32 %302, i32* %39, align 4
  %303 = load i32, i32* %51, align 4
  %304 = and i32 %303, 3
  %305 = shl i32 %304, 1
  store i32 %305, i32* %40, align 4
  %306 = load i32, i32* %39, align 4
  %307 = icmp eq i32 %306, 6
  br i1 %307, label %308, label %312

308:                                              ; preds = %199
  %309 = load i32, i32* %40, align 4
  %310 = icmp eq i32 %309, 6
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 4, i32* %40, align 4
  store i32 4, i32* %39, align 4
  br label %312

312:                                              ; preds = %311, %308, %199
  br label %313

313:                                              ; preds = %312, %74
  %314 = load i64, i64* @HAVE_THREADS, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %355

316:                                              ; preds = %313
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 12
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FF_THREAD_FRAME, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %355

325:                                              ; preds = %316
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %34, align 4
  %331 = add nsw i32 %329, %330
  %332 = add nsw i32 %331, 5
  %333 = load i32, i32* %19, align 4
  %334 = mul nsw i32 8, %333
  %335 = add nsw i32 %332, %334
  %336 = ashr i32 %335, 4
  %337 = add nsw i32 %328, %336
  store i32 %337, i32* %52, align 4
  %338 = load i32, i32* %20, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %325
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 11
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 1
  br label %350

345:                                              ; preds = %325
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 10
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 1
  br label %350

350:                                              ; preds = %345, %340
  %351 = phi i32* [ %344, %340 ], [ %349, %345 ]
  store i32* %351, i32** %53, align 8
  %352 = load i32*, i32** %53, align 8
  %353 = load i32, i32* %52, align 4
  %354 = call i32 @ff_thread_await_progress(i32* %352, i32 %353, i32 0)
  br label %355

355:                                              ; preds = %350, %316, %313
  %356 = load i32, i32* %38, align 4
  %357 = mul nsw i32 %356, 4
  %358 = load i32, i32* %37, align 4
  %359 = add nsw i32 %357, %358
  store i32 %359, i32* %32, align 4
  %360 = load i32, i32* %20, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 11
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = load i32**, i32*** %368, align 8
  %370 = getelementptr inbounds i32*, i32** %369, i64 0
  %371 = load i32*, i32** %370, align 8
  br label %382

372:                                              ; preds = %355
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 10
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 0
  %379 = load i32**, i32*** %378, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i64 0
  %381 = load i32*, i32** %380, align 8
  br label %382

382:                                              ; preds = %372, %362
  %383 = phi i32* [ %371, %362 ], [ %381, %372 ]
  store i32* %383, i32** %29, align 8
  %384 = load i32, i32* %20, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %382
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 11
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  %393 = load i32**, i32*** %392, align 8
  %394 = getelementptr inbounds i32*, i32** %393, i64 1
  %395 = load i32*, i32** %394, align 8
  br label %406

396:                                              ; preds = %382
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 10
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load i32**, i32*** %402, align 8
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  %405 = load i32*, i32** %404, align 8
  br label %406

406:                                              ; preds = %396, %386
  %407 = phi i32* [ %395, %386 ], [ %405, %396 ]
  store i32* %407, i32** %30, align 8
  %408 = load i32, i32* %20, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %406
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 11
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load i32**, i32*** %416, align 8
  %418 = getelementptr inbounds i32*, i32** %417, i64 2
  %419 = load i32*, i32** %418, align 8
  br label %430

420:                                              ; preds = %406
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 10
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 0
  %427 = load i32**, i32*** %426, align 8
  %428 = getelementptr inbounds i32*, i32** %427, i64 2
  %429 = load i32*, i32** %428, align 8
  br label %430

430:                                              ; preds = %420, %410
  %431 = phi i32* [ %419, %410 ], [ %429, %420 ]
  store i32* %431, i32** %31, align 8
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = mul nsw i32 %434, 16
  %436 = load i32, i32* %15, align 4
  %437 = add nsw i32 %435, %436
  %438 = load i32, i32* %33, align 4
  %439 = add nsw i32 %437, %438
  store i32 %439, i32* %41, align 4
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = mul nsw i32 %442, 16
  %444 = load i32, i32* %16, align 4
  %445 = add nsw i32 %443, %444
  %446 = load i32, i32* %34, align 4
  %447 = add nsw i32 %445, %446
  store i32 %447, i32* %42, align 4
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = mul nsw i32 %450, 8
  %452 = load i32, i32* %15, align 4
  %453 = ashr i32 %452, 1
  %454 = add nsw i32 %451, %453
  %455 = load i32, i32* %35, align 4
  %456 = add nsw i32 %454, %455
  store i32 %456, i32* %43, align 4
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = mul nsw i32 %459, 8
  %461 = load i32, i32* %16, align 4
  %462 = ashr i32 %461, 1
  %463 = add nsw i32 %460, %462
  %464 = load i32, i32* %36, align 4
  %465 = add nsw i32 %463, %464
  store i32 %465, i32* %44, align 4
  %466 = load i32, i32* %42, align 4
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = mul nsw i32 %466, %469
  %471 = load i32, i32* %41, align 4
  %472 = add nsw i32 %470, %471
  %473 = load i32*, i32** %29, align 8
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32* %475, i32** %29, align 8
  %476 = load i32, i32* %44, align 4
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = mul nsw i32 %476, %479
  %481 = load i32, i32* %43, align 4
  %482 = add nsw i32 %480, %481
  %483 = load i32*, i32** %30, align 8
  %484 = sext i32 %482 to i64
  %485 = getelementptr inbounds i32, i32* %483, i64 %484
  store i32* %485, i32** %30, align 8
  %486 = load i32, i32* %44, align 4
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 8
  %490 = mul nsw i32 %486, %489
  %491 = load i32, i32* %43, align 4
  %492 = add nsw i32 %490, %491
  %493 = load i32*, i32** %31, align 8
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i32, i32* %493, i64 %494
  store i32* %495, i32** %31, align 8
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 5
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* %18, align 4
  %500 = shl i32 %499, 3
  %501 = sub nsw i32 %498, %500
  %502 = icmp slt i32 %501, 6
  br i1 %502, label %559, label %503

503:                                              ; preds = %430
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 6
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* %19, align 4
  %508 = shl i32 %507, 3
  %509 = sub nsw i32 %506, %508
  %510 = icmp slt i32 %509, 6
  br i1 %510, label %559, label %511

511:                                              ; preds = %503
  %512 = load i32, i32* %41, align 4
  %513 = load i32, i32* %37, align 4
  %514 = icmp ne i32 %513, 0
  %515 = xor i1 %514, true
  %516 = xor i1 %515, true
  %517 = zext i1 %516 to i32
  %518 = mul nsw i32 %517, 2
  %519 = sub nsw i32 %512, %518
  %520 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i32 0, i32 5
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* %37, align 4
  %524 = icmp ne i32 %523, 0
  %525 = xor i1 %524, true
  %526 = xor i1 %525, true
  %527 = zext i1 %526 to i32
  %528 = mul nsw i32 %527, 2
  %529 = sub nsw i32 %522, %528
  %530 = load i32, i32* %18, align 4
  %531 = shl i32 %530, 3
  %532 = sub nsw i32 %529, %531
  %533 = sub nsw i32 %532, 4
  %534 = icmp ugt i32 %519, %533
  br i1 %534, label %559, label %535

535:                                              ; preds = %511
  %536 = load i32, i32* %42, align 4
  %537 = load i32, i32* %38, align 4
  %538 = icmp ne i32 %537, 0
  %539 = xor i1 %538, true
  %540 = xor i1 %539, true
  %541 = zext i1 %540 to i32
  %542 = mul nsw i32 %541, 2
  %543 = sub nsw i32 %536, %542
  %544 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* %38, align 4
  %548 = icmp ne i32 %547, 0
  %549 = xor i1 %548, true
  %550 = xor i1 %549, true
  %551 = zext i1 %550 to i32
  %552 = mul nsw i32 %551, 2
  %553 = sub nsw i32 %546, %552
  %554 = load i32, i32* %19, align 4
  %555 = shl i32 %554, 3
  %556 = sub nsw i32 %553, %555
  %557 = sub nsw i32 %556, 4
  %558 = icmp ugt i32 %543, %557
  br i1 %558, label %559, label %612

559:                                              ; preds = %535, %511, %503, %430
  %560 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 4
  %563 = mul nsw i32 2, %562
  %564 = add nsw i32 2, %563
  %565 = load i32*, i32** %29, align 8
  %566 = sext i32 %564 to i64
  %567 = sub i64 0, %566
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  store i32* %568, i32** %29, align 8
  %569 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %570 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i32 0, i32 7
  %571 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %570, i32 0, i32 0
  %572 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %571, align 8
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 8
  %575 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = load i32*, i32** %29, align 8
  %578 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %579 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %578, i32 0, i32 3
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %582 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %581, i32 0, i32 3
  %583 = load i32, i32* %582, align 4
  %584 = load i32, i32* %18, align 4
  %585 = shl i32 %584, 3
  %586 = add nsw i32 %585, 6
  %587 = load i32, i32* %19, align 4
  %588 = shl i32 %587, 3
  %589 = add nsw i32 %588, 6
  %590 = load i32, i32* %41, align 4
  %591 = sub nsw i32 %590, 2
  %592 = load i32, i32* %42, align 4
  %593 = sub nsw i32 %592, 2
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 5
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 6
  %599 = load i32, i32* %598, align 8
  %600 = call i32 %572(i32* %576, i32* %577, i32 %580, i32 %583, i32 %586, i32 %589, i32 %591, i32 %593, i32 %596, i32 %599)
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 8
  %603 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %602, i32 0, i32 0
  %604 = load i32*, i32** %603, align 8
  %605 = getelementptr inbounds i32, i32* %604, i64 2
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 4
  %609 = mul nsw i32 2, %608
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %605, i64 %610
  store i32* %611, i32** %29, align 8
  store i32 1, i32* %47, align 4
  br label %612

612:                                              ; preds = %559, %535
  %613 = load i32, i32* %22, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %665, label %615

615:                                              ; preds = %612
  %616 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i32 0, i32 9
  %618 = load i32**, i32*** %617, align 8
  %619 = getelementptr inbounds i32*, i32** %618, i64 0
  %620 = load i32*, i32** %619, align 8
  %621 = load i32, i32* %15, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %620, i64 %622
  %624 = load i32, i32* %16, align 4
  %625 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 4
  %628 = mul nsw i32 %624, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i32, i32* %623, i64 %629
  store i32* %630, i32** %26, align 8
  %631 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %632 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %631, i32 0, i32 9
  %633 = load i32**, i32*** %632, align 8
  %634 = getelementptr inbounds i32*, i32** %633, i64 1
  %635 = load i32*, i32** %634, align 8
  %636 = load i32, i32* %15, align 4
  %637 = ashr i32 %636, 1
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %635, i64 %638
  %640 = load i32, i32* %16, align 4
  %641 = ashr i32 %640, 1
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %643 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %642, i32 0, i32 4
  %644 = load i32, i32* %643, align 8
  %645 = mul nsw i32 %641, %644
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i32, i32* %639, i64 %646
  store i32* %647, i32** %27, align 8
  %648 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %649 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %648, i32 0, i32 9
  %650 = load i32**, i32*** %649, align 8
  %651 = getelementptr inbounds i32*, i32** %650, i64 2
  %652 = load i32*, i32** %651, align 8
  %653 = load i32, i32* %15, align 4
  %654 = ashr i32 %653, 1
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %652, i64 %655
  %657 = load i32, i32* %16, align 4
  %658 = ashr i32 %657, 1
  %659 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %660 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %659, i32 0, i32 4
  %661 = load i32, i32* %660, align 8
  %662 = mul nsw i32 %658, %661
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %656, i64 %663
  store i32* %664, i32** %28, align 8
  br label %724

665:                                              ; preds = %612
  %666 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %667 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %666, i32 0, i32 1
  %668 = load i32**, i32*** %667, align 8
  %669 = load i32, i32* %20, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i32*, i32** %668, i64 %670
  %672 = load i32*, i32** %671, align 8
  %673 = load i32, i32* %15, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %672, i64 %674
  %676 = load i32, i32* %16, align 4
  %677 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %678 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %677, i32 0, i32 3
  %679 = load i32, i32* %678, align 4
  %680 = mul nsw i32 %676, %679
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, i32* %675, i64 %681
  store i32* %682, i32** %26, align 8
  %683 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %684 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %683, i32 0, i32 0
  %685 = load i32**, i32*** %684, align 8
  %686 = load i32, i32* %20, align 4
  %687 = mul nsw i32 %686, 2
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32*, i32** %685, i64 %688
  %690 = load i32*, i32** %689, align 8
  %691 = load i32, i32* %15, align 4
  %692 = ashr i32 %691, 1
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i32, i32* %690, i64 %693
  %695 = load i32, i32* %16, align 4
  %696 = ashr i32 %695, 1
  %697 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %698 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %697, i32 0, i32 4
  %699 = load i32, i32* %698, align 8
  %700 = mul nsw i32 %696, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %694, i64 %701
  store i32* %702, i32** %27, align 8
  %703 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %704 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %703, i32 0, i32 0
  %705 = load i32**, i32*** %704, align 8
  %706 = load i32, i32* %20, align 4
  %707 = mul nsw i32 %706, 2
  %708 = add nsw i32 %707, 1
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32*, i32** %705, i64 %709
  %711 = load i32*, i32** %710, align 8
  %712 = load i32, i32* %15, align 4
  %713 = ashr i32 %712, 1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32, i32* %711, i64 %714
  %716 = load i32, i32* %16, align 4
  %717 = ashr i32 %716, 1
  %718 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %719 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %718, i32 0, i32 4
  %720 = load i32, i32* %719, align 8
  %721 = mul nsw i32 %717, %720
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, i32* %715, i64 %722
  store i32* %723, i32** %28, align 8
  br label %724

724:                                              ; preds = %665, %615
  %725 = load i32, i32* %14, align 4
  %726 = load i32, i32* @RV34_MB_P_16x8, align 4
  %727 = icmp eq i32 %725, %726
  br i1 %727, label %728, label %745

728:                                              ; preds = %724
  %729 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %730 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %729, i64 1
  %731 = load i32, i32* %32, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %730, i64 0, i64 %732
  %734 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %733, align 8
  %735 = load i32*, i32** %26, align 8
  %736 = load i32*, i32** %29, align 8
  %737 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %738 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %737, i32 0, i32 3
  %739 = load i32, i32* %738, align 4
  %740 = call i32 %734(i32* %735, i32* %736, i32 %739)
  %741 = load i32*, i32** %26, align 8
  %742 = getelementptr inbounds i32, i32* %741, i64 8
  store i32* %742, i32** %26, align 8
  %743 = load i32*, i32** %29, align 8
  %744 = getelementptr inbounds i32, i32* %743, i64 8
  store i32* %744, i32** %29, align 8
  br label %777

745:                                              ; preds = %724
  %746 = load i32, i32* %14, align 4
  %747 = load i32, i32* @RV34_MB_P_8x16, align 4
  %748 = icmp eq i32 %746, %747
  br i1 %748, label %749, label %776

749:                                              ; preds = %745
  %750 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %751 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %750, i64 1
  %752 = load i32, i32* %32, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %751, i64 0, i64 %753
  %755 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %754, align 8
  %756 = load i32*, i32** %26, align 8
  %757 = load i32*, i32** %29, align 8
  %758 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 3
  %760 = load i32, i32* %759, align 4
  %761 = call i32 %755(i32* %756, i32* %757, i32 %760)
  %762 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %763 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %762, i32 0, i32 3
  %764 = load i32, i32* %763, align 4
  %765 = mul nsw i32 8, %764
  %766 = load i32*, i32** %26, align 8
  %767 = sext i32 %765 to i64
  %768 = getelementptr inbounds i32, i32* %766, i64 %767
  store i32* %768, i32** %26, align 8
  %769 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %770 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %769, i32 0, i32 3
  %771 = load i32, i32* %770, align 4
  %772 = mul nsw i32 8, %771
  %773 = load i32*, i32** %29, align 8
  %774 = sext i32 %772 to i64
  %775 = getelementptr inbounds i32, i32* %773, i64 %774
  store i32* %775, i32** %29, align 8
  br label %776

776:                                              ; preds = %749, %745
  br label %777

777:                                              ; preds = %776, %728
  %778 = load i32, i32* %14, align 4
  %779 = load i32, i32* @RV34_MB_P_8x8, align 4
  %780 = icmp ne i32 %778, %779
  br i1 %780, label %781, label %789

781:                                              ; preds = %777
  %782 = load i32, i32* %14, align 4
  %783 = load i32, i32* @RV34_MB_P_16x8, align 4
  %784 = icmp ne i32 %782, %783
  br i1 %784, label %785, label %789

785:                                              ; preds = %781
  %786 = load i32, i32* %14, align 4
  %787 = load i32, i32* @RV34_MB_P_8x16, align 4
  %788 = icmp ne i32 %786, %787
  br label %789

789:                                              ; preds = %785, %781, %777
  %790 = phi i1 [ false, %781 ], [ false, %777 ], [ %788, %785 ]
  %791 = zext i1 %790 to i32
  store i32 %791, i32* %46, align 4
  %792 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %793 = load i32, i32* %46, align 4
  %794 = icmp ne i32 %793, 0
  %795 = xor i1 %794, true
  %796 = zext i1 %795 to i32
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %792, i64 %797
  %799 = load i32, i32* %32, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %798, i64 0, i64 %800
  %802 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %801, align 8
  %803 = load i32*, i32** %26, align 8
  %804 = load i32*, i32** %29, align 8
  %805 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %806 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %805, i32 0, i32 3
  %807 = load i32, i32* %806, align 4
  %808 = call i32 %802(i32* %803, i32* %804, i32 %807)
  %809 = load i32, i32* %47, align 4
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %883

811:                                              ; preds = %789
  %812 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %813 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %812, i32 0, i32 8
  %814 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %813, i32 0, i32 0
  %815 = load i32*, i32** %814, align 8
  store i32* %815, i32** %54, align 8
  %816 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %817 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %816, i32 0, i32 7
  %818 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %817, i32 0, i32 0
  %819 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %818, align 8
  %820 = load i32*, i32** %54, align 8
  %821 = load i32*, i32** %30, align 8
  %822 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %823 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %822, i32 0, i32 4
  %824 = load i32, i32* %823, align 8
  %825 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %826 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %825, i32 0, i32 4
  %827 = load i32, i32* %826, align 8
  %828 = load i32, i32* %18, align 4
  %829 = shl i32 %828, 2
  %830 = add nsw i32 %829, 1
  %831 = load i32, i32* %19, align 4
  %832 = shl i32 %831, 2
  %833 = add nsw i32 %832, 1
  %834 = load i32, i32* %43, align 4
  %835 = load i32, i32* %44, align 4
  %836 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %837 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %836, i32 0, i32 5
  %838 = load i32, i32* %837, align 4
  %839 = ashr i32 %838, 1
  %840 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %841 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %840, i32 0, i32 6
  %842 = load i32, i32* %841, align 8
  %843 = ashr i32 %842, 1
  %844 = call i32 %819(i32* %820, i32* %821, i32 %824, i32 %827, i32 %830, i32 %833, i32 %834, i32 %835, i32 %839, i32 %843)
  %845 = load i32*, i32** %54, align 8
  store i32* %845, i32** %30, align 8
  %846 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %847 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %846, i32 0, i32 4
  %848 = load i32, i32* %847, align 8
  %849 = mul nsw i32 9, %848
  %850 = load i32*, i32** %54, align 8
  %851 = sext i32 %849 to i64
  %852 = getelementptr inbounds i32, i32* %850, i64 %851
  store i32* %852, i32** %54, align 8
  %853 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %854 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %853, i32 0, i32 7
  %855 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %854, i32 0, i32 0
  %856 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %855, align 8
  %857 = load i32*, i32** %54, align 8
  %858 = load i32*, i32** %31, align 8
  %859 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %860 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %859, i32 0, i32 4
  %861 = load i32, i32* %860, align 8
  %862 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %863 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %862, i32 0, i32 4
  %864 = load i32, i32* %863, align 8
  %865 = load i32, i32* %18, align 4
  %866 = shl i32 %865, 2
  %867 = add nsw i32 %866, 1
  %868 = load i32, i32* %19, align 4
  %869 = shl i32 %868, 2
  %870 = add nsw i32 %869, 1
  %871 = load i32, i32* %43, align 4
  %872 = load i32, i32* %44, align 4
  %873 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %874 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %873, i32 0, i32 5
  %875 = load i32, i32* %874, align 4
  %876 = ashr i32 %875, 1
  %877 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %878 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %877, i32 0, i32 6
  %879 = load i32, i32* %878, align 8
  %880 = ashr i32 %879, 1
  %881 = call i32 %856(i32* %857, i32* %858, i32 %861, i32 %864, i32 %867, i32 %870, i32 %871, i32 %872, i32 %876, i32 %880)
  %882 = load i32*, i32** %54, align 8
  store i32* %882, i32** %31, align 8
  br label %883

883:                                              ; preds = %811, %789
  %884 = load i32 (i32*, i32*, i32, i32, i32, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*** %24, align 8
  %885 = load i32, i32* %18, align 4
  %886 = sub nsw i32 2, %885
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %884, i64 %887
  %889 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %888, align 8
  %890 = load i32*, i32** %27, align 8
  %891 = load i32*, i32** %30, align 8
  %892 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %893 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %892, i32 0, i32 4
  %894 = load i32, i32* %893, align 8
  %895 = load i32, i32* %19, align 4
  %896 = mul nsw i32 %895, 4
  %897 = load i32, i32* %39, align 4
  %898 = load i32, i32* %40, align 4
  %899 = call i32 %889(i32* %890, i32* %891, i32 %894, i32 %896, i32 %897, i32 %898)
  %900 = load i32 (i32*, i32*, i32, i32, i32, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*** %24, align 8
  %901 = load i32, i32* %18, align 4
  %902 = sub nsw i32 2, %901
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %900, i64 %903
  %905 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %904, align 8
  %906 = load i32*, i32** %28, align 8
  %907 = load i32*, i32** %31, align 8
  %908 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %909 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %908, i32 0, i32 4
  %910 = load i32, i32* %909, align 8
  %911 = load i32, i32* %19, align 4
  %912 = mul nsw i32 %911, 4
  %913 = load i32, i32* %39, align 4
  %914 = load i32, i32* %40, align 4
  %915 = call i32 %905(i32* %906, i32* %907, i32 %910, i32 %912, i32 %913, i32 %914)
  ret void
}

declare dso_local i32 @ff_thread_await_progress(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
