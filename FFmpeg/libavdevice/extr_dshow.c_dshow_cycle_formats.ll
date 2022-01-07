; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i64, i32, i32, i64, i32, i64, i32, %struct.TYPE_25__, i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32, i64, i32, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_28__ = type { i32, i64, i32 }

@IID_IAMStreamConfig = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@VideoDevice = common dso_local global i32 0, align 4
@FORMAT_VideoInfo = common dso_local global i32 0, align 4
@FORMAT_VideoInfo2 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"  unknown compression type 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  vcodec=%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  pixel_format=%s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"  min s=%ldx%ld fps=%g max s=%ldx%ld fps=%g\0A\00", align 1
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@FORMAT_WaveFormatEx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"  min ch=%lu bits=%lu rate=%6lu max ch=%lu bits=%lu rate=%6lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, i32, i32*, i32*)* @dshow_cycle_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dshow_cycle_formats(%struct.TYPE_33__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dshow_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca [2 x i32*], align 16
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca %struct.TYPE_30__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_23__*, align 8
  %29 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load %struct.dshow_ctx*, %struct.dshow_ctx** %31, align 8
  store %struct.dshow_ctx* %32, %struct.dshow_ctx** %9, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32** %10 to i8**
  %35 = call i32 @IPin_QueryInterface(i32* %33, i32* @IID_IAMStreamConfig, i8** %34)
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %482

39:                                               ; preds = %4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @IAMStreamConfig_GetNumberOfCapabilities(i32* %40, i32* %15, i32* %16)
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %472

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  %47 = call i8* @av_malloc(i32 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %472

51:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %468, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %471

62:                                               ; preds = %60
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @IAMStreamConfig_GetStreamCaps(i32* %63, i32 %64, %struct.TYPE_24__** %11, i8* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %455

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VideoDevice, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %323

75:                                               ; preds = %71
  %76 = load i8*, i8** %13, align 8
  %77 = bitcast i8* %76 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %77, %struct.TYPE_29__** %18, align 8
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %79 = call i32* (...) @avformat_get_riff_video_tags()
  store i32* %79, i32** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = call i64 @IsEqualGUID(i32* %82, i32* @FORMAT_VideoInfo)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %75
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = bitcast %struct.TYPE_24__* %88 to i8*
  %90 = bitcast i8* %89 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %90, %struct.TYPE_31__** %22, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  store i32* %92, i32** %20, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 1
  store %struct.TYPE_32__* %94, %struct.TYPE_32__** %19, align 8
  br label %112

95:                                               ; preds = %75
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = call i64 @IsEqualGUID(i32* %97, i32* @FORMAT_VideoInfo2)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = bitcast %struct.TYPE_24__* %103 to i8*
  %105 = bitcast i8* %104 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %105, %struct.TYPE_30__** %23, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  store i32* %107, i32** %20, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 1
  store %struct.TYPE_32__* %109, %struct.TYPE_32__** %19, align 8
  br label %111

110:                                              ; preds = %95
  br label %455

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i32*, i32** %8, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %194, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @dshow_pixfmt(i64 %118, i32 %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %24, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %115
  %128 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @av_codec_get_id(i32** %128, i64 %131)
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %25, align 4
  %134 = load i32, i32* %25, align 4
  %135 = call %struct.TYPE_22__* @avcodec_find_decoder(i32 %134)
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %26, align 8
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %127
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %141 = icmp ne %struct.TYPE_22__* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %139, %127
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %144 = load i32, i32* @AV_LOG_INFO, align 4
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (%struct.TYPE_33__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_33__* %143, i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %157

150:                                              ; preds = %139
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %152 = load i32, i32* @AV_LOG_INFO, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.TYPE_33__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_33__* %151, i32 %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %150, %142
  br label %164

158:                                              ; preds = %115
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %160 = load i32, i32* @AV_LOG_INFO, align 4
  %161 = load i32, i32* %24, align 4
  %162 = call i32 @av_get_pix_fmt_name(i32 %161)
  %163 = call i32 (%struct.TYPE_33__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_33__* %159, i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %157
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %166 = load i32, i32* @AV_LOG_INFO, align 4
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sitofp i32 %177 to double
  %179 = fdiv double 1.000000e+07, %178
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sitofp i32 %190 to double
  %192 = fdiv double 1.000000e+07, %191
  %193 = call i32 (%struct.TYPE_33__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_33__* %165, i32 %166, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %170, i64 %174, double %179, i32 %183, i64 %187, double %192)
  br label %468

194:                                              ; preds = %112
  %195 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %196 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %194
  %201 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %202 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @av_codec_get_id(i32** %204, i64 %207)
  %209 = icmp ne i64 %203, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %455

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %214 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %212
  %219 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %220 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @dshow_pixfmt(i64 %225, i32 %228)
  %230 = icmp ne i64 %222, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %218
  br label %455

232:                                              ; preds = %218, %212
  %233 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %234 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %233, i32 0, i32 8
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %264

237:                                              ; preds = %232
  %238 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %239 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = trunc i64 %241 to i32
  %243 = mul nsw i32 %242, 10000000
  %244 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %245 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sdiv i32 %243, %247
  store i32 %248, i32* %27, align 4
  %249 = load i32, i32* %27, align 4
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %249, %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %237
  %255 = load i32, i32* %27, align 4
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254, %237
  br label %455

261:                                              ; preds = %254
  %262 = load i32, i32* %27, align 4
  %263 = load i32*, i32** %20, align 8
  store i32 %262, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %232
  %265 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %266 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %322

269:                                              ; preds = %264
  %270 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %271 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %322

274:                                              ; preds = %269
  %275 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %276 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp sgt i32 %277, %281
  br i1 %282, label %310, label %283

283:                                              ; preds = %274
  %284 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %285 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp slt i32 %286, %290
  br i1 %291, label %310, label %292

292:                                              ; preds = %283
  %293 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %294 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp sgt i64 %295, %299
  br i1 %300, label %310, label %301

301:                                              ; preds = %292
  %302 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %303 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %304, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %301, %292, %283, %274
  br label %455

311:                                              ; preds = %301
  %312 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %313 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %318 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %321 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %320, i32 0, i32 1
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %311, %269, %264
  br label %447

323:                                              ; preds = %71
  %324 = load i8*, i8** %13, align 8
  %325 = bitcast i8* %324 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %325, %struct.TYPE_23__** %28, align 8
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 1
  %328 = call i64 @IsEqualGUID(i32* %327, i32* @FORMAT_WaveFormatEx)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %323
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %332, align 8
  %334 = bitcast %struct.TYPE_24__* %333 to i8*
  %335 = bitcast i8* %334 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %335, %struct.TYPE_28__** %29, align 8
  br label %337

336:                                              ; preds = %323
  br label %455

337:                                              ; preds = %330
  %338 = load i32*, i32** %8, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %362, label %340

340:                                              ; preds = %337
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %342 = load i32, i32* @AV_LOG_INFO, align 4
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 4
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 8
  %361 = call i32 (%struct.TYPE_33__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_33__* %341, i32 %342, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %345, i64 %348, i32 %351, i32 %354, i64 %357, i32 %360)
  br label %468

362:                                              ; preds = %337
  %363 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %364 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %390

367:                                              ; preds = %362
  %368 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %369 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = icmp sgt i32 %370, %373
  br i1 %374, label %383, label %375

375:                                              ; preds = %367
  %376 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %377 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %375, %367
  br label %455

384:                                              ; preds = %375
  %385 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %386 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  br label %390

390:                                              ; preds = %384, %362
  %391 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %392 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %391, i32 0, i32 5
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %418

395:                                              ; preds = %390
  %396 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %397 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = icmp sgt i64 %398, %401
  br i1 %402, label %411, label %403

403:                                              ; preds = %395
  %404 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %405 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %404, i32 0, i32 5
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = icmp slt i64 %406, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %403, %395
  br label %455

412:                                              ; preds = %403
  %413 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %414 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %413, i32 0, i32 5
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 1
  store i64 %415, i64* %417, align 8
  br label %418

418:                                              ; preds = %412, %390
  %419 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %420 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %446

423:                                              ; preds = %418
  %424 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %425 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp sgt i32 %426, %429
  br i1 %430, label %439, label %431

431:                                              ; preds = %423
  %432 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %433 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = icmp slt i32 %434, %437
  br i1 %438, label %439, label %440

439:                                              ; preds = %431, %423
  br label %455

440:                                              ; preds = %431
  %441 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %442 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %441, i32 0, i32 6
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %445 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %444, i32 0, i32 2
  store i32 %443, i32* %445, align 8
  br label %446

446:                                              ; preds = %440, %418
  br label %447

447:                                              ; preds = %446, %322
  %448 = load i32*, i32** %10, align 8
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %450 = call i32 @IAMStreamConfig_SetFormat(i32* %448, %struct.TYPE_24__* %449)
  %451 = load i32, i32* @S_OK, align 4
  %452 = icmp ne i32 %450, %451
  br i1 %452, label %453, label %454

453:                                              ; preds = %447
  br label %455

454:                                              ; preds = %447
  store i32 1, i32* %12, align 4
  br label %455

455:                                              ; preds = %454, %453, %439, %411, %383, %336, %310, %260, %231, %210, %110, %70
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_24__*, %struct.TYPE_24__** %457, align 8
  %459 = icmp ne %struct.TYPE_24__* %458, null
  br i1 %459, label %460, label %465

460:                                              ; preds = %455
  %461 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %462, align 8
  %464 = call i32 @CoTaskMemFree(%struct.TYPE_24__* %463)
  br label %465

465:                                              ; preds = %460, %455
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %467 = call i32 @CoTaskMemFree(%struct.TYPE_24__* %466)
  br label %468

468:                                              ; preds = %465, %340, %164
  %469 = load i32, i32* %14, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %14, align 4
  br label %52

471:                                              ; preds = %60
  br label %472

472:                                              ; preds = %471, %50, %44
  %473 = load i32*, i32** %10, align 8
  %474 = call i32 @IAMStreamConfig_Release(i32* %473)
  %475 = load i8*, i8** %13, align 8
  %476 = call i32 @av_free(i8* %475)
  %477 = load i32*, i32** %8, align 8
  %478 = icmp ne i32* %477, null
  br i1 %478, label %479, label %482

479:                                              ; preds = %472
  %480 = load i32, i32* %12, align 4
  %481 = load i32*, i32** %8, align 8
  store i32 %480, i32* %481, align 4
  br label %482

482:                                              ; preds = %38, %479, %472
  ret void
}

declare dso_local i32 @IPin_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAMStreamConfig_GetNumberOfCapabilities(i32*, i32*, i32*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @IAMStreamConfig_GetStreamCaps(i32*, i32, %struct.TYPE_24__**, i8*) #1

declare dso_local i32* @avformat_get_riff_video_tags(...) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @dshow_pixfmt(i64, i32) #1

declare dso_local i64 @av_codec_get_id(i32**, i64) #1

declare dso_local %struct.TYPE_22__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_33__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @IAMStreamConfig_SetFormat(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_24__*) #1

declare dso_local i32 @IAMStreamConfig_Release(i32*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
