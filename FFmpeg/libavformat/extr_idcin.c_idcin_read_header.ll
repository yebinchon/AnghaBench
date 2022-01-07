; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_idcin.c_idcin_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_idcin.c_idcin_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"incomplete header\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid sample rate: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid bytes per sample: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid channels: %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IDCIN_FPS = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_IDCIN = common dso_local global i32 0, align 4
@HUFFMAN_TABLE_SIZE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @idcin_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idcin_read_header(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = call i32 @avio_rl32(%struct.TYPE_18__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = call i32 @avio_rl32(%struct.TYPE_18__* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = call i32 @avio_rl32(%struct.TYPE_18__* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = call i32 @avio_rl32(%struct.TYPE_18__* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = call i32 @avio_rl32(%struct.TYPE_18__* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %36, i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  br label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @AVERROR_EOF, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %50, %45 ], [ %52, %51 ]
  store i32 %54, i32* %2, align 4
  br label %303

55:                                               ; preds = %1
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i64 @av_image_check_size(i32 %56, i32 %57, i32 0, %struct.TYPE_19__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %2, align 4
  br label %303

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %67, 14
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @INT_MAX, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %2, align 4
  br label %303

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %86, i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %2, align 4
  br label %303

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp ugt i32 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %98, i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %2, align 4
  br label %303

103:                                              ; preds = %94
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %109

106:                                              ; preds = %63
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__* %110, i32* null)
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %6, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = icmp ne %struct.TYPE_17__* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %2, align 4
  br label %303

117:                                              ; preds = %109
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %119 = load i32, i32* @IDCIN_FPS, align 4
  %120 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %118, i32 33, i32 1, i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 10
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* @AV_CODEC_ID_IDCIN, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 8
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 2
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = load i32, i32* @HUFFMAN_TABLE_SIZE, align 4
  %158 = call i32 @ff_get_extradata(%struct.TYPE_19__* %152, %struct.TYPE_20__* %155, %struct.TYPE_18__* %156, i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %117
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %2, align 4
  br label %303

162:                                              ; preds = %117
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %294

167:                                              ; preds = %162
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %171 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__* %170, i32* null)
  store %struct.TYPE_17__* %171, %struct.TYPE_17__** %6, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = icmp ne %struct.TYPE_17__* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %2, align 4
  br label %303

177:                                              ; preds = %167
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %178, i32 63, i32 1, i32 %179)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 10
  store i32 %188, i32* %192, align 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 3
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ugt i32 %202, 1
  br i1 %203, label %204, label %206

204:                                              ; preds = %177
  %205 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %208

206:                                              ; preds = %177
  %207 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 9
  store i32 %209, i32* %213, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 4
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* %10, align 4
  %220 = mul i32 %219, 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 5
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = mul i32 %225, %226
  %228 = mul i32 %227, 8
  %229 = load i32, i32* %11, align 4
  %230 = mul i32 %228, %229
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 6
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %11, align 4
  %237 = mul i32 %235, %236
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 7
  store i32 %237, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %252

246:                                              ; preds = %208
  %247 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 8
  store i32 %247, i32* %251, align 4
  br label %258

252:                                              ; preds = %208
  %253 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 8
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %252, %246
  %259 = load i32, i32* %9, align 4
  %260 = urem i32 %259, 14
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %258
  %263 = load i32, i32* %9, align 4
  %264 = udiv i32 %263, 14
  %265 = load i32, i32* %10, align 4
  %266 = mul i32 %264, %265
  %267 = load i32, i32* %11, align 4
  %268 = mul i32 %266, %267
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %9, align 4
  %272 = udiv i32 %271, 14
  %273 = add i32 %272, 1
  %274 = load i32, i32* %10, align 4
  %275 = mul i32 %273, %274
  %276 = load i32, i32* %11, align 4
  %277 = mul i32 %275, %276
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  br label %291

280:                                              ; preds = %258
  %281 = load i32, i32* %9, align 4
  %282 = udiv i32 %281, 14
  %283 = load i32, i32* %10, align 4
  %284 = mul i32 %282, %283
  %285 = load i32, i32* %11, align 4
  %286 = mul i32 %284, %285
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 2
  store i32 %286, i32* %290, align 8
  br label %291

291:                                              ; preds = %280, %262
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 6
  store i64 0, i64* %293, align 8
  br label %294

294:                                              ; preds = %291, %162
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 4
  store i32 1, i32* %296, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = call i32 @avio_tell(%struct.TYPE_18__* %299)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 4
  store i32 0, i32* %2, align 4
  br label %303

303:                                              ; preds = %294, %174, %160, %114, %97, %85, %73, %61, %53
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local i32 @avio_rl32(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i64 @av_image_check_size(i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ff_get_extradata(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
