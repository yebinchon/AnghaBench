; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_sb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, %struct.TYPE_14__, i32, %struct.TYPE_22__* }
%struct.TYPE_14__ = type { i32*** }
%struct.TYPE_22__ = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*** }

@ff_vp9_default_kf_partition_probs = common dso_local global i32*** null, align 8
@CUR_FRAME = common dso_local global i64 0, align 8
@BL_8X8 = common dso_local global i32 0, align 4
@ff_vp9_partition_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, i32*, i32, i32, i32)* @decode_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_sb(%struct.TYPE_21__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %15, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sub i32 3, %34
  %36 = ashr i32 %33, %35
  %37 = and i32 %36, 1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub i32 3, %46
  %48 = ashr i32 %45, %47
  %49 = and i32 %48, 1
  %50 = shl i32 %49, 1
  %51 = or i32 %37, %50
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %7
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58, %7
  %66 = load i32***, i32**** @ff_vp9_default_kf_partition_probs, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32**, i32*** %66, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  br label %89

75:                                               ; preds = %58
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32***, i32**** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32**, i32*** %80, i64 %82
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  br label %89

89:                                               ; preds = %75, %65
  %90 = phi i32* [ %74, %65 ], [ %88, %75 ]
  store i32* %90, i32** %17, align 8
  %91 = load i32, i32* %14, align 4
  %92 = ashr i32 4, %91
  store i32 %92, i32* %19, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load i64, i64* @CUR_FRAME, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %20, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %22, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @BL_8X8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %89
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ff_vp9_partition_tree, align 4
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @vp8_rac_get_tree(i32 %121, i32 %122, i32* %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %125, i32 %126, i32 %127, i32* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  br label %458

134:                                              ; preds = %89
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %384

142:                                              ; preds = %134
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %330

150:                                              ; preds = %142
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ff_vp9_partition_tree, align 4
  %155 = load i32*, i32** %17, align 8
  %156 = call i32 @vp8_rac_get_tree(i32 %153, i32 %154, i32* %155)
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  switch i32 %157, label %327 [
    i32 130, label %158
    i32 131, label %168
    i32 128, label %205
    i32 129, label %242
  ]

158:                                              ; preds = %150
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %159, i32 %160, i32 %161, i32* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %329

168:                                              ; preds = %150
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %169, i32 %170, i32 %171, i32* %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %19, align 4
  %179 = mul nsw i32 %178, 8
  %180 = load i32, i32* %21, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %19, align 4
  %185 = mul nsw i32 %184, 8
  %186 = load i32, i32* %22, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %187, %190
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %13, align 4
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %10, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %194, i32 %197, i32 %198, i32* %199, i32 %200, i32 %201, i32 %202, i32 %203)
  br label %329

205:                                              ; preds = %150
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %206, i32 %207, i32 %208, i32* %209, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %19, align 4
  %216 = mul nsw i32 %215, 8
  %217 = load i32, i32* %23, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %19, align 4
  %222 = mul nsw i32 %221, 8
  %223 = load i32, i32* %23, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = ashr i32 %224, %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %13, align 4
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32*, i32** %11, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %231, i32 %232, i32 %235, i32* %236, i32 %237, i32 %238, i32 %239, i32 %240)
  br label %329

242:                                              ; preds = %150
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32*, i32** %11, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* %14, align 4
  %250 = add i32 %249, 1
  call void @decode_sb(%struct.TYPE_21__* %243, i32 %244, i32 %245, i32* %246, i32 %247, i32 %248, i32 %250)
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %253, %254
  %256 = load i32*, i32** %11, align 8
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %19, align 4
  %259 = mul nsw i32 8, %258
  %260 = load i32, i32* %23, align 4
  %261 = mul nsw i32 %259, %260
  %262 = add nsw i32 %257, %261
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %19, align 4
  %265 = mul nsw i32 8, %264
  %266 = load i32, i32* %23, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = ashr i32 %267, %270
  %272 = add nsw i32 %263, %271
  %273 = load i32, i32* %14, align 4
  %274 = add i32 %273, 1
  call void @decode_sb(%struct.TYPE_21__* %251, i32 %252, i32 %255, i32* %256, i32 %262, i32 %272, i32 %274)
  %275 = load i32, i32* %19, align 4
  %276 = mul nsw i32 %275, 8
  %277 = load i32, i32* %21, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %19, align 4
  %282 = mul nsw i32 %281, 8
  %283 = load i32, i32* %22, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = ashr i32 %284, %287
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %13, align 4
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32, i32* %10, align 4
  %296 = load i32*, i32** %11, align 8
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %14, align 4
  %300 = add i32 %299, 1
  call void @decode_sb(%struct.TYPE_21__* %291, i32 %294, i32 %295, i32* %296, i32 %297, i32 %298, i32 %300)
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* %19, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %19, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* %19, align 4
  %311 = mul nsw i32 8, %310
  %312 = load i32, i32* %23, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %309, %313
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %19, align 4
  %317 = mul nsw i32 8, %316
  %318 = load i32, i32* %23, align 4
  %319 = mul nsw i32 %317, %318
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 8
  %323 = ashr i32 %319, %322
  %324 = add nsw i32 %315, %323
  %325 = load i32, i32* %14, align 4
  %326 = add i32 %325, 1
  call void @decode_sb(%struct.TYPE_21__* %301, i32 %304, i32 %307, i32* %308, i32 %314, i32 %324, i32 %326)
  br label %329

327:                                              ; preds = %150
  %328 = call i32 @av_assert0(i32 0)
  br label %329

329:                                              ; preds = %327, %242, %205, %168, %158
  br label %383

330:                                              ; preds = %142
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load i32*, i32** %17, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @vp56_rac_get_prob_branchy(i32 %333, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %372

339:                                              ; preds = %330
  store i32 129, i32* %18, align 4
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %10, align 4
  %343 = load i32*, i32** %11, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %13, align 4
  %346 = load i32, i32* %14, align 4
  %347 = add i32 %346, 1
  call void @decode_sb(%struct.TYPE_21__* %340, i32 %341, i32 %342, i32* %343, i32 %344, i32 %345, i32 %347)
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %19, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32*, i32** %11, align 8
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* %19, align 4
  %356 = mul nsw i32 8, %355
  %357 = load i32, i32* %23, align 4
  %358 = mul nsw i32 %356, %357
  %359 = add nsw i32 %354, %358
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* %19, align 4
  %362 = mul nsw i32 8, %361
  %363 = load i32, i32* %23, align 4
  %364 = mul nsw i32 %362, %363
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = ashr i32 %364, %367
  %369 = add nsw i32 %360, %368
  %370 = load i32, i32* %14, align 4
  %371 = add i32 %370, 1
  call void @decode_sb(%struct.TYPE_21__* %348, i32 %349, i32 %352, i32* %353, i32 %359, i32 %369, i32 %371)
  br label %382

372:                                              ; preds = %330
  store i32 131, i32* %18, align 4
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load i32*, i32** %11, align 8
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* %14, align 4
  %380 = load i32, i32* %18, align 4
  %381 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %373, i32 %374, i32 %375, i32* %376, i32 %377, i32 %378, i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %372, %339
  br label %383

383:                                              ; preds = %382, %329
  br label %457

384:                                              ; preds = %134
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %19, align 4
  %387 = add nsw i32 %385, %386
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %447

392:                                              ; preds = %384
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load i32*, i32** %17, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 2
  %398 = load i32, i32* %397, align 4
  %399 = call i64 @vp56_rac_get_prob_branchy(i32 %395, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %436

401:                                              ; preds = %392
  store i32 129, i32* %18, align 4
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %10, align 4
  %405 = load i32*, i32** %11, align 8
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* %14, align 4
  %409 = add i32 %408, 1
  call void @decode_sb(%struct.TYPE_21__* %402, i32 %403, i32 %404, i32* %405, i32 %406, i32 %407, i32 %409)
  %410 = load i32, i32* %19, align 4
  %411 = mul nsw i32 %410, 8
  %412 = load i32, i32* %21, align 4
  %413 = mul nsw i32 %411, %412
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %12, align 4
  %416 = load i32, i32* %19, align 4
  %417 = mul nsw i32 %416, 8
  %418 = load i32, i32* %22, align 4
  %419 = mul nsw i32 %417, %418
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 4
  %423 = ashr i32 %419, %422
  %424 = load i32, i32* %13, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %13, align 4
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %427 = load i32, i32* %9, align 4
  %428 = load i32, i32* %19, align 4
  %429 = add nsw i32 %427, %428
  %430 = load i32, i32* %10, align 4
  %431 = load i32*, i32** %11, align 8
  %432 = load i32, i32* %12, align 4
  %433 = load i32, i32* %13, align 4
  %434 = load i32, i32* %14, align 4
  %435 = add i32 %434, 1
  call void @decode_sb(%struct.TYPE_21__* %426, i32 %429, i32 %430, i32* %431, i32 %432, i32 %433, i32 %435)
  br label %446

436:                                              ; preds = %392
  store i32 128, i32* %18, align 4
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %438 = load i32, i32* %9, align 4
  %439 = load i32, i32* %10, align 4
  %440 = load i32*, i32** %11, align 8
  %441 = load i32, i32* %12, align 4
  %442 = load i32, i32* %13, align 4
  %443 = load i32, i32* %14, align 4
  %444 = load i32, i32* %18, align 4
  %445 = call i32 @ff_vp9_decode_block(%struct.TYPE_21__* %437, i32 %438, i32 %439, i32* %440, i32 %441, i32 %442, i32 %443, i32 %444)
  br label %446

446:                                              ; preds = %436, %401
  br label %456

447:                                              ; preds = %384
  store i32 129, i32* %18, align 4
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %449 = load i32, i32* %9, align 4
  %450 = load i32, i32* %10, align 4
  %451 = load i32*, i32** %11, align 8
  %452 = load i32, i32* %12, align 4
  %453 = load i32, i32* %13, align 4
  %454 = load i32, i32* %14, align 4
  %455 = add i32 %454, 1
  call void @decode_sb(%struct.TYPE_21__* %448, i32 %449, i32 %450, i32* %451, i32 %452, i32 %453, i32 %455)
  br label %456

456:                                              ; preds = %447, %446
  br label %457

457:                                              ; preds = %456, %383
  br label %458

458:                                              ; preds = %457, %118
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 0
  %462 = load i32***, i32**** %461, align 8
  %463 = load i32, i32* %14, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds i32**, i32*** %462, i64 %464
  %466 = load i32**, i32*** %465, align 8
  %467 = load i32, i32* %16, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32*, i32** %466, i64 %468
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %18, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %473, align 4
  ret void
}

declare dso_local i32 @vp8_rac_get_tree(i32, i32, i32*) #1

declare dso_local i32 @ff_vp9_decode_block(%struct.TYPE_21__*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
