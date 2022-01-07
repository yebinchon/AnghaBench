; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_bethsoftvid.c_read_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_bethsoftvid.c_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i64*, i32, i32 }
%struct.TYPE_19__ = type { i64*, i32, i64, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Using default video time base since having no audio packet before the first video packet\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_BETHSOFTVID = common dso_local global i32 0, align 4
@BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@VIDEO_YOFF_P_FRAME = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@VIDEO_I_FRAME = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@BVID_PALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate palette side data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_19__*, i64, %struct.TYPE_20__*)* @read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_frame(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_19__* %2, i64 %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i64*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  store i64* null, i64** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %5
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %29 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %28, i32* null)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %21, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %294

35:                                               ; preds = %27
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %47 = call i32 @avpriv_request_sample(%struct.TYPE_20__* %46, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %49, i32 64, i32 185, i32 %52)
  %54 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @AV_CODEC_ID_BETHSOFTVID, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %48, %5
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %81, i64 %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %21, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %91, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* @BUFFER_PADDING_SIZE, align 4
  store i32 %98, i32* %19, align 4
  %99 = call i64* @av_malloc(i32 %98)
  store i64* %99, i64** %12, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %78
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %6, align 4
  br label %294

105:                                              ; preds = %78
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @avio_tell(i32* %106)
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  %109 = load i64, i64* %10, align 8
  %110 = load i64*, i64** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64 %109, i64* %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @avio_rl16(i32* %118)
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* %17, align 4
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @VIDEO_YOFF_P_FRAME, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %105
  %125 = load i32*, i32** %8, align 8
  %126 = load i64*, i64** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = call i32 @avio_read(i32* %125, i64* %129, i32 2)
  %131 = icmp ne i32 %130, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @EIO, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %20, align 4
  br label %290

135:                                              ; preds = %124
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %135, %105
  br label %139

139:                                              ; preds = %221, %138
  %140 = load i64*, i64** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @BUFFER_PADDING_SIZE, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i64* @av_fast_realloc(i64* %140, i32* %19, i32 %143)
  store i64* %144, i64** %12, align 8
  %145 = load i64*, i64** %12, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %6, align 4
  br label %294

150:                                              ; preds = %139
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @avio_r8(i32* %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64*, i64** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  store i64 %154, i64* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = icmp sge i32 %160, 128
  br i1 %161, label %162, label %176

162:                                              ; preds = %150
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* @VIDEO_I_FRAME, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @avio_r8(i32* %167)
  %169 = sext i32 %168 to i64
  %170 = load i64*, i64** %12, align 8
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 %169, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %162
  br label %197

176:                                              ; preds = %150
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = load i32*, i32** %8, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @avio_read(i32* %180, i64* %184, i32 %185)
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = load i32, i32* @EIO, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %20, align 4
  br label %290

192:                                              ; preds = %179
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %192, %176
  br label %197

197:                                              ; preds = %196, %175
  %198 = load i32, i32* %14, align 4
  %199 = and i32 %198, 127
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %197
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @avio_r8(i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* @SEEK_CUR, align 4
  %212 = call i32 @avio_seek(i32* %210, i32 -1, i32 %211)
  br label %213

213:                                              ; preds = %209, %205
  br label %224

214:                                              ; preds = %197
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %219, i32* %20, align 4
  br label %290

220:                                              ; preds = %214
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %139, label %224

224:                                              ; preds = %221, %213
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @av_new_packet(%struct.TYPE_19__* %225, i32 %226)
  store i32 %227, i32* %20, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %290

230:                                              ; preds = %224
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64*, i64** %12, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @memcpy(i64* %233, i64* %234, i32 %235)
  %237 = load i32, i32* %16, align 4
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  %248 = load i64, i64* %10, align 8
  %249 = load i64, i64* @VIDEO_I_FRAME, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %230
  %252 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %251, %230
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 5
  %260 = load i64*, i64** %259, align 8
  %261 = icmp ne i64* %260, null
  br i1 %261, label %262, label %285

262:                                              ; preds = %257
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %264 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %265 = load i32, i32* @BVID_PALETTE_SIZE, align 4
  %266 = call i64* @av_packet_new_side_data(%struct.TYPE_19__* %263, i32 %264, i32 %265)
  store i64* %266, i64** %22, align 8
  %267 = load i64*, i64** %22, align 8
  %268 = icmp ne i64* %267, null
  br i1 %268, label %275, label %269

269:                                              ; preds = %262
  %270 = load i32, i32* @ENOMEM, align 4
  %271 = call i32 @AVERROR(i32 %270)
  store i32 %271, i32* %20, align 4
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %273 = load i32, i32* @AV_LOG_ERROR, align 4
  %274 = call i32 @av_log(%struct.TYPE_20__* %272, i32 %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %290

275:                                              ; preds = %262
  %276 = load i64*, i64** %22, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 5
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* @BVID_PALETTE_SIZE, align 4
  %281 = call i32 @memcpy(i64* %276, i64* %279, i32 %280)
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 5
  %284 = call i32 @av_freep(i64** %283)
  br label %285

285:                                              ; preds = %275, %257
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %285, %269, %229, %218, %189, %132
  %291 = load i64*, i64** %12, align 8
  %292 = call i32 @av_free(i64* %291)
  %293 = load i32, i32* %20, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %290, %147, %102, %32
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i64* @av_malloc(i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_read(i32*, i64*, i32) #1

declare dso_local i64* @av_fast_realloc(i64*, i32*, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64* @av_packet_new_side_data(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @av_freep(i64**) #1

declare dso_local i32 @av_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
