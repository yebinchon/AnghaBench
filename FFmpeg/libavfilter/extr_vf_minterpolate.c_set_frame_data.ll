; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_set_frame_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_set_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32**, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_16__ = type { i32, i32, i32**, i32* }

@ALPHA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_16__*)* @set_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frame_data(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %356, %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %359

28:                                               ; preds = %22
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 2
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i1 [ true, %28 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %352, %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %355

47:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %348, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %351

52:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %63
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %18, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %68, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %75
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %19, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = add nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %87
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %20, align 8
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %105, %52
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %89

108:                                              ; preds = %89
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %164, label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @ALPHA_MAX, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 1, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 0, i32* %133, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 2, i32* %148, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 0, i32* %154, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 0, i32* %160, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 2, i32* %162, align 8
  %163 = load i32, i32* @ALPHA_MAX, align 4
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %116, %111
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %286, %164
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %289

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %182
  store %struct.TYPE_15__* %183, %struct.TYPE_15__** %21, align 8
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %227

186:                                              ; preds = %171
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %187, %190
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 1, %203
  %205 = sdiv i32 %200, %204
  %206 = add nsw i32 %191, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = ashr i32 %207, %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32**, i32*** %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = shl i32 1, %223
  %225 = sdiv i32 %220, %224
  %226 = add nsw i32 %211, %225
  store i32 %226, i32* %14, align 4
  br label %250

227:                                              ; preds = %171
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %228, %237
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32**, i32*** %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %239, %248
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %227, %186
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 %268, %277
  %279 = add nsw i32 %267, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %266, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = mul nsw i32 %257, %282
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %17, align 4
  br label %286

286:                                              ; preds = %250
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %16, align 4
  br label %165

289:                                              ; preds = %165
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %15, align 4
  %292 = call i32 @ROUNDED_DIV(i32 %290, i32 %291)
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %325

295:                                              ; preds = %289
  %296 = load i32, i32* %17, align 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 2
  %299 = load i32**, i32*** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = ashr i32 %304, %307
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = ashr i32 %309, %312
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = mul nsw i32 %313, %320
  %322 = add nsw i32 %308, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %303, i64 %323
  store i32 %296, i32* %324, align 4
  br label %347

325:                                              ; preds = %289
  %326 = load i32, i32* %17, align 4
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 2
  %329 = load i32**, i32*** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* %8, align 4
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 3
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %335, %342
  %344 = add nsw i32 %334, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %333, i64 %345
  store i32 %326, i32* %346, align 4
  br label %347

347:                                              ; preds = %325, %295
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %48

351:                                              ; preds = %48
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %8, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %8, align 4
  br label %43

355:                                              ; preds = %43
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %22

359:                                              ; preds = %22
  ret void
}

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
