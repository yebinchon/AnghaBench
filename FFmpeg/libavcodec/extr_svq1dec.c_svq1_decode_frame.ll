; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__*, i64, i32, i32, i32*, i32 }
%struct.TYPE_24__ = type { i64, i64, i32** }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_27__ = type { i64, i32*, i32** }
%struct.TYPE_23__ = type { i64, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Input packet too small\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error in svq1_decode_frame_header %i\0A\00", align 1
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@AVDISCARD_NONKEY = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Error in svq1_decode_block %i (keyframe)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error in svq1_decode_delta_block %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i8*, i32*, %struct.TYPE_26__*)* @svq1_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq1_decode_frame(%struct.TYPE_28__* %0, i8* %1, i32* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %9, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %12, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %13, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 5
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @init_get_bits8(i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %22, align 4
  store i32 %45, i32* %5, align 4
  br label %461

46:                                               ; preds = %4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 5
  %49 = call i32 @get_bits(i32* %48, i32 22)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -113
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 96
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57, %46
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %5, align 4
  br label %461

65:                                               ; preds = %57
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %147

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 36
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %74, i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %5, align 4
  br label %461

78:                                               ; preds = %70
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @av_fast_padded_malloc(i32** %80, i32* %82, i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %5, align 4
  br label %461

92:                                               ; preds = %78
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 7
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %10, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 5
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 8
  %107 = call i32 @init_get_bits(i32* %103, i32* %104, i32 %106)
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 5
  %110 = call i32 @skip_bits(i32* %109, i32 22)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %23, align 8
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %143, %92
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load i32*, i32** %23, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 16
  %125 = load i32*, i32** %23, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 16
  %131 = or i32 %124, %130
  %132 = load i32*, i32** %23, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 7, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %131, %137
  %139 = load i32*, i32** %23, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %118
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %115

146:                                              ; preds = %115
  br label %147

147:                                              ; preds = %146, %65
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %150 = call i32 @svq1_decode_frame_header(%struct.TYPE_28__* %148, %struct.TYPE_27__* %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @ff_dlog(%struct.TYPE_28__* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %5, align 4
  br label %461

158:                                              ; preds = %147
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ff_set_dimensions(%struct.TYPE_28__* %159, i32 %162, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %5, align 4
  br label %461

171:                                              ; preds = %158
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @AVDISCARD_NONREF, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %200, label %182

182:                                              ; preds = %177, %171
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @AVDISCARD_NONKEY, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188, %182
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AVDISCARD_ALL, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %194, %188, %177
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %5, align 4
  br label %461

202:                                              ; preds = %194
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %212

210:                                              ; preds = %202
  %211 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  br label %212

212:                                              ; preds = %210, %209
  %213 = phi i32 [ 0, %209 ], [ %211, %210 ]
  %214 = call i32 @ff_get_buffer(%struct.TYPE_28__* %203, %struct.TYPE_27__* %204, i32 %213)
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* %15, align 4
  store i32 %218, i32* %5, align 4
  br label %461

219:                                              ; preds = %212
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @FFALIGN(i32 %222, i32 16)
  %224 = sdiv i32 %223, 8
  %225 = add nsw i32 %224, 3
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 16
  %228 = trunc i64 %227 to i32
  %229 = call %struct.TYPE_23__* @av_malloc(i32 %228)
  store %struct.TYPE_23__* %229, %struct.TYPE_23__** %21, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %231 = icmp ne %struct.TYPE_23__* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %219
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = call i32 @AVERROR(i32 %233)
  store i32 %234, i32* %5, align 4
  br label %461

235:                                              ; preds = %219
  store i32 0, i32* %16, align 4
  br label %236

236:                                              ; preds = %432, %235
  %237 = load i32, i32* %16, align 4
  %238 = icmp slt i32 %237, 3
  br i1 %238, label %239, label %435

239:                                              ; preds = %236
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %24, align 4
  %247 = load i32, i32* %16, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %239
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @FFALIGN(i32 %252, i32 16)
  store i32 %253, i32* %19, align 4
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @FFALIGN(i32 %256, i32 16)
  store i32 %257, i32* %20, align 4
  br label %277

258:                                              ; preds = %239
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  br label %435

266:                                              ; preds = %258
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sdiv i32 %269, 4
  %271 = call i32 @FFALIGN(i32 %270, i32 16)
  store i32 %271, i32* %19, align 4
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sdiv i32 %274, 4
  %276 = call i32 @FFALIGN(i32 %275, i32 16)
  store i32 %276, i32* %20, align 4
  br label %277

277:                                              ; preds = %266, %249
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 2
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  store i32* %284, i32** %14, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %330

290:                                              ; preds = %277
  store i32 0, i32* %18, align 4
  br label %291

291:                                              ; preds = %326, %290
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %20, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %329

295:                                              ; preds = %291
  store i32 0, i32* %17, align 4
  br label %296

296:                                              ; preds = %317, %295
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* %19, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %320

300:                                              ; preds = %296
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 5
  %303 = load i32*, i32** %14, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %24, align 4
  %308 = call i32 @svq1_decode_block_intra(i32* %302, i32* %306, i32 %307)
  store i32 %308, i32* %15, align 4
  %309 = load i32, i32* %15, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %300
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %313 = load i32, i32* @AV_LOG_ERROR, align 4
  %314 = load i32, i32* %15, align 4
  %315 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %312, i32 %313, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %314)
  br label %457

316:                                              ; preds = %300
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %17, align 4
  %319 = add nsw i32 %318, 16
  store i32 %319, i32* %17, align 4
  br label %296

320:                                              ; preds = %296
  %321 = load i32, i32* %24, align 4
  %322 = mul nsw i32 16, %321
  %323 = load i32*, i32** %14, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %14, align 8
  br label %326

326:                                              ; preds = %320
  %327 = load i32, i32* %18, align 4
  %328 = add nsw i32 %327, 16
  store i32 %328, i32* %18, align 4
  br label %291

329:                                              ; preds = %291
  br label %431

330:                                              ; preds = %277
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 3
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 2
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %335, i64 %337
  %339 = load i32*, i32** %338, align 8
  store i32* %339, i32** %25, align 8
  %340 = load i32*, i32** %25, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %364

342:                                              ; preds = %330
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp ne i64 %347, %351
  br i1 %352, label %364, label %353

353:                                              ; preds = %342
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = icmp ne i64 %358, %362
  br i1 %363, label %364, label %369

364:                                              ; preds = %353, %342, %330
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %366 = load i32, i32* @AV_LOG_ERROR, align 4
  %367 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %365, i32 %366, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %368 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %368, i32* %15, align 4
  br label %457

369:                                              ; preds = %353
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %371 = load i32, i32* %19, align 4
  %372 = sdiv i32 %371, 8
  %373 = add nsw i32 %372, 3
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 16
  %376 = trunc i64 %375 to i32
  %377 = call i32 @memset(%struct.TYPE_23__* %370, i32 0, i32 %376)
  store i32 0, i32* %18, align 4
  br label %378

378:                                              ; preds = %427, %369
  %379 = load i32, i32* %18, align 4
  %380 = load i32, i32* %20, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %430

382:                                              ; preds = %378
  store i32 0, i32* %17, align 4
  br label %383

383:                                              ; preds = %412, %382
  %384 = load i32, i32* %17, align 4
  %385 = load i32, i32* %19, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %415

387:                                              ; preds = %383
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 6
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 5
  %393 = load i32*, i32** %14, align 8
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32*, i32** %25, align 8
  %398 = load i32, i32* %24, align 4
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* %20, align 4
  %404 = call i32 @svq1_decode_delta_block(%struct.TYPE_28__* %388, i32* %390, i32* %392, i32* %396, i32* %397, i32 %398, %struct.TYPE_23__* %399, i32 %400, i32 %401, i32 %402, i32 %403)
  store i32 %404, i32* %15, align 4
  %405 = load i32, i32* %15, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %387
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %409 = load i32, i32* %15, align 4
  %410 = call i32 @ff_dlog(%struct.TYPE_28__* %408, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %409)
  br label %457

411:                                              ; preds = %387
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %17, align 4
  %414 = add nsw i32 %413, 16
  store i32 %414, i32* %17, align 4
  br label %383

415:                                              ; preds = %383
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i64 0
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 0
  store i64 0, i64* %418, align 8
  %419 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %419, i64 0
  %421 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %420, i32 0, i32 1
  store i64 0, i64* %421, align 8
  %422 = load i32, i32* %24, align 4
  %423 = mul nsw i32 16, %422
  %424 = load i32*, i32** %14, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  store i32* %426, i32** %14, align 8
  br label %427

427:                                              ; preds = %415
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 %428, 16
  store i32 %429, i32* %18, align 4
  br label %378

430:                                              ; preds = %378
  br label %431

431:                                              ; preds = %430, %329
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %16, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %16, align 4
  br label %236

435:                                              ; preds = %265, %236
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 4
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %454, label %440

440:                                              ; preds = %435
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %442, align 8
  %444 = call i32 @av_frame_unref(%struct.TYPE_24__* %443)
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 3
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %446, align 8
  %448 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %449 = call i32 @av_frame_ref(%struct.TYPE_24__* %447, %struct.TYPE_27__* %448)
  store i32 %449, i32* %15, align 4
  %450 = load i32, i32* %15, align 4
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %440
  br label %457

453:                                              ; preds = %440
  br label %454

454:                                              ; preds = %453, %435
  %455 = load i32*, i32** %8, align 8
  store i32 1, i32* %455, align 4
  %456 = load i32, i32* %11, align 4
  store i32 %456, i32* %15, align 4
  br label %457

457:                                              ; preds = %454, %452, %407, %364, %311
  %458 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %459 = call i32 @av_free(%struct.TYPE_23__* %458)
  %460 = load i32, i32* %15, align 4
  store i32 %460, i32* %5, align 4
  br label %461

461:                                              ; preds = %457, %232, %217, %200, %169, %153, %89, %73, %63, %44
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @svq1_decode_frame_header(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_23__* @av_malloc(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @svq1_decode_block_intra(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @svq1_decode_delta_block(%struct.TYPE_28__*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_24__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @av_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
