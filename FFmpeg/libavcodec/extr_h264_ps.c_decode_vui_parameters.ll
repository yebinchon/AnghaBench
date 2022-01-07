; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_vui_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_vui_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_12__ }

@EXTENDED_SAR = common dso_local global i32 0, align 4
@ff_h264_pixel_aspect = common dso_local global %struct.TYPE_12__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"illegal aspect ratio\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVCOL_PRI_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_TRC_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_SPC_UNSPECIFIED = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Truncated VUI\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"time_scale/num_units_in_tick invalid or unsupported (%u/%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Clipping illegal num_reorder_frames %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @decode_vui_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_vui_parameters(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @get_bits1(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @get_bits(i32* %17, i32 8)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EXTENDED_SAR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @get_bits(i32* %24, i32 16)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @get_bits(i32* %29, i32 16)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %54

34:                                               ; preds = %16
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ff_h264_pixel_aspect, align 8
  %37 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_12__* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 15
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ff_h264_pixel_aspect, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %44
  %46 = bitcast %struct.TYPE_12__* %41 to i8*
  %47 = bitcast %struct.TYPE_12__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  br label %53

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %310

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %23
  br label %62

55:                                               ; preds = %3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 15
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8* null, i8** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 15
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @get_bits1(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @get_bits1(i32* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @get_bits1(i32* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %137

78:                                               ; preds = %69
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @get_bits(i32* %79, i32 3)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @get_bits1(i32* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @get_bits1(i32* %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %78
  %94 = load i32*, i32** %5, align 8
  %95 = call i8* @get_bits(i32* %94, i32 8)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 14
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i8* @get_bits(i32* %98, i32 8)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 13
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @get_bits(i32* %102, i32 8)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 14
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @av_color_primaries_name(i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %93
  %112 = load i8*, i8** @AVCOL_PRI_UNSPECIFIED, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 14
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %93
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 13
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @av_color_transfer_name(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** @AVCOL_TRC_UNSPECIFIED, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 13
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 12
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @av_color_space_name(i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** @AVCOL_SPC_UNSPECIFIED, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 12
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %125
  br label %136

136:                                              ; preds = %135, %78
  br label %137

137:                                              ; preds = %136, %69
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @get_bits1(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = call i8* @get_ue_golomb(i32* %142)
  %144 = getelementptr i8, i8* %143, i64 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = call i8* @get_ue_golomb(i32* %147)
  br label %149

149:                                              ; preds = %141, %137
  %150 = load i32*, i32** %5, align 8
  %151 = call i64 @show_bits1(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32*, i32** %5, align 8
  %155 = call i64 @get_bits_left(i32* %154)
  %156 = icmp slt i64 %155, 10
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = load i32, i32* @AV_LOG_WARNING, align 4
  %160 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %158, i32 %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %310

161:                                              ; preds = %153, %149
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @get_bits1(i32* %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %161
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @get_bits_long(i32* %171, i32 32)
  store i32 %172, i32* %10, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @get_bits_long(i32* %173, i32 32)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177, %170
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = load i32, i32* @AV_LOG_ERROR, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %181, i32 %182, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i32 0, i32* %187, align 4
  br label %195

188:                                              ; preds = %177
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %180
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @get_bits1(i32* %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %195, %161
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @get_bits1(i32* %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %200
  %210 = load i32*, i32** %5, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = call i64 @decode_hrd_parameters(i32* %210, %struct.TYPE_11__* %211, %struct.TYPE_10__* %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %216, i32* %4, align 4
  br label %310

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %200
  %219 = load i32*, i32** %5, align 8
  %220 = call i32 @get_bits1(i32* %219)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = load i32*, i32** %5, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = call i64 @decode_hrd_parameters(i32* %228, %struct.TYPE_11__* %229, %struct.TYPE_10__* %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %234, i32* %4, align 4
  br label %310

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %218
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241, %236
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @get_bits1(i32* %247)
  br label %249

249:                                              ; preds = %246, %241
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @get_bits1(i32* %250)
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 9
  store i32 %251, i32* %253, align 4
  %254 = load i32*, i32** %5, align 8
  %255 = call i64 @get_bits_left(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %310

258:                                              ; preds = %249
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 @get_bits1(i32* %259)
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 10
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 10
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %309

267:                                              ; preds = %258
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @get_bits1(i32* %268)
  %270 = load i32*, i32** %5, align 8
  %271 = call i8* @get_ue_golomb(i32* %270)
  %272 = load i32*, i32** %5, align 8
  %273 = call i8* @get_ue_golomb(i32* %272)
  %274 = load i32*, i32** %5, align 8
  %275 = call i8* @get_ue_golomb(i32* %274)
  %276 = load i32*, i32** %5, align 8
  %277 = call i8* @get_ue_golomb(i32* %276)
  %278 = load i32*, i32** %5, align 8
  %279 = call i8* @get_ue_golomb(i32* %278)
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 11
  store i32 %280, i32* %282, align 4
  %283 = load i32*, i32** %5, align 8
  %284 = call i8* @get_ue_golomb(i32* %283)
  %285 = load i32*, i32** %5, align 8
  %286 = call i64 @get_bits_left(i32* %285)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %267
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 11
  store i32 0, i32* %290, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 10
  store i32 0, i32* %292, align 8
  br label %293

293:                                              ; preds = %288, %267
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 4
  %297 = icmp ugt i32 %296, 16
  br i1 %297, label %298, label %308

298:                                              ; preds = %293
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %300 = load i32, i32* @AV_LOG_ERROR, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %299, i32 %300, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %303)
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 11
  store i32 16, i32* %306, align 4
  %307 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %307, i32* %4, align 4
  br label %310

308:                                              ; preds = %293
  br label %309

309:                                              ; preds = %308, %258
  store i32 0, i32* %4, align 4
  br label %310

310:                                              ; preds = %309, %298, %257, %233, %215, %157, %48
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @av_color_primaries_name(i8*) #1

declare dso_local i32 @av_color_transfer_name(i8*) #1

declare dso_local i32 @av_color_space_name(i8*) #1

declare dso_local i8* @get_ue_golomb(i32*) #1

declare dso_local i64 @show_bits1(i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i64 @decode_hrd_parameters(i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
