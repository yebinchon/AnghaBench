; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"MythTVVideo\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid frame rate %f\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid frame rate %f, setting to 0.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_NUV = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @nuv_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuv_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %25 = call i32 @avio_read(i32* %23, i8* %24, i32 12)
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %27 = call i32 @memcmp(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 12)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @avio_skip(i32* %31, i32 5)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @avio_skip(i32* %33, i32 3)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @avio_rl32(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_rl32(i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @avio_rl32(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @avio_rl32(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @avio_r8(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @avio_skip(i32* %45, i32 3)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @avio_rl64(i32* %47)
  %49 = call double @av_int2double(i32 %48)
  store double %49, double* %7, align 8
  %50 = load double, double* %7, align 8
  %51 = fcmp ogt double %50, 9.999000e-01
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load double, double* %7, align 8
  %54 = fcmp olt double %53, 1.000100e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store double 0x3FF5555555555555, double* %7, align 8
  br label %56

56:                                               ; preds = %55, %52, %1
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @avio_rl64(i32* %57)
  %59 = call double @av_int2double(i32 %58)
  store double %59, double* %8, align 8
  %60 = load double, double* %8, align 8
  %61 = fcmp olt double %60, 0.000000e+00
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AV_EF_EXPLODE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load double, double* %8, align 8
  %73 = call i32 @av_log(%struct.TYPE_17__* %70, i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), double %72)
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %241

75:                                               ; preds = %62
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = load i32, i32* @AV_LOG_WARNING, align 4
  %78 = load double, double* %8, align 8
  %79 = call i32 @av_log(%struct.TYPE_17__* %76, i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), double %78)
  store double 0.000000e+00, double* %8, align 8
  br label %80

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @avio_rl32(i32* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @avio_rl32(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @avio_rl32(i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @avio_rl32(i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %155

92:                                               ; preds = %81
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %93, i32* null)
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %15, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %241

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = call i32 @av_image_check_size(i32 %106, i32 %107, i32 0, %struct.TYPE_17__* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %2, align 4
  br label %241

114:                                              ; preds = %100
  %115 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 9
  store i32 %115, i32* %119, align 8
  %120 = load i64, i64* @AV_CODEC_ID_NUV, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  store i32 10, i32* %138, align 8
  %139 = load double, double* %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sitofp i32 %140 to double
  %142 = fmul double %139, %141
  %143 = load i32, i32* %10, align 4
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %142, %144
  %146 = call i8* @av_d2q(double %145, i32 10000)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load double, double* %8, align 8
  %150 = call i8* @av_d2q(double %149, i32 60000)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %154 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %153, i32 32, i32 1, i32 1000)
  br label %158

155:                                              ; preds = %81
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i32 -1, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %114
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %212

161:                                              ; preds = %158
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %162, i32* null)
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %16, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %165 = icmp ne %struct.TYPE_16__* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = call i32 @AVERROR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %241

169:                                              ; preds = %161
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 9
  store i32 %175, i32* %179, align 8
  %180 = load i64, i64* @AV_CODEC_ID_PCM_S16LE, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i64 %180, i64* %184, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  store i32 2, i32* %188, align 4
  %189 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 8
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 5
  store i32 44100, i32* %197, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  store i32 1411200, i32* %201, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 7
  store i32 4, i32* %205, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  store i32 16, i32* %209, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %211 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %210, i32 32, i32 1, i32 1000)
  br label %215

212:                                              ; preds = %158
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  store i32 -1, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %169
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %217 = load i32*, i32** %5, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @get_codec_data(%struct.TYPE_17__* %216, i32* %217, %struct.TYPE_16__* %218, %struct.TYPE_16__* %219, i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = load i32, i32* %14, align 4
  store i32 %224, i32* %2, align 4
  br label %241

225:                                              ; preds = %215
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %227 = icmp ne %struct.TYPE_16__* %226, null
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @AV_CODEC_ID_NUV, align 8
  %235 = icmp eq i64 %233, %234
  br label %236

236:                                              ; preds = %228, %225
  %237 = phi i1 [ false, %225 ], [ %235, %228 ]
  %238 = zext i1 %237 to i32
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 4
  store i32 0, i32* %2, align 4
  br label %241

241:                                              ; preds = %236, %223, %166, %112, %97, %69
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local double @av_int2double(i32) #1

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, double) #1

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_check_size(i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i8* @av_d2q(double, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @get_codec_data(%struct.TYPE_17__*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
