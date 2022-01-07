; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mxpegdec.c_mxpeg_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mxpegdec.c_mxpeg_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, i64, %struct.TYPE_27__**, i32, i32*, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32, i32*, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32* }

@APP0 = common dso_local global i32 0, align 4
@APP15 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"quantization table decode error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"huffman table decode error\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SOF data decode error\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Interlaced mode not supported in MxPEG\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Can not process SOS without SOF data, skipping\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"First picture has no SOF, skipping\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Non-key frame has no MXM, skipping\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i8*, i32*, %struct.TYPE_26__*)* @mxpeg_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxpeg_decode_frame(%struct.TYPE_28__* %0, i8* %1, i32* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %9, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %12, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 7
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %13, align 8
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %14, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %283, %4
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %292

46:                                               ; preds = %42
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @ff_mjpeg_find_marker(%struct.TYPE_25__* %47, i32** %15, i32* %48, i32** %16, i32* %17)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %293

53:                                               ; preds = %46
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = mul nsw i32 %57, 8
  %59 = call i32 @init_get_bits(i32* %55, i32* %56, i32 %58)
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @APP0, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @APP15, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @mxpeg_decode_app(%struct.TYPE_24__* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %63, %53
  %73 = load i32, i32* %18, align 4
  switch i32 %73, label %283 [
    i32 129, label %74
    i32 131, label %81
    i32 132, label %82
    i32 133, label %93
    i32 134, label %104
    i32 130, label %114
    i32 128, label %140
  ]

74:                                               ; preds = %72
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %293

80:                                               ; preds = %74
  br label %283

81:                                               ; preds = %72
  br label %293

82:                                               ; preds = %72
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = call i32 @ff_mjpeg_decode_dqt(%struct.TYPE_25__* %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = call i32 @av_log(%struct.TYPE_28__* %88, i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %19, align 4
  store i32 %91, i32* %5, align 4
  br label %349

92:                                               ; preds = %82
  br label %283

93:                                               ; preds = %72
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %95 = call i32 @ff_mjpeg_decode_dht(%struct.TYPE_25__* %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(%struct.TYPE_28__* %99, i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %5, align 4
  br label %349

103:                                              ; preds = %93
  br label %283

104:                                              ; preds = %72
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @mxpeg_decode_com(%struct.TYPE_24__* %105, i32* %106, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %5, align 4
  br label %349

113:                                              ; preds = %104
  br label %283

114:                                              ; preds = %72
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %118 = call i32 @ff_mjpeg_decode_sof(%struct.TYPE_25__* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_28__* %122, i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %5, align 4
  br label %349

126:                                              ; preds = %114
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = call i32 @av_log(%struct.TYPE_28__* %132, i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = call i32 @AVERROR(i32 %135)
  store i32 %136, i32* %5, align 4
  br label %349

137:                                              ; preds = %126
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %283

140:                                              ; preds = %72
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %147 = load i32, i32* @AV_LOG_WARNING, align 4
  %148 = call i32 @av_log(%struct.TYPE_28__* %146, i32 %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %283

149:                                              ; preds = %140
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %198, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %161 = load i32, i32* @AV_LOG_WARNING, align 4
  %162 = call i32 @av_log(%struct.TYPE_28__* %160, i32 %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %283

163:                                              ; preds = %154
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %170 = load i32, i32* @AV_LOG_WARNING, align 4
  %171 = call i32 @av_log(%struct.TYPE_28__* %169, i32 %170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %283

172:                                              ; preds = %163
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %174, align 8
  %176 = call i32 @av_frame_unref(%struct.TYPE_27__* %175)
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  %181 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %182 = call i32 @ff_get_buffer(%struct.TYPE_28__* %177, %struct.TYPE_27__* %180, i32 %181)
  store i32 %182, i32* %19, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %172
  %185 = load i32, i32* %19, align 4
  store i32 %185, i32* %5, align 4
  br label %349

186:                                              ; preds = %172
  %187 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 2
  store i32 %187, i32* %191, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  br label %208

198:                                              ; preds = %149
  %199 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 2
  store i32 %199, i32* %203, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  br label %208

208:                                              ; preds = %198, %186
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %267

213:                                              ; preds = %208
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %215, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %216, i64 %221
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  store %struct.TYPE_27__* %223, %struct.TYPE_27__** %20, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %227 = call i32 @mxpeg_check_dimensions(%struct.TYPE_24__* %224, %struct.TYPE_25__* %225, %struct.TYPE_27__* %226)
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %213
  br label %283

230:                                              ; preds = %213
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %230
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %240 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %241 = call i32 @ff_get_buffer(%struct.TYPE_28__* %238, %struct.TYPE_27__* %239, i32 %240)
  store i32 %241, i32* %19, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %19, align 4
  store i32 %244, i32* %5, align 4
  br label %349

245:                                              ; preds = %237, %230
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 6
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %254 = call i32 @ff_mjpeg_decode_sos(%struct.TYPE_25__* %246, i32* %249, i32 %252, %struct.TYPE_27__* %253)
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %245
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @AV_EF_EXPLODE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i32, i32* %19, align 4
  store i32 %265, i32* %5, align 4
  br label %349

266:                                              ; preds = %257, %245
  br label %282

267:                                              ; preds = %208
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %269 = call i32 @ff_mjpeg_decode_sos(%struct.TYPE_25__* %268, i32* null, i32 0, %struct.TYPE_27__* null)
  store i32 %269, i32* %19, align 4
  %270 = load i32, i32* %19, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @AV_EF_EXPLODE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %272
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %5, align 4
  br label %349

281:                                              ; preds = %272, %267
  br label %282

282:                                              ; preds = %281, %266
  br label %283

283:                                              ; preds = %72, %282, %229, %168, %159, %145, %137, %113, %103, %92, %80
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 2
  %286 = call i32 @get_bits_count(i32* %285)
  %287 = add nsw i32 %286, 7
  %288 = ashr i32 %287, 3
  %289 = load i32*, i32** %15, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %15, align 8
  br label %42

292:                                              ; preds = %42
  br label %293

293:                                              ; preds = %292, %81, %79, %52
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %341

298:                                              ; preds = %293
  %299 = load i8*, i8** %7, align 8
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %301, align 8
  %303 = call i32 @av_frame_ref(i8* %299, %struct.TYPE_27__* %302)
  store i32 %303, i32* %21, align 4
  %304 = load i32, i32* %21, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %298
  %307 = load i32, i32* %21, align 4
  store i32 %307, i32* %5, align 4
  br label %349

308:                                              ; preds = %298
  %309 = load i32*, i32** %8, align 8
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = xor i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %315, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %316, i64 %320
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %321, align 8
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 1
  store %struct.TYPE_27__* %322, %struct.TYPE_27__** %324, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %340, label %329

329:                                              ; preds = %308
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 2
  store i32 1, i32* %336, align 8
  br label %339

337:                                              ; preds = %329
  %338 = load i32*, i32** %8, align 8
  store i32 0, i32* %338, align 4
  br label %339

339:                                              ; preds = %337, %334
  br label %340

340:                                              ; preds = %339, %308
  br label %341

341:                                              ; preds = %340, %293
  %342 = load i32*, i32** %15, align 8
  %343 = load i32*, i32** %10, align 8
  %344 = ptrtoint i32* %342 to i64
  %345 = ptrtoint i32* %343 to i64
  %346 = sub i64 %344, %345
  %347 = sdiv exact i64 %346, 4
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %5, align 4
  br label %349

349:                                              ; preds = %341, %306, %279, %264, %243, %184, %131, %121, %111, %98, %87
  %350 = load i32, i32* %5, align 4
  ret i32 %350
}

declare dso_local i32 @ff_mjpeg_find_marker(%struct.TYPE_25__*, i32**, i32*, i32**, i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @mxpeg_decode_app(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @ff_mjpeg_decode_dqt(%struct.TYPE_25__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @ff_mjpeg_decode_dht(%struct.TYPE_25__*) #1

declare dso_local i32 @mxpeg_decode_com(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @ff_mjpeg_decode_sof(%struct.TYPE_25__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_27__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @mxpeg_check_dimensions(%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_mjpeg_decode_sos(%struct.TYPE_25__*, i32*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
