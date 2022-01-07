; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32*, i32**, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Frame should have at least %d bytes, got %d instead\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid frame dimensions %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid quality setting %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid frame type %d\0A\00", align 1
@SKIP_FRAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Empty frame found but it is not a skip frame.\0A\00", align 1
@INTRA_FRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Error decoding DCT block %d,%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error decoding VQ block %d,%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Skip block in intra frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @mss4_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss4_decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %12, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @HEADER_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i32, i32* @HEADER_SIZE, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %40, i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %5, align 4
  br label %369

46:                                               ; preds = %4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @bytestream2_init(i32* %14, i32* %47, i32 %48)
  %50 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %50, i32* %16, align 4
  %51 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %51, i32* %17, align 4
  %52 = call i32 @bytestream2_skip(i32* %14, i32 2)
  %53 = call i32 @bytestream2_get_byte(i32* %14)
  store i32 %53, i32* %18, align 4
  %54 = call i32 @bytestream2_get_byte(i32* %14)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60, %46
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %67, i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %5, align 4
  br label %369

73:                                               ; preds = %60
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  %78 = icmp sgt i32 %77, 100
  br i1 %78, label %79, label %85

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %80, i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %5, align 4
  br label %369

85:                                               ; preds = %76
  %86 = load i32, i32* %19, align 4
  %87 = and i32 %86, -4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %98

92:                                               ; preds = %89, %85
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %93, i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %5, align 4
  br label %369

98:                                               ; preds = %89
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @SKIP_FRAME, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %106, i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %109, i32* %5, align 4
  br label %369

110:                                              ; preds = %102, %98
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @FFALIGN(i32 %111, i32 16)
  %113 = ashr i32 %112, 4
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @FFALIGN(i32 %114, i32 16)
  %116 = ashr i32 %115, 4
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @SKIP_FRAME, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 8, %121
  %123 = load i32, i32* @HEADER_SIZE, align 4
  %124 = mul nsw i32 8, %123
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = icmp slt i32 %122, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %5, align 4
  br label %369

132:                                              ; preds = %120, %110
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = call i32 @ff_reget_buffer(%struct.TYPE_16__* %133, %struct.TYPE_13__* %136, i32 0)
  store i32 %137, i32* %26, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %26, align 4
  store i32 %140, i32* %5, align 4
  br label %369

141:                                              ; preds = %132
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* @INTRA_FRAME, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* @INTRA_FRAME, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %157

155:                                              ; preds = %141
  %156 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  store i32 %158, i32* %162, align 8
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* @SKIP_FRAME, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %157
  %167 = load i32*, i32** %8, align 8
  store i32 1, i32* %167, align 4
  %168 = load i8*, i8** %7, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = call i32 @av_frame_ref(i8* %168, %struct.TYPE_13__* %171)
  store i32 %172, i32* %26, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* %26, align 4
  store i32 %175, i32* %5, align 4
  br label %369

176:                                              ; preds = %166
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %5, align 4
  br label %369

178:                                              ; preds = %157
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %178
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  store i32 0, i32* %22, align 4
  br label %188

188:                                              ; preds = %205, %184
  %189 = load i32, i32* %22, align 4
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %22, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %22, align 4
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 @ff_mss34_gen_quant_mat(i32 %198, i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %191
  %206 = load i32, i32* %22, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %22, align 4
  br label %188

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %208, %178
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* @HEADER_SIZE, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @HEADER_SIZE, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 @init_get_bits8(i32* %13, i32* %213, i32 %216)
  store i32 %217, i32* %26, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* %26, align 4
  store i32 %220, i32* %5, align 4
  br label %369

221:                                              ; preds = %209
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  %226 = load i32**, i32*** %225, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  store i32* %228, i32** %229, align 16
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32**, i32*** %233, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 1
  store i32* %236, i32** %237, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i32**, i32*** %241, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 2
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 2
  store i32* %244, i32** %245, align 16
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @memset(i32 %248, i32 0, i32 4)
  store i32 0, i32* %21, align 4
  br label %250

250:                                              ; preds = %354, %221
  %251 = load i32, i32* %21, align 4
  %252 = load i32, i32* %24, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %357

254:                                              ; preds = %250
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @memset(i32 %257, i32 0, i32 4)
  store i32 0, i32* %20, align 4
  br label %259

259:                                              ; preds = %314, %254
  %260 = load i32, i32* %20, align 4
  %261 = load i32, i32* %23, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %317

263:                                              ; preds = %259
  %264 = call i32 @decode012(i32* %13)
  store i32 %264, i32* %25, align 4
  %265 = load i32, i32* %25, align 4
  switch i32 %265, label %306 [
    i32 130, label %266
    i32 129, label %281
    i32 128, label %296
  ]

266:                                              ; preds = %263
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %268 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %21, align 4
  %271 = call i32 @mss4_decode_dct_block(%struct.TYPE_14__* %267, i32* %13, i32** %268, i32 %269, i32 %270)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %275 = load i32, i32* @AV_LOG_ERROR, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %274, i32 %275, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %276, i32 %277)
  %279 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %279, i32* %5, align 4
  br label %369

280:                                              ; preds = %266
  br label %306

281:                                              ; preds = %263
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %283 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* %21, align 4
  %286 = call i32 @mss4_decode_image_block(%struct.TYPE_14__* %282, i32* %13, i32** %283, i32 %284, i32 %285)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %281
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %290 = load i32, i32* @AV_LOG_ERROR, align 4
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %21, align 4
  %293 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %289, i32 %290, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %291, i32 %292)
  %294 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %294, i32* %5, align 4
  br label %369

295:                                              ; preds = %281
  br label %306

296:                                              ; preds = %263
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* @INTRA_FRAME, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %302 = load i32, i32* @AV_LOG_ERROR, align 4
  %303 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %301, i32 %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %304 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %304, i32* %5, align 4
  br label %369

305:                                              ; preds = %296
  br label %306

306:                                              ; preds = %263, %305, %295, %280
  %307 = load i32, i32* %25, align 4
  %308 = icmp ne i32 %307, 130
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %311 = load i32, i32* %20, align 4
  %312 = call i32 @mss4_update_dc_cache(%struct.TYPE_14__* %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %306
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %259

317:                                              ; preds = %259
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %324, 16
  %326 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %327 = load i32*, i32** %326, align 16
  %328 = sext i32 %325 to i64
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  store i32* %329, i32** %326, align 16
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 16
  %338 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 1
  %339 = load i32*, i32** %338, align 8
  %340 = sext i32 %337 to i64
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  store i32* %341, i32** %338, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 2
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %348, 16
  %350 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 2
  %351 = load i32*, i32** %350, align 16
  %352 = sext i32 %349 to i64
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32* %353, i32** %350, align 16
  br label %354

354:                                              ; preds = %317
  %355 = load i32, i32* %21, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %21, align 4
  br label %250

357:                                              ; preds = %250
  %358 = load i8*, i8** %7, align 8
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %360, align 8
  %362 = call i32 @av_frame_ref(i8* %358, %struct.TYPE_13__* %361)
  store i32 %362, i32* %26, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %357
  %365 = load i32, i32* %26, align 4
  store i32 %365, i32* %5, align 4
  br label %369

366:                                              ; preds = %357
  %367 = load i32*, i32** %8, align 8
  store i32 1, i32* %367, align 4
  %368 = load i32, i32* %11, align 4
  store i32 %368, i32* %5, align 4
  br label %369

369:                                              ; preds = %366, %364, %300, %288, %273, %219, %176, %174, %139, %130, %105, %92, %79, %66, %39
  %370 = load i32, i32* %5, align 4
  ret i32 %370
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_16__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ff_mss34_gen_quant_mat(i32, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @decode012(i32*) #1

declare dso_local i32 @mss4_decode_dct_block(%struct.TYPE_14__*, i32*, i32**, i32, i32) #1

declare dso_local i32 @mss4_decode_image_block(%struct.TYPE_14__*, i32*, i32**, i32, i32) #1

declare dso_local i32 @mss4_update_dc_cache(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
