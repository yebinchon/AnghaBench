; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_split_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_split_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64* }

@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid AVCC header: first byte %u.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to split AVCC SPS array.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to split AVCC PPS array.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%u bytes left at end of AVCC header.\0A\00", align 1
@AV_CODEC_ID_HEVC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid HVCC header: first byte %u.\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Failed to split HVCC array %d (%d NAL units of type %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @cbs_h2645_split_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_h2645_split_fragment(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %9, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %39, %3
  %45 = phi i1 [ false, %3 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @av_assert0(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %407

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %245

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %245

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %245

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bytestream2_init(i32* %10, i64* %72, i64 %75)
  %77 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %78 = icmp ult i64 %77, 6
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %4, align 4
  br label %407

81:                                               ; preds = %67
  %82 = call i32 @bytestream2_get_byte(i32* %10)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 (i32, i32, i8*, ...) @av_log(i32 %88, i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %4, align 4
  br label %407

93:                                               ; preds = %81
  %94 = call i32 @bytestream2_skip(i32* %10, i64 3)
  %95 = call i32 @bytestream2_get_byte(i32* %10)
  %96 = and i32 %95, 3
  %97 = add nsw i32 %96, 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = call i32 @bytestream2_get_byte(i32* %10)
  %101 = and i32 %100, 31
  store i32 %101, i32* %16, align 4
  %102 = call i64 @bytestream2_tell(i32* %10)
  store i64 %102, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %128, %93
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %108, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %116, i32* %4, align 4
  br label %407

117:                                              ; preds = %107
  %118 = call i8* @bytestream2_get_be16(i32* %10)
  %119 = ptrtoint i8* %118 to i64
  store i64 %119, i64* %12, align 8
  %120 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %121 = load i64, i64* %12, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %124, i32* %4, align 4
  br label %407

125:                                              ; preds = %117
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @bytestream2_skip(i32* %10, i64 %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %103

131:                                              ; preds = %103
  %132 = call i64 @bytestream2_tell(i32* %10)
  store i64 %132, i64* %14, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* %13, align 8
  %142 = sub i64 %140, %141
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %147 = call i32 @ff_h2645_packet_split(i32* %134, i64* %139, i64 %142, i32 %145, i32 1, i32 2, i32 %146, i32 1, i32 1)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %131
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = call i32 (i32, i32, i8*, ...) @av_log(i32 %153, i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %407

157:                                              ; preds = %131
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = call i32 @cbs_h2645_fragment_add_nals(%struct.TYPE_12__* %158, %struct.TYPE_11__* %159, i32* %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %4, align 4
  br label %407

167:                                              ; preds = %157
  %168 = call i32 @bytestream2_get_byte(i32* %10)
  store i32 %168, i32* %16, align 4
  %169 = call i64 @bytestream2_tell(i32* %10)
  store i64 %169, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %195, %167
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = sub nsw i32 %176, %177
  %179 = mul nsw i32 2, %178
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %175, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %183, i32* %4, align 4
  br label %407

184:                                              ; preds = %174
  %185 = call i8* @bytestream2_get_be16(i32* %10)
  %186 = ptrtoint i8* %185 to i64
  store i64 %186, i64* %12, align 8
  %187 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %188 = load i64, i64* %12, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %4, align 4
  br label %407

192:                                              ; preds = %184
  %193 = load i64, i64* %12, align 8
  %194 = call i32 @bytestream2_skip(i32* %10, i64 %193)
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %170

198:                                              ; preds = %170
  %199 = call i64 @bytestream2_tell(i32* %10)
  store i64 %199, i64* %14, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* %13, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %13, align 8
  %209 = sub i64 %207, %208
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %214 = call i32 @ff_h2645_packet_split(i32* %201, i64* %206, i64 %209, i32 %212, i32 1, i32 2, i32 %213, i32 1, i32 1)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %198
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @AV_LOG_ERROR, align 4
  %222 = call i32 (i32, i32, i8*, ...) @av_log(i32 %220, i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* %4, align 4
  br label %407

224:                                              ; preds = %198
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  %229 = call i32 @cbs_h2645_fragment_add_nals(%struct.TYPE_12__* %225, %struct.TYPE_11__* %226, i32* %228)
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %4, align 4
  br label %407

234:                                              ; preds = %224
  %235 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %236 = icmp ugt i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @AV_LOG_WARNING, align 4
  %242 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %243 = call i32 (i32, i32, i8*, ...) @av_log(i32 %240, i32 %241, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %242)
  br label %244

244:                                              ; preds = %237, %234
  br label %406

245:                                              ; preds = %63, %56, %53
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %370

248:                                              ; preds = %245
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %370

255:                                              ; preds = %248
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %370

259:                                              ; preds = %255
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 2
  %264 = load i64*, i64** %263, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @bytestream2_init(i32* %10, i64* %264, i64 %267)
  %269 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %270 = icmp ult i64 %269, 23
  br i1 %270, label %271, label %273

271:                                              ; preds = %259
  %272 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %272, i32* %4, align 4
  br label %407

273:                                              ; preds = %259
  %274 = call i32 @bytestream2_get_byte(i32* %10)
  store i32 %274, i32* %26, align 4
  %275 = load i32, i32* %26, align 4
  %276 = icmp ne i32 %275, 1
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @AV_LOG_ERROR, align 4
  %282 = load i32, i32* %26, align 4
  %283 = call i32 (i32, i32, i8*, ...) @av_log(i32 %280, i32 %281, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %284, i32* %4, align 4
  br label %407

285:                                              ; preds = %273
  %286 = call i32 @bytestream2_skip(i32* %10, i64 20)
  %287 = call i32 @bytestream2_get_byte(i32* %10)
  %288 = and i32 %287, 3
  %289 = add nsw i32 %288, 1
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = call i32 @bytestream2_get_byte(i32* %10)
  store i32 %292, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %293

293:                                              ; preds = %366, %285
  %294 = load i32, i32* %21, align 4
  %295 = load i32, i32* %23, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %369

297:                                              ; preds = %293
  %298 = call i32 @bytestream2_get_byte(i32* %10)
  %299 = and i32 %298, 63
  store i32 %299, i32* %24, align 4
  %300 = call i8* @bytestream2_get_be16(i32* %10)
  %301 = ptrtoint i8* %300 to i32
  store i32 %301, i32* %25, align 4
  %302 = call i64 @bytestream2_tell(i32* %10)
  store i64 %302, i64* %19, align 8
  store i32 0, i32* %22, align 4
  br label %303

303:                                              ; preds = %323, %297
  %304 = load i32, i32* %22, align 4
  %305 = load i32, i32* %25, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %326

307:                                              ; preds = %303
  %308 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %309 = icmp ult i64 %308, 2
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %311, i32* %4, align 4
  br label %407

312:                                              ; preds = %307
  %313 = call i8* @bytestream2_get_be16(i32* %10)
  %314 = ptrtoint i8* %313 to i64
  store i64 %314, i64* %18, align 8
  %315 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %316 = load i64, i64* %18, align 8
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %319, i32* %4, align 4
  br label %407

320:                                              ; preds = %312
  %321 = load i64, i64* %18, align 8
  %322 = call i32 @bytestream2_skip(i32* %10, i64 %321)
  br label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %22, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %22, align 4
  br label %303

326:                                              ; preds = %303
  %327 = call i64 @bytestream2_tell(i32* %10)
  store i64 %327, i64* %20, align 8
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 2
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* %19, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %20, align 8
  %336 = load i64, i64* %19, align 8
  %337 = sub i64 %335, %336
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %342 = call i32 @ff_h2645_packet_split(i32* %329, i64* %334, i64 %337, i32 %340, i32 1, i32 2, i32 %341, i32 1, i32 1)
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %355

345:                                              ; preds = %326
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @AV_LOG_ERROR, align 4
  %350 = load i32, i32* %21, align 4
  %351 = load i32, i32* %25, align 4
  %352 = load i32, i32* %24, align 4
  %353 = call i32 (i32, i32, i8*, ...) @av_log(i32 %348, i32 %349, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %350, i32 %351, i32 %352)
  %354 = load i32, i32* %11, align 4
  store i32 %354, i32* %4, align 4
  br label %407

355:                                              ; preds = %326
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 2
  %360 = call i32 @cbs_h2645_fragment_add_nals(%struct.TYPE_12__* %356, %struct.TYPE_11__* %357, i32* %359)
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %11, align 4
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %355
  %364 = load i32, i32* %11, align 4
  store i32 %364, i32* %4, align 4
  br label %407

365:                                              ; preds = %355
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %21, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %21, align 4
  br label %293

369:                                              ; preds = %293
  br label %405

370:                                              ; preds = %255, %248, %245
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 2
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 2
  %375 = load i64*, i64** %374, align 8
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %8, align 4
  %389 = call i32 @ff_h2645_packet_split(i32* %372, i64* %375, i64 %378, i32 %381, i32 %384, i32 %387, i32 %388, i32 1, i32 1)
  store i32 %389, i32* %11, align 4
  %390 = load i32, i32* %11, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %370
  %393 = load i32, i32* %11, align 4
  store i32 %393, i32* %4, align 4
  br label %407

394:                                              ; preds = %370
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 2
  %399 = call i32 @cbs_h2645_fragment_add_nals(%struct.TYPE_12__* %395, %struct.TYPE_11__* %396, i32* %398)
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %394
  %403 = load i32, i32* %11, align 4
  store i32 %403, i32* %4, align 4
  br label %407

404:                                              ; preds = %394
  br label %405

405:                                              ; preds = %404, %369
  br label %406

406:                                              ; preds = %405, %244
  store i32 0, i32* %4, align 4
  br label %407

407:                                              ; preds = %406, %402, %392, %363, %345, %318, %310, %277, %271, %232, %217, %190, %182, %165, %150, %123, %115, %85, %79, %52
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @bytestream2_init(i32*, i64*, i64) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(i32*, i64) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

declare dso_local i8* @bytestream2_get_be16(i32*) #1

declare dso_local i32 @ff_h2645_packet_split(i32*, i64*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cbs_h2645_fragment_add_nals(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
