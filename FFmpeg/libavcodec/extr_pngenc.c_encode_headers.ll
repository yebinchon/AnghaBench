; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_encode_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_encode_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i64, i64* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@AV_FRAME_DATA_STEREO3D = common dso_local global i32 0, align 4
@AV_STEREO3D_FLAG_INVERT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Only side-by-side stereo3d flag can be defined within sTER chunk\0A\00", align 1
@AVCOL_PRI_BT709 = common dso_local global i64 0, align 8
@AVCOL_TRC_IEC61966_2_1 = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @encode_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_headers(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @AV_WB32(i32* %20, i64 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @AV_WB32(i32* %28, i64 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 10
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = call i32 @MKTAG(i8 signext 73, i8 signext 72, i8 signext 68, i8 signext 82)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @png_write_chunk(i32* %63, i32 %64, i32* %67, i32 13)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @AV_WB32(i32* %76, i64 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @AV_WB32(i32* %84, i64 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  store i32 1, i32* %92, align 4
  br label %115

93:                                               ; preds = %2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @AV_WB32(i32* %96, i64 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @AV_WB32(i32* %105, i64 %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 8
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %93, %73
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 4
  %118 = call i32 @MKTAG(i8 signext 112, i8 signext 72, i8 signext 89, i8 signext 115)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @png_write_chunk(i32* %117, i32 %118, i32* %121, i32 9)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = load i32, i32* @AV_FRAME_DATA_STEREO3D, align 4
  %125 = call %struct.TYPE_15__* @av_frame_get_side_data(%struct.TYPE_16__* %123, i32 %124)
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %5, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = icmp ne %struct.TYPE_15__* %126, null
  br i1 %127, label %128, label %162

128:                                              ; preds = %115
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %7, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %157 [
    i32 128, label %136
    i32 129, label %156
  ]

136:                                              ; preds = %128
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  %151 = call i32 @MKTAG(i8 signext 115, i8 signext 84, i8 signext 69, i8 signext 82)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @png_write_chunk(i32* %150, i32 %151, i32* %154, i32 1)
  br label %161

156:                                              ; preds = %128
  br label %161

157:                                              ; preds = %128
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = load i32, i32* @AV_LOG_WARNING, align 4
  %160 = call i32 @av_log(%struct.TYPE_17__* %158, i32 %159, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %156, %136
  br label %162

162:                                              ; preds = %161, %115
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AVCOL_PRI_BT709, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %162
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AVCOL_TRC_IEC61966_2_1, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %168
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  %181 = call i32 @MKTAG(i8 signext 115, i8 signext 82, i8 signext 71, i8 signext 66)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @png_write_chunk(i32* %180, i32 %181, i32* %184, i32 1)
  br label %186

186:                                              ; preds = %174, %168, %162
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i64 @png_get_chrm(i64 %189, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %186
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 4
  %198 = call i32 @MKTAG(i8 signext 99, i8 signext 72, i8 signext 82, i8 signext 77)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @png_write_chunk(i32* %197, i32 %198, i32* %201, i32 32)
  br label %203

203:                                              ; preds = %195, %186
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i64 @png_get_gama(i64 %206, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %203
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 4
  %215 = call i32 @MKTAG(i8 signext 103, i8 signext 65, i8 signext 77, i8 signext 65)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @png_write_chunk(i32* %214, i32 %215, i32* %218, i32 4)
  br label %220

220:                                              ; preds = %212, %203
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %284

227:                                              ; preds = %220
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 1
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i32*
  store i32* %233, i32** %12, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  store i32* %236, i32** %13, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 768
  store i32* %240, i32** %14, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %261, %227
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 256
  br i1 %243, label %244, label %264

244:                                              ; preds = %241
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = lshr i32 %250, 24
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 255
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  store i32 1, i32* %8, align 4
  br label %255

255:                                              ; preds = %254, %244
  %256 = load i32, i32* %9, align 4
  %257 = load i32*, i32** %14, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %14, align 8
  store i32 %256, i32* %257, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @bytestream_put_be24(i32** %13, i32 %259)
  br label %261

261:                                              ; preds = %255
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %10, align 4
  br label %241

264:                                              ; preds = %241
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 4
  %267 = call i32 @MKTAG(i8 signext 80, i8 signext 76, i8 signext 84, i8 signext 69)
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @png_write_chunk(i32* %266, i32 %267, i32* %270, i32 768)
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %264
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 4
  %277 = call i32 @MKTAG(i8 signext 116, i8 signext 82, i8 signext 78, i8 signext 83)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 768
  %282 = call i32 @png_write_chunk(i32* %276, i32 %277, i32* %281, i32 256)
  br label %283

283:                                              ; preds = %274, %264
  br label %284

284:                                              ; preds = %283, %220
  ret i32 0
}

declare dso_local i32 @AV_WB32(i32*, i64) #1

declare dso_local i32 @png_write_chunk(i32*, i32, i32*, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_15__* @av_frame_get_side_data(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @png_get_chrm(i64, i32*) #1

declare dso_local i64 @png_get_gama(i64, i32*) #1

declare dso_local i32 @bytestream_put_be24(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
