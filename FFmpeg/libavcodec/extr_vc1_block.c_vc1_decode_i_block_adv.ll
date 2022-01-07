; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_block_adv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_block_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64*, i64**, i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, i32***, i64*, i32*, i32*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@ff_msmp4_dc_luma_vlc = common dso_local global %struct.TYPE_12__* null, align 8
@DC_VLC_BITS = common dso_local global i32 0, align 4
@ff_msmp4_dc_chroma_vlc = common dso_local global %struct.TYPE_13__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Illegal DC VLC\0A\00", align 1
@ILACE_FRAME = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_vc1_dqscale = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32, i32, i32)* @vc1_decode_i_block_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_i_block_adv(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
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
  %34 = alloca i64*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 13
  store i32* %42, i32** %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 9
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %18, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %22, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %23, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %24, align 4
  store i32 0, i32* %27, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = add nsw i32 %56, %63
  store i32 %64, i32* %28, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @FFABS(i32 %65)
  store i32 %66, i32* %29, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %81

69:                                               ; preds = %6
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 13
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ff_msmp4_dc_luma_vlc, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DC_VLC_BITS, align 4
  %80 = call i32 @get_vlc2(i32* %71, i32 %78, i32 %79, i32 3)
  store i32 %80, i32* %21, align 4
  br label %93

81:                                               ; preds = %6
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 13
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ff_msmp4_dc_chroma_vlc, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DC_VLC_BITS, align 4
  %92 = call i32 @get_vlc2(i32* %83, i32 %90, i32 %91, i32 3)
  store i32 %92, i32* %21, align 4
  br label %93

93:                                               ; preds = %81, %69
  %94 = load i32, i32* %21, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(i32 %99, i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %761

102:                                              ; preds = %93
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %102
  %106 = load i32, i32* %29, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %29, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %114

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %29, align 4
  %113 = sub nsw i32 3, %112
  br label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i32 [ %113, %111 ], [ 0, %114 ]
  store i32 %116, i32* %30, align 4
  %117 = load i32, i32* %21, align 4
  %118 = icmp eq i32 %117, 119
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %30, align 4
  %122 = add nsw i32 8, %121
  %123 = call i32 @get_bits(i32* %120, i32 %122)
  store i32 %123, i32* %21, align 4
  br label %140

124:                                              ; preds = %115
  %125 = load i32, i32* %30, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %30, align 4
  %130 = shl i32 %128, %129
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %30, align 4
  %133 = call i32 @get_bits(i32* %131, i32 %132)
  %134 = add nsw i32 %130, %133
  %135 = load i32, i32* %30, align 4
  %136 = shl i32 1, %135
  %137 = sub nsw i32 %136, 1
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %21, align 4
  br label %139

139:                                              ; preds = %127, %124
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32*, i32** %14, align 8
  %142 = call i64 @get_bits1(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %21, align 4
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147, %102
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 9
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %29, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @ff_vc1_pred_dc(%struct.TYPE_11__* %150, i32 %153, i32 %154, i32 %155, i32 %158, i32 %161, i32** %18, i32* %16)
  %163 = load i32, i32* %21, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32*, i32** %18, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %175

171:                                              ; preds = %148
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %25, align 4
  br label %179

175:                                              ; preds = %148
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %25, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %25, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %22, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %179
  %188 = load i32, i32* %23, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  store i32 0, i32* %24, align 4
  br label %191

191:                                              ; preds = %190, %187, %179
  %192 = load i32, i32* %29, align 4
  %193 = mul nsw i32 %192, 2
  %194 = load i32, i32* %13, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %201

197:                                              ; preds = %191
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  br label %201

201:                                              ; preds = %197, %196
  %202 = phi i32 [ 0, %196 ], [ %200, %197 ]
  %203 = add nsw i32 %193, %202
  store i32 %203, i32* %25, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 7
  %206 = load i32***, i32**** %205, align 8
  %207 = getelementptr inbounds i32**, i32*** %206, i64 0
  %208 = load i32**, i32*** %207, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 8
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i32*, i32** %208, i64 %215
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %19, align 8
  %218 = load i32*, i32** %19, align 8
  store i32* %218, i32** %20, align 8
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %201
  %222 = load i32*, i32** %19, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 -16
  store i32* %223, i32** %19, align 8
  br label %237

224:                                              ; preds = %201
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 9
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 16, %231
  %233 = load i32*, i32** %19, align 8
  %234 = sext i32 %232 to i64
  %235 = sub i64 0, %234
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32* %236, i32** %19, align 8
  br label %237

237:                                              ; preds = %224, %221
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 11
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %28, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %26, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 3
  br i1 %247, label %248, label %250

248:                                              ; preds = %237
  %249 = load i32, i32* %26, align 4
  store i32 %249, i32* %27, align 4
  br label %306

250:                                              ; preds = %237
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %250
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* %26, align 4
  store i32 %257, i32* %27, align 4
  br label %275

258:                                              ; preds = %253
  %259 = load i32, i32* %23, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %258
  %262 = load i32, i32* %28, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 11
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %28, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %27, align 4
  br label %274

274:                                              ; preds = %264, %261, %258
  br label %275

275:                                              ; preds = %274, %256
  br label %305

276:                                              ; preds = %250
  %277 = load i32, i32* %10, align 4
  %278 = icmp eq i32 %277, 2
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32, i32* %26, align 4
  store i32 %280, i32* %27, align 4
  br label %304

281:                                              ; preds = %276
  %282 = load i32, i32* %22, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %303

284:                                              ; preds = %281
  %285 = load i32, i32* %28, align 4
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = icmp sge i32 %285, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %284
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 11
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %28, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %295, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %294, i64 %300
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %27, align 4
  br label %303

303:                                              ; preds = %290, %284, %281
  br label %304

304:                                              ; preds = %303, %279
  br label %305

305:                                              ; preds = %304, %275
  br label %306

306:                                              ; preds = %305, %248
  store i32 1, i32* %17, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %592

309:                                              ; preds = %306
  store i32 0, i32* %31, align 4
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 9
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %345

315:                                              ; preds = %309
  %316 = load i32, i32* %24, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %328, label %318

318:                                              ; preds = %315
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @ILACE_FRAME, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %318
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 4
  %327 = load i64*, i64** %326, align 8
  store i64* %327, i64** %34, align 8
  br label %344

328:                                              ; preds = %318, %315
  %329 = load i32, i32* %16, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %328
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 5
  %334 = load i64**, i64*** %333, align 8
  %335 = getelementptr inbounds i64*, i64** %334, i64 2
  %336 = load i64*, i64** %335, align 8
  store i64* %336, i64** %34, align 8
  br label %343

337:                                              ; preds = %328
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 5
  %340 = load i64**, i64*** %339, align 8
  %341 = getelementptr inbounds i64*, i64** %340, i64 3
  %342 = load i64*, i64** %341, align 8
  store i64* %342, i64** %34, align 8
  br label %343

343:                                              ; preds = %337, %331
  br label %344

344:                                              ; preds = %343, %324
  br label %362

345:                                              ; preds = %309
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @ILACE_FRAME, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %357

351:                                              ; preds = %345
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 5
  %354 = load i64**, i64*** %353, align 8
  %355 = getelementptr inbounds i64*, i64** %354, i64 1
  %356 = load i64*, i64** %355, align 8
  store i64* %356, i64** %34, align 8
  br label %361

357:                                              ; preds = %345
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 4
  %360 = load i64*, i64** %359, align 8
  store i64* %360, i64** %34, align 8
  br label %361

361:                                              ; preds = %357, %351
  br label %362

362:                                              ; preds = %361, %344
  br label %363

363:                                              ; preds = %382, %362
  %364 = load i32, i32* %31, align 4
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  br i1 %366, label %367, label %392

367:                                              ; preds = %363
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_10__* %368, i32* %31, i32* %32, i32* %33, i32 %369)
  store i32 %370, i32* %36, align 4
  %371 = load i32, i32* %36, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = load i32, i32* %36, align 4
  store i32 %374, i32* %7, align 4
  br label %761

375:                                              ; preds = %367
  %376 = load i32, i32* %32, align 4
  %377 = load i32, i32* %17, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %17, align 4
  %380 = icmp sgt i32 %379, 63
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  br label %392

382:                                              ; preds = %375
  %383 = load i32, i32* %33, align 4
  %384 = load i32*, i32** %9, align 8
  %385 = load i64*, i64** %34, align 8
  %386 = load i32, i32* %17, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %17, align 4
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds i64, i64* %385, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds i32, i32* %384, i64 %390
  store i32 %383, i32* %391, align 4
  br label %363

392:                                              ; preds = %381, %363
  %393 = load i32, i32* %24, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %508

395:                                              ; preds = %392
  %396 = load i32, i32* %16, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %37, align 4
  br label %408

402:                                              ; preds = %395
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 7
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %37, align 4
  %406 = load i32*, i32** %19, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 8
  store i32* %407, i32** %19, align 8
  br label %408

408:                                              ; preds = %402, %398
  %409 = load i32, i32* %26, align 4
  %410 = call i32 @FFABS(i32 %409)
  %411 = mul nsw i32 %410, 2
  %412 = load i32, i32* %26, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  br label %419

415:                                              ; preds = %408
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  br label %419

419:                                              ; preds = %415, %414
  %420 = phi i32 [ 0, %414 ], [ %418, %415 ]
  %421 = add nsw i32 %411, %420
  %422 = sub nsw i32 %421, 1
  store i32 %422, i32* %26, align 4
  %423 = load i32, i32* %26, align 4
  %424 = icmp slt i32 %423, 1
  br i1 %424, label %425, label %427

425:                                              ; preds = %419
  %426 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %426, i32* %7, align 4
  br label %761

427:                                              ; preds = %419
  %428 = load i32, i32* %27, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %445

430:                                              ; preds = %427
  %431 = load i32, i32* %27, align 4
  %432 = call i32 @FFABS(i32 %431)
  %433 = mul nsw i32 %432, 2
  %434 = load i32, i32* %27, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %430
  br label %441

437:                                              ; preds = %430
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  br label %441

441:                                              ; preds = %437, %436
  %442 = phi i32 [ 0, %436 ], [ %440, %437 ]
  %443 = add nsw i32 %433, %442
  %444 = sub nsw i32 %443, 1
  store i32 %444, i32* %27, align 4
  br label %445

445:                                              ; preds = %441, %427
  %446 = load i32, i32* %27, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %485

448:                                              ; preds = %445
  %449 = load i32, i32* %26, align 4
  %450 = load i32, i32* %27, align 4
  %451 = icmp ne i32 %449, %450
  br i1 %451, label %452, label %485

452:                                              ; preds = %448
  store i32 1, i32* %35, align 4
  br label %453

453:                                              ; preds = %481, %452
  %454 = load i32, i32* %35, align 4
  %455 = icmp slt i32 %454, 8
  br i1 %455, label %456, label %484

456:                                              ; preds = %453
  %457 = load i32*, i32** %19, align 8
  %458 = load i32, i32* %35, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %27, align 4
  %463 = mul i32 %461, %462
  %464 = load i32*, i32** @ff_vc1_dqscale, align 8
  %465 = load i32, i32* %26, align 4
  %466 = sub nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %464, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = mul i32 %463, %469
  %471 = add i32 %470, 131072
  %472 = ashr i32 %471, 18
  %473 = load i32*, i32** %9, align 8
  %474 = load i32, i32* %35, align 4
  %475 = load i32, i32* %37, align 4
  %476 = shl i32 %474, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %473, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = add i32 %479, %472
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %456
  %482 = load i32, i32* %35, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %35, align 4
  br label %453

484:                                              ; preds = %453
  br label %507

485:                                              ; preds = %448, %445
  store i32 1, i32* %35, align 4
  br label %486

486:                                              ; preds = %503, %485
  %487 = load i32, i32* %35, align 4
  %488 = icmp slt i32 %487, 8
  br i1 %488, label %489, label %506

489:                                              ; preds = %486
  %490 = load i32*, i32** %19, align 8
  %491 = load i32, i32* %35, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i32*, i32** %9, align 8
  %496 = load i32, i32* %35, align 4
  %497 = load i32, i32* %37, align 4
  %498 = shl i32 %496, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %495, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, %494
  store i32 %502, i32* %500, align 4
  br label %503

503:                                              ; preds = %489
  %504 = load i32, i32* %35, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %35, align 4
  br label %486

506:                                              ; preds = %486
  br label %507

507:                                              ; preds = %506, %484
  br label %508

508:                                              ; preds = %507, %392
  store i32 1, i32* %35, align 4
  br label %509

509:                                              ; preds = %540, %508
  %510 = load i32, i32* %35, align 4
  %511 = icmp slt i32 %510, 8
  br i1 %511, label %512, label %543

512:                                              ; preds = %509
  %513 = load i32*, i32** %9, align 8
  %514 = load i32, i32* %35, align 4
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 6
  %517 = load i32, i32* %516, align 8
  %518 = shl i32 %514, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %513, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32*, i32** %20, align 8
  %523 = load i32, i32* %35, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 %521, i32* %525, align 4
  %526 = load i32*, i32** %9, align 8
  %527 = load i32, i32* %35, align 4
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 7
  %530 = load i32, i32* %529, align 4
  %531 = shl i32 %527, %530
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %526, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load i32*, i32** %20, align 8
  %536 = load i32, i32* %35, align 4
  %537 = add nsw i32 %536, 8
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %535, i64 %538
  store i32 %534, i32* %539, align 4
  br label %540

540:                                              ; preds = %512
  %541 = load i32, i32* %35, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %35, align 4
  br label %509

543:                                              ; preds = %509
  store i32 1, i32* %35, align 4
  br label %544

544:                                              ; preds = %588, %543
  %545 = load i32, i32* %35, align 4
  %546 = icmp slt i32 %545, 64
  br i1 %546, label %547, label %591

547:                                              ; preds = %544
  %548 = load i32*, i32** %9, align 8
  %549 = load i32, i32* %35, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %587

554:                                              ; preds = %547
  %555 = load i32, i32* %25, align 4
  %556 = load i32*, i32** %9, align 8
  %557 = load i32, i32* %35, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = mul i32 %560, %555
  store i32 %561, i32* %559, align 4
  %562 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %563 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %562, i32 0, i32 8
  %564 = load i32, i32* %563, align 8
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %586, label %566

566:                                              ; preds = %554
  %567 = load i32*, i32** %9, align 8
  %568 = load i32, i32* %35, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = icmp ult i32 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %566
  %574 = load i32, i32* %29, align 4
  %575 = sub nsw i32 0, %574
  br label %578

576:                                              ; preds = %566
  %577 = load i32, i32* %29, align 4
  br label %578

578:                                              ; preds = %576, %573
  %579 = phi i32 [ %575, %573 ], [ %577, %576 ]
  %580 = load i32*, i32** %9, align 8
  %581 = load i32, i32* %35, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, %579
  store i32 %585, i32* %583, align 4
  br label %586

586:                                              ; preds = %578, %554
  br label %587

587:                                              ; preds = %586, %547
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %35, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %35, align 4
  br label %544

591:                                              ; preds = %544
  br label %749

592:                                              ; preds = %306
  %593 = load i32*, i32** %20, align 8
  %594 = call i32 @memset(i32* %593, i32 0, i32 32)
  %595 = load i32, i32* %24, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %748

597:                                              ; preds = %592
  %598 = load i32, i32* %16, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %604

600:                                              ; preds = %597
  %601 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %602 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i32 0, i32 6
  %603 = load i32, i32* %602, align 8
  store i32 %603, i32* %39, align 4
  br label %612

604:                                              ; preds = %597
  %605 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i32 0, i32 7
  %607 = load i32, i32* %606, align 4
  store i32 %607, i32* %39, align 4
  %608 = load i32*, i32** %19, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 8
  store i32* %609, i32** %19, align 8
  %610 = load i32*, i32** %20, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 8
  store i32* %611, i32** %20, align 8
  br label %612

612:                                              ; preds = %604, %600
  %613 = load i32*, i32** %20, align 8
  %614 = load i32*, i32** %19, align 8
  %615 = call i32 @memcpy(i32* %613, i32* %614, i32 16)
  %616 = load i32, i32* %26, align 4
  %617 = call i32 @FFABS(i32 %616)
  %618 = mul nsw i32 %617, 2
  %619 = load i32, i32* %26, align 4
  %620 = icmp slt i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %612
  br label %626

622:                                              ; preds = %612
  %623 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 2
  %625 = load i32, i32* %624, align 8
  br label %626

626:                                              ; preds = %622, %621
  %627 = phi i32 [ 0, %621 ], [ %625, %622 ]
  %628 = add nsw i32 %618, %627
  %629 = sub nsw i32 %628, 1
  store i32 %629, i32* %26, align 4
  %630 = load i32, i32* %26, align 4
  %631 = icmp slt i32 %630, 1
  br i1 %631, label %632, label %634

632:                                              ; preds = %626
  %633 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %633, i32* %7, align 4
  br label %761

634:                                              ; preds = %626
  %635 = load i32, i32* %27, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %652

637:                                              ; preds = %634
  %638 = load i32, i32* %27, align 4
  %639 = call i32 @FFABS(i32 %638)
  %640 = mul nsw i32 %639, 2
  %641 = load i32, i32* %27, align 4
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %637
  br label %648

644:                                              ; preds = %637
  %645 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 8
  br label %648

648:                                              ; preds = %644, %643
  %649 = phi i32 [ 0, %643 ], [ %647, %644 ]
  %650 = add nsw i32 %640, %649
  %651 = sub nsw i32 %650, 1
  store i32 %651, i32* %27, align 4
  br label %652

652:                                              ; preds = %648, %634
  %653 = load i32, i32* %27, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %688

655:                                              ; preds = %652
  %656 = load i32, i32* %26, align 4
  %657 = load i32, i32* %27, align 4
  %658 = icmp ne i32 %656, %657
  br i1 %658, label %659, label %688

659:                                              ; preds = %655
  store i32 1, i32* %38, align 4
  br label %660

660:                                              ; preds = %684, %659
  %661 = load i32, i32* %38, align 4
  %662 = icmp slt i32 %661, 8
  br i1 %662, label %663, label %687

663:                                              ; preds = %660
  %664 = load i32*, i32** %20, align 8
  %665 = load i32, i32* %38, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i32, i32* %664, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = load i32, i32* %27, align 4
  %670 = mul i32 %668, %669
  %671 = load i32*, i32** @ff_vc1_dqscale, align 8
  %672 = load i32, i32* %26, align 4
  %673 = sub nsw i32 %672, 1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %671, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = mul i32 %670, %676
  %678 = add i32 %677, 131072
  %679 = lshr i32 %678, 18
  %680 = load i32*, i32** %20, align 8
  %681 = load i32, i32* %38, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %680, i64 %682
  store i32 %679, i32* %683, align 4
  br label %684

684:                                              ; preds = %663
  %685 = load i32, i32* %38, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %38, align 4
  br label %660

687:                                              ; preds = %660
  br label %688

688:                                              ; preds = %687, %655, %652
  store i32 1, i32* %38, align 4
  br label %689

689:                                              ; preds = %744, %688
  %690 = load i32, i32* %38, align 4
  %691 = icmp slt i32 %690, 8
  br i1 %691, label %692, label %747

692:                                              ; preds = %689
  %693 = load i32*, i32** %20, align 8
  %694 = load i32, i32* %38, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %693, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = load i32, i32* %25, align 4
  %699 = mul i32 %697, %698
  %700 = load i32*, i32** %9, align 8
  %701 = load i32, i32* %38, align 4
  %702 = load i32, i32* %39, align 4
  %703 = shl i32 %701, %702
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32, i32* %700, i64 %704
  store i32 %699, i32* %705, align 4
  %706 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 8
  %708 = load i32, i32* %707, align 8
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %743, label %710

710:                                              ; preds = %692
  %711 = load i32*, i32** %9, align 8
  %712 = load i32, i32* %38, align 4
  %713 = load i32, i32* %39, align 4
  %714 = shl i32 %712, %713
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %711, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %743

719:                                              ; preds = %710
  %720 = load i32*, i32** %9, align 8
  %721 = load i32, i32* %38, align 4
  %722 = load i32, i32* %39, align 4
  %723 = shl i32 %721, %722
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %720, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = icmp ult i32 %726, 0
  br i1 %727, label %728, label %731

728:                                              ; preds = %719
  %729 = load i32, i32* %29, align 4
  %730 = sub nsw i32 0, %729
  br label %733

731:                                              ; preds = %719
  %732 = load i32, i32* %29, align 4
  br label %733

733:                                              ; preds = %731, %728
  %734 = phi i32 [ %730, %728 ], [ %732, %731 ]
  %735 = load i32*, i32** %9, align 8
  %736 = load i32, i32* %38, align 4
  %737 = load i32, i32* %39, align 4
  %738 = shl i32 %736, %737
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, i32* %735, i64 %739
  %741 = load i32, i32* %740, align 4
  %742 = add i32 %741, %734
  store i32 %742, i32* %740, align 4
  br label %743

743:                                              ; preds = %733, %710, %692
  br label %744

744:                                              ; preds = %743
  %745 = load i32, i32* %38, align 4
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %38, align 4
  br label %689

747:                                              ; preds = %689
  br label %748

748:                                              ; preds = %747, %592
  br label %749

749:                                              ; preds = %748, %591
  %750 = load i32, i32* %24, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %753

752:                                              ; preds = %749
  store i32 63, i32* %17, align 4
  br label %753

753:                                              ; preds = %752, %749
  %754 = load i32, i32* %17, align 4
  %755 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %756 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %755, i32 0, i32 10
  %757 = load i32*, i32** %756, align 8
  %758 = load i32, i32* %10, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32, i32* %757, i64 %759
  store i32 %754, i32* %760, align 4
  store i32 0, i32* %7, align 4
  br label %761

761:                                              ; preds = %753, %632, %425, %373, %96
  %762 = load i32, i32* %7, align 4
  ret i32 %762
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @ff_vc1_pred_dc(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @vc1_decode_ac_coeff(%struct.TYPE_10__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
