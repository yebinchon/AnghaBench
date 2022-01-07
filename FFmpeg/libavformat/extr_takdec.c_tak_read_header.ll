; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_takdec.c_tak_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_takdec.c_tak_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__*, i64, i32 }
%struct.TYPE_25__ = type { i32*, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_TAK = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL_RAW = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@tak_check_crc = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d metadata block CRC error.\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"MD5 metadata block CRC error.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MD5=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@TAK_LAST_FRAME_POS_BITS = common dso_local global i32 0, align 4
@TAK_LAST_FRAME_SIZE_BITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"encoder version: %0X\0A\00", align 1
@TAK_ENCODER_VERSION_BITS = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*)* @tak_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tak_read_header(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %4, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %5, align 8
  store i32* null, i32** %8, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %23 = call %struct.TYPE_28__* @avformat_new_stream(%struct.TYPE_30__* %22, i32 0)
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %7, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = icmp ne %struct.TYPE_28__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %340

29:                                               ; preds = %1
  %30 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 7
  store i32 %30, i32* %34, align 8
  %35 = load i32, i32* @AV_CODEC_ID_TAK, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 6
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @AVSTREAM_PARSE_FULL_RAW, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %46 = call i64 @avio_rl32(%struct.TYPE_29__* %45)
  %47 = call i64 @MKTAG(i8 signext 116, i8 signext 66, i8 signext 97, i8 signext 75)
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = load i32, i32* @SEEK_CUR, align 4
  %52 = call i32 @avio_seek(%struct.TYPE_29__* %50, i32 -4, i32 %51)
  store i32 0, i32* %2, align 4
  br label %340

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %334, %53
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %56 = call i32 @avio_feof(%struct.TYPE_29__* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %335

59:                                               ; preds = %54
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %61 = call i32 @avio_r8(%struct.TYPE_29__* %60)
  %62 = and i32 %61, 127
  store i32 %62, i32* %10, align 4
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = call i32 @avio_rl24(%struct.TYPE_29__* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %216 [
    i32 128, label %66
    i32 130, label %76
    i32 132, label %76
    i32 129, label %139
    i32 131, label %193
  ]

66:                                               ; preds = %59
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %340

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %59, %59, %75
  %77 = load i32, i32* %11, align 4
  %78 = icmp sle i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %2, align 4
  br label %340

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 3
  %84 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i32* @av_malloc(i32 %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %340

92:                                               ; preds = %81
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 -3
  %98 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %99 = call i32 @memset(i32* %97, i32 0, i32 %98)
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %101 = load i32, i32* @tak_check_crc, align 4
  %102 = call i32 @ffio_init_checksum(%struct.TYPE_29__* %100, i32 %101, i32 13501623)
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 3
  %107 = call i32 @avio_read(%struct.TYPE_29__* %103, i32* %104, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 3
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = call i32 @av_freep(i32** %8)
  %113 = load i32, i32* @EIO, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %340

115:                                              ; preds = %92
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %117, align 8
  %119 = call i32 @ffio_get_checksum(%struct.TYPE_29__* %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %121 = call i32 @avio_rb24(%struct.TYPE_29__* %120)
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %125 = load i32, i32* @AV_LOG_ERROR, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %124, i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AV_EF_EXPLODE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = call i32 @av_freep(i32** %8)
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %2, align 4
  br label %340

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %115
  br label %225

139:                                              ; preds = %59
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 19
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %143, i32* %2, align 4
  br label %340

144:                                              ; preds = %139
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %146 = load i32, i32* @tak_check_crc, align 4
  %147 = call i32 @ffio_init_checksum(%struct.TYPE_29__* %145, i32 %146, i32 13501623)
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %150 = call i32 @avio_read(%struct.TYPE_29__* %148, i32* %149, i32 16)
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %152, align 8
  %154 = call i32 @ffio_get_checksum(%struct.TYPE_29__* %153)
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %156 = call i32 @avio_rb24(%struct.TYPE_29__* %155)
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %144
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %160 = load i32, i32* @AV_LOG_ERROR, align 4
  %161 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %159, i32 %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @AV_EF_EXPLODE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %169, i32* %2, align 4
  br label %340

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %144
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %173 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %174 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %172, i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %186, %171
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 16
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %180 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %179, i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %175

189:                                              ; preds = %175
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %191 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %192 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %190, i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %225

193:                                              ; preds = %59
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %195 = call i32 @avio_tell(%struct.TYPE_29__* %194)
  store i32 %195, i32* %14, align 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %204 = call i32 @ff_ape_parse_tag(%struct.TYPE_30__* %203)
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @SEEK_SET, align 4
  %208 = call i32 @avio_seek(%struct.TYPE_29__* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %202, %193
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, %211
  store i64 %215, i64* %213, align 8
  store i32 0, i32* %2, align 4
  br label %340

216:                                              ; preds = %59
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @avio_skip(%struct.TYPE_29__* %217, i32 %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %2, align 4
  br label %340

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %189, %138
  %226 = load i32, i32* %10, align 4
  %227 = icmp eq i32 %226, 128
  br i1 %227, label %228, label %295

228:                                              ; preds = %225
  %229 = load i32*, i32** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sub nsw i32 %230, 3
  %232 = call i32 @avpriv_tak_parse_streaminfo(%struct.TYPE_26__* %15, i32* %229, i32 %231)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %337

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %236
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 5
  store i32 %247, i32* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 4
  store i64 %257, i64* %261, align 8
  br label %262

262:                                              ; preds = %255, %245
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 2
  store i32 %264, i32* %268, align 4
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  store i32 %270, i32* %274, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 2
  store i64 0, i64* %276, align 8
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @avpriv_set_pts_info(%struct.TYPE_28__* %277, i32 64, i32 1, i32 %282)
  %284 = load i32*, i32** %8, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  store i32* %284, i32** %288, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sub nsw i32 %289, 3
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  store i32 %290, i32* %294, align 8
  store i32* null, i32** %8, align 8
  br label %334

295:                                              ; preds = %225
  %296 = load i32, i32* %10, align 4
  %297 = icmp eq i32 %296, 130
  br i1 %297, label %298, label %318

298:                                              ; preds = %295
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 11
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %302, i32* %9, align 4
  br label %337

303:                                              ; preds = %298
  %304 = load i32*, i32** %8, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sub nsw i32 %305, 3
  %307 = call i32 @init_get_bits8(i32* %6, i32* %304, i32 %306)
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 8
  %310 = load i32, i32* @TAK_LAST_FRAME_POS_BITS, align 4
  %311 = call i64 @get_bits64(i32* %6, i32 %310)
  %312 = load i32, i32* @TAK_LAST_FRAME_SIZE_BITS, align 4
  %313 = call i64 @get_bits(i32* %6, i32 %312)
  %314 = add nsw i64 %311, %313
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 1
  store i64 %314, i64* %316, align 8
  %317 = call i32 @av_freep(i32** %8)
  br label %333

318:                                              ; preds = %295
  %319 = load i32, i32* %10, align 4
  %320 = icmp eq i32 %319, 132
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load i32*, i32** %8, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sub nsw i32 %323, 3
  %325 = call i32 @init_get_bits8(i32* %6, i32* %322, i32 %324)
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %327 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %328 = load i32, i32* @TAK_ENCODER_VERSION_BITS, align 4
  %329 = call i32 @get_bits_long(i32* %6, i32 %328)
  %330 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %326, i32 %327, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %329)
  %331 = call i32 @av_freep(i32** %8)
  br label %332

332:                                              ; preds = %321, %318
  br label %333

333:                                              ; preds = %332, %303
  br label %334

334:                                              ; preds = %333, %262
  br label %54

335:                                              ; preds = %54
  %336 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %336, i32* %2, align 4
  br label %340

337:                                              ; preds = %301, %235
  %338 = call i32 @av_freep(i32** %8)
  %339 = load i32, i32* %9, align 4
  store i32 %339, i32* %2, align 4
  br label %340

340:                                              ; preds = %337, %335, %222, %209, %168, %142, %134, %111, %89, %79, %73, %49, %26
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local %struct.TYPE_28__* @avformat_new_stream(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_rl32(%struct.TYPE_29__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_seek(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @avio_feof(%struct.TYPE_29__*) #1

declare dso_local i32 @avio_r8(%struct.TYPE_29__*) #1

declare dso_local i32 @avio_rl24(%struct.TYPE_29__*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ffio_init_checksum(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @ffio_get_checksum(%struct.TYPE_29__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_29__*) #1

declare dso_local i32 @av_log(%struct.TYPE_30__*, i32, i8*, ...) #1

declare dso_local i32 @avio_tell(%struct.TYPE_29__*) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_30__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @avpriv_tak_parse_streaminfo(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i64 @get_bits64(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
