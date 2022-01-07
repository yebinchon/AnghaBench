; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_kmvc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_kmvc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32, i32*, i32*, i32*, i32*, i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32**, i32*, i32 }

@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@KMVC_KEYFRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@KMVC_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Block size = %i\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@KMVC_METHOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown compression method %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %11, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %27 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %25, i32 %26, i32* %18)
  store i32* %27, i32** %19, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bytestream2_init(i32* %29, i32 %32, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = call i32 @ff_get_buffer(%struct.TYPE_16__* %37, %struct.TYPE_15__* %38, i32 0)
  store i32 %39, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %300

43:                                               ; preds = %4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 6
  %46 = call i32 @bytestream2_get_byte(i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 6
  %49 = call i32 @bytestream2_peek_byte(i32* %48)
  %50 = icmp eq i32 %49, 127
  br i1 %50, label %51, label %83

51:                                               ; preds = %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 6
  %54 = call i32 @bytestream2_skip(i32* %53, i32 3)
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %75, %51
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 127
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 6
  %61 = call i32 @bytestream2_get_be24(i32* %60)
  %62 = or i32 -16777216, %61
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %67, 129
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 6
  %74 = call i32 @bytestream2_skip(i32* %73, i32 1)
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  %81 = load i32, i32* @SEEK_CUR, align 4
  %82 = call i32 @bytestream2_seek(i32* %80, i32 -511, i32 %81)
  br label %83

83:                                               ; preds = %78, %43
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @KMVC_KEYFRAME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %100

94:                                               ; preds = %83
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @KMVC_PALETTE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %100
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %125, %105
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 6
  %117 = call i32 @bytestream2_get_be24(i32* %116)
  %118 = or i32 -16777216, %117
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %108

128:                                              ; preds = %108
  br label %129

129:                                              ; preds = %128, %100
  %130 = load i32*, i32** %19, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @AVPALETTE_SIZE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = load i32, i32* @AVPALETTE_SIZE, align 4
  %144 = call i32 @memcpy(i32* %141, i32* %142, i32 %143)
  br label %154

145:                                              ; preds = %132, %129
  %146 = load i32*, i32** %19, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @av_log(%struct.TYPE_16__* %149, i32 %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %148, %145
  br label %154

154:                                              ; preds = %153, %136
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 7
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @memcpy(i32* %169, i32* %172, i32 1024)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 6
  %176 = call i32 @bytestream2_get_byte(i32* %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 8
  br i1 %178, label %179, label %188

179:                                              ; preds = %164
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 127
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @av_log(%struct.TYPE_16__* %183, i32 %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %187, i32* %5, align 4
  br label %300

188:                                              ; preds = %179, %164
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @memset(i32* %191, i32 0, i32 64000)
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @KMVC_METHOD, align 4
  %195 = and i32 %193, %194
  switch i32 %195, label %222 [
    i32 0, label %196
    i32 1, label %196
    i32 3, label %204
    i32 4, label %213
  ]

196:                                              ; preds = %188, %188
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @memcpy(i32* %199, i32* %202, i32 64000)
  br label %230

204:                                              ; preds = %188
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @kmvc_decode_intra_8x8(%struct.TYPE_13__* %205, i32 %208, i32 %211)
  br label %230

213:                                              ; preds = %188
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @kmvc_decode_inter_8x8(%struct.TYPE_13__* %214, i32 %217, i32 %220)
  br label %230

222:                                              ; preds = %188
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @KMVC_METHOD, align 4
  %227 = and i32 %225, %226
  %228 = call i32 @av_log(%struct.TYPE_16__* %223, i32 %224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %229, i32* %5, align 4
  br label %300

230:                                              ; preds = %213, %204, %196
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %12, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %239

239:                                              ; preds = %262, %230
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %265

245:                                              ; preds = %239
  %246 = load i32*, i32** %12, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @memcpy(i32* %246, i32* %247, i32 %250)
  %252 = load i32*, i32** %13, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 320
  store i32* %253, i32** %13, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %12, align 8
  br label %262

262:                                              ; preds = %245
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %239

265:                                              ; preds = %239
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = icmp eq i32* %268, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %265
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  store i32* %276, i32** %278, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 3
  store i32* %281, i32** %283, align 8
  br label %295

284:                                              ; preds = %265
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 4
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  store i32* %287, i32** %289, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  store i32* %292, i32** %294, align 8
  br label %295

295:                                              ; preds = %284, %273
  %296 = load i32*, i32** %8, align 8
  store i32 1, i32* %296, align 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %5, align 4
  br label %300

300:                                              ; preds = %295, %222, %182, %41
  %301 = load i32, i32* %5, align 4
  ret i32 %301
}

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kmvc_decode_intra_8x8(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @kmvc_decode_inter_8x8(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
