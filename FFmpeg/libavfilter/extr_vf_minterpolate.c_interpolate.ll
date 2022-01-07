; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_interpolate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_21__, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_24__*, %struct.TYPE_27__** }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32**, i32*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32**, i32*, i32 }

@ALPHA_MAX = common dso_local global i32 0, align 4
@ME_MODE_BIDIR = common dso_local global i32 0, align 4
@ME_MODE_BILAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %5, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %23, i64 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %6, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %7, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ALPHA_MAX, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %32, %36
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %46, %50
  %52 = call i32 @av_rescale(i32 %31, i32 %42, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ALPHA_MAX, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %53, %63
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %72, %80
  %82 = sdiv i32 %64, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @ALPHA_MAX, align 4
  %85 = call i32 @av_clip(i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %2
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @ALPHA_MAX, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88, %2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i64 2
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  br label %110

103:                                              ; preds = %92
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  br label %110

110:                                              ; preds = %103, %96
  %111 = phi %struct.TYPE_20__* [ %102, %96 ], [ %109, %103 ]
  %112 = call i32 @av_frame_copy(%struct.TYPE_26__* %93, %struct.TYPE_20__* %111)
  br label %452

113:                                              ; preds = %88
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 11
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @ALPHA_MAX, align 4
  %122 = sdiv i32 %121, 2
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i64 2
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  br label %138

131:                                              ; preds = %118
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi %struct.TYPE_20__* [ %130, %124 ], [ %137, %131 ]
  %140 = call i32 @av_frame_copy(%struct.TYPE_26__* %119, %struct.TYPE_20__* %139)
  br label %452

141:                                              ; preds = %113
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %452 [
    i32 129, label %145
    i32 130, label %168
    i32 128, label %312
  ]

145:                                              ; preds = %141
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @ALPHA_MAX, align 4
  %149 = sdiv i32 %148, 2
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i64 2
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  br label %165

158:                                              ; preds = %145
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  br label %165

165:                                              ; preds = %158, %151
  %166 = phi %struct.TYPE_20__* [ %157, %151 ], [ %164, %158 ]
  %167 = call i32 @av_frame_copy(%struct.TYPE_26__* %146, %struct.TYPE_20__* %166)
  br label %452

168:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %308, %168
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %311

175:                                              ; preds = %169
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %13, align 4
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %187, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %198

187:                                              ; preds = %184, %175
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @AV_CEIL_RSHIFT(i32 %188, i32 %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @AV_CEIL_RSHIFT(i32 %193, i32 %196)
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %187, %184
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %304, %198
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %307

203:                                              ; preds = %199
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %300, %203
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %303

208:                                              ; preds = %204
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i64 2
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 1
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 6
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i64 2
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %223, %235
  %237 = add nsw i32 %222, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %221, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %209, %240
  %242 = load i32, i32* @ALPHA_MAX, align 4
  %243 = load i32, i32* %11, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 6
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i64 1
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 %258, %270
  %272 = add nsw i32 %257, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %256, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %244, %275
  %277 = add nsw i32 %241, %276
  %278 = add nsw i32 %277, 512
  %279 = ashr i32 %278, 10
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 2
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %9, align 4
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = mul nsw i32 %288, %295
  %297 = add nsw i32 %287, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %286, i64 %298
  store i32 %279, i32* %299, align 4
  br label %300

300:                                              ; preds = %208
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %204

303:                                              ; preds = %204
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %9, align 4
  br label %199

307:                                              ; preds = %199
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %10, align 4
  br label %169

311:                                              ; preds = %169
  br label %452

312:                                              ; preds = %141
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @ME_MODE_BIDIR, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %312
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %320 = load i32, i32* %11, align 4
  %321 = call i32 @bidirectional_obmc(%struct.TYPE_24__* %319, i32 %320)
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %323 = load i32, i32* %11, align 4
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %325 = call i32 @set_frame_data(%struct.TYPE_24__* %322, i32 %323, %struct.TYPE_26__* %324)
  br label %451

326:                                              ; preds = %312
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @ME_MODE_BILAT, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %450

332:                                              ; preds = %326
  store i32 0, i32* %9, align 4
  br label %333

333:                                              ; preds = %379, %332
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 6
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %334, %342
  br i1 %343, label %344, label %382

344:                                              ; preds = %333
  store i32 0, i32* %8, align 4
  br label %345

345:                                              ; preds = %375, %344
  %346 = load i32, i32* %8, align 4
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i64 0
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %346, %354
  br i1 %355, label %356, label %378

356:                                              ; preds = %345
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 7
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 6
  %364 = load %struct.TYPE_23__*, %struct.TYPE_23__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i64 0
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = mul nsw i32 %361, %369
  %371 = add nsw i32 %360, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  store i32 0, i32* %374, align 4
  br label %375

375:                                              ; preds = %356
  %376 = load i32, i32* %8, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %8, align 4
  br label %345

378:                                              ; preds = %345
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %9, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %9, align 4
  br label %333

382:                                              ; preds = %333
  store i32 0, i32* %16, align 4
  br label %383

383:                                              ; preds = %442, %382
  %384 = load i32, i32* %16, align 4
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %445

389:                                              ; preds = %383
  store i32 0, i32* %15, align 4
  br label %390

390:                                              ; preds = %438, %389
  %391 = load i32, i32* %15, align 4
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = icmp slt i32 %391, %394
  br i1 %395, label %396, label %441

396:                                              ; preds = %390
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 5
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %398, align 8
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* %16, align 4
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = mul nsw i32 %401, %404
  %406 = add nsw i32 %400, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %399, i64 %407
  store %struct.TYPE_25__* %408, %struct.TYPE_25__** %17, align 8
  %409 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %431

413:                                              ; preds = %396
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %415 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %416 = load i32, i32* %15, align 4
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = shl i32 %416, %419
  %421 = load i32, i32* %16, align 4
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = shl i32 %421, %424
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %11, align 4
  %430 = call i32 @var_size_bmc(%struct.TYPE_24__* %414, %struct.TYPE_25__* %415, i32 %420, i32 %425, i32 %428, i32 %429)
  br label %431

431:                                              ; preds = %413, %396
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %434 = load i32, i32* %15, align 4
  %435 = load i32, i32* %16, align 4
  %436 = load i32, i32* %11, align 4
  %437 = call i32 @bilateral_obmc(%struct.TYPE_24__* %432, %struct.TYPE_25__* %433, i32 %434, i32 %435, i32 %436)
  br label %438

438:                                              ; preds = %431
  %439 = load i32, i32* %15, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %15, align 4
  br label %390

441:                                              ; preds = %390
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %16, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %16, align 4
  br label %383

445:                                              ; preds = %383
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %447 = load i32, i32* %11, align 4
  %448 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %449 = call i32 @set_frame_data(%struct.TYPE_24__* %446, i32 %447, %struct.TYPE_26__* %448)
  br label %450

450:                                              ; preds = %445, %326
  br label %451

451:                                              ; preds = %450, %318
  br label %452

452:                                              ; preds = %110, %138, %141, %451, %311, %165
  ret void
}

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_26__*, %struct.TYPE_20__*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @bidirectional_obmc(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @set_frame_data(%struct.TYPE_24__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @var_size_bmc(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @bilateral_obmc(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
