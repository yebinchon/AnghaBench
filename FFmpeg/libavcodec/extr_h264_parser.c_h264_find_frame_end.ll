; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_h264_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_h264_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i64, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 (i32*, i32)* }
%struct.TYPE_6__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"AVC-parser: nal length size invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"AVC-parser: nal size %d remaining %d\0A\00", align 1
@H264_NAL_SEI = common dso_local global i32 0, align 4
@H264_NAL_SPS = common dso_local global i32 0, align 4
@H264_NAL_PPS = common dso_local global i32 0, align 4
@H264_NAL_AUD = common dso_local global i32 0, align 4
@H264_NAL_SLICE = common dso_local global i32 0, align 4
@H264_NAL_DPA = common dso_local global i32 0, align 4
@H264_NAL_IDR_SLICE = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i8*)* @h264_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_find_frame_end(%struct.TYPE_7__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 0, %26 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 13
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 7, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %48, i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42, %37
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %271, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %274

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %78, %60
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = shl i32 %69, 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %70, %76
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %15, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84, %81
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %91, i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %5, align 4
  br label %302

99:                                               ; preds = %84
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  store i32 5, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %56
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 7
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64 (i32*, i32)*, i64 (i32*, i32)** %109, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i64 %110(i32* %114, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %106
  store i32 2, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %106
  br label %270

128:                                              ; preds = %103
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %129, 2
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %12, align 4
  %140 = xor i32 %139, 5
  store i32 %140, i32* %12, align 4
  br label %153

141:                                              ; preds = %131
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 7, i32* %12, align 4
  br label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = ashr i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %149, %148
  br label %153

153:                                              ; preds = %152, %138
  br label %269

154:                                              ; preds = %128
  %155 = load i32, i32* %12, align 4
  %156 = icmp sle i32 %155, 5
  br i1 %156, label %157, label %205

157:                                              ; preds = %154
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 31
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @H264_NAL_SEI, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %179, label %167

167:                                              ; preds = %157
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* @H264_NAL_SPS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @H264_NAL_PPS, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @H264_NAL_AUD, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %175, %171, %167, %157
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %286

187:                                              ; preds = %179
  br label %204

188:                                              ; preds = %175
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @H264_NAL_SLICE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @H264_NAL_DPA, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @H264_NAL_IDR_SLICE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196, %192, %188
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 8
  store i32 %202, i32* %12, align 4
  br label %271

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203, %187
  store i32 7, i32* %12, align 4
  br label %268

205:                                              ; preds = %154
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %18, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %216, i64 %221
  store i32 %213, i32* %222, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = mul nsw i32 8, %228
  %230 = call i32 @init_get_bits(i32* %19, i32* %225, i32 %229)
  %231 = call i32 @get_ue_golomb_long(i32* %19)
  store i32 %231, i32* %17, align 4
  %232 = call i64 @get_bits_left(i32* %19)
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %205
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp sgt i32 %237, 5
  br i1 %238, label %239, label %267

239:                                              ; preds = %234, %205
  %240 = load i32, i32* %17, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %239
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %18, align 4
  %250 = icmp ule i32 %248, %249
  br i1 %250, label %251, label %260

251:                                              ; preds = %247
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = load i32, i32* %10, align 4
  %257 = sub nsw i32 %256, %255
  store i32 %257, i32* %10, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 3
  store i32 0, i32* %259, align 8
  br label %286

260:                                              ; preds = %247
  br label %264

261:                                              ; preds = %239
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %260
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  store i32 0, i32* %266, align 8
  store i32 7, i32* %12, align 4
  br label %267

267:                                              ; preds = %264, %234
  br label %268

268:                                              ; preds = %267, %204
  br label %269

269:                                              ; preds = %268, %153
  br label %270

270:                                              ; preds = %269, %127
  br label %271

271:                                              ; preds = %270, %200
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %52

274:                                              ; preds = %52
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %5, align 4
  br label %302

284:                                              ; preds = %274
  %285 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %285, i32* %5, align 4
  br label %302

286:                                              ; preds = %251, %184
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  store i32 7, i32* %288, align 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  store i32 0, i32* %290, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %286
  %296 = load i32, i32* %14, align 4
  store i32 %296, i32* %5, align 4
  br label %302

297:                                              ; preds = %286
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %12, align 4
  %300 = and i32 %299, 5
  %301 = sub nsw i32 %298, %300
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %297, %295, %284, %282, %90
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
