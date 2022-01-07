; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pictordec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pictordec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32**, i32*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported bit depth\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@ff_cga_palette = common dso_local global i32* null, align 8
@cga_mode45_index = common dso_local global i64** null, align 8
@ff_ega_palette = common dso_local global i32* null, align 8
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i8*, i32*, %struct.TYPE_29__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_31__* %0, i8* %1, i32* %2, %struct.TYPE_29__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %9, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %11, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bytestream2_init(%struct.TYPE_27__* %41, i32 %44, i32 %47)
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 3
  %51 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %50)
  %52 = icmp slt i32 %51, 11
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %613

55:                                               ; preds = %4
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 3
  %58 = call i32 @bytestream2_get_le16u(%struct.TYPE_27__* %57)
  %59 = icmp ne i32 %58, 4660
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %5, align 4
  br label %613

62:                                               ; preds = %55
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 3
  %65 = call i32 @bytestream2_get_le16u(%struct.TYPE_27__* %64)
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 3
  %70 = call i32 @bytestream2_get_le16u(%struct.TYPE_27__* %69)
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  %75 = call i32 @bytestream2_skip(%struct.TYPE_27__* %74, i32 4)
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 3
  %78 = call i32 @bytestream2_get_byteu(%struct.TYPE_27__* %77)
  store i32 %78, i32* %23, align 4
  %79 = load i32, i32* %23, align 4
  %80 = and i32 %79, 15
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %23, align 4
  %82 = ashr i32 %81, 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp sgt i32 %91, 8
  br i1 %92, label %99, label %93

93:                                               ; preds = %62
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 32
  br i1 %98, label %99, label %103

99:                                               ; preds = %96, %93, %62
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %101 = call i32 @avpriv_request_sample(%struct.TYPE_31__* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %102, i32* %5, align 4
  br label %613

103:                                              ; preds = %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 3
  %106 = call i32 @bytestream2_peek_byte(%struct.TYPE_27__* %105)
  %107 = icmp eq i32 %106, 255
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %135

117:                                              ; preds = %114, %111, %108, %103
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 3
  %120 = call i32 @bytestream2_skip(%struct.TYPE_27__* %119, i32 2)
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 3
  %123 = call i32 @bytestream2_get_le16(%struct.TYPE_27__* %122)
  store i32 %123, i32* %15, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 3
  %126 = call i32 @bytestream2_get_le16(%struct.TYPE_27__* %125)
  store i32 %126, i32* %16, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 3
  %129 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %128)
  %130 = load i32, i32* %16, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %5, align 4
  br label %613

134:                                              ; preds = %117
  br label %136

135:                                              ; preds = %114
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %147 = call i64 @av_image_check_size(i32 %142, i32 %145, i32 0, %struct.TYPE_31__* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  store i32 -1, i32* %5, align 4
  br label %613

150:                                              ; preds = %136
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %158, %150
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ff_set_dimensions(%struct.TYPE_31__* %167, i32 %170, i32 %173)
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %166
  %178 = load i32, i32* %24, align 4
  store i32 %178, i32* %5, align 4
  br label %613

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %158
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %183 = call i32 @ff_get_buffer(%struct.TYPE_31__* %181, %struct.TYPE_30__* %182, i32 0)
  store i32 %183, i32* %24, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %24, align 4
  store i32 %186, i32* %5, align 4
  br label %613

187:                                              ; preds = %180
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i32**, i32*** %189, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %195, %200
  %202 = call i32 @memset(i32* %192, i32 0, i32 %201)
  %203 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 2
  store i32 1, i32* %207, align 8
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 3
  %210 = call i32 @bytestream2_tell(%struct.TYPE_27__* %209)
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %18, align 4
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 0
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 1
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %12, align 8
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %257

220:                                              ; preds = %187
  %221 = load i32, i32* %16, align 4
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %257

223:                                              ; preds = %220
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 3
  %226 = call i32 @bytestream2_peek_byte(%struct.TYPE_27__* %225)
  %227 = icmp slt i32 %226, 6
  br i1 %227, label %228, label %257

228:                                              ; preds = %223
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 3
  %231 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %230)
  store i32 %231, i32* %26, align 4
  store i32 4, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %232

232:                                              ; preds = %253, %228
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %256

236:                                              ; preds = %232
  %237 = load i32*, i32** @ff_cga_palette, align 8
  %238 = load i64**, i64*** @cga_mode45_index, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64*, i64** %238, i64 %240
  %242 = load i64*, i64** %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds i32, i32* %237, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %12, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %248, i32* %252, align 4
  br label %253

253:                                              ; preds = %236
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %232

256:                                              ; preds = %232
  br label %400

257:                                              ; preds = %223, %220, %187
  %258 = load i32, i32* %15, align 4
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = load i32, i32* %16, align 4
  %262 = call i32 @FFMIN(i32 %261, i32 16)
  store i32 %262, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %263

263:                                              ; preds = %281, %260
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %17, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 3
  %270 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %269)
  store i32 %270, i32* %27, align 4
  %271 = load i32*, i32** @ff_cga_palette, align 8
  %272 = load i32, i32* %27, align 4
  %273 = call i32 @FFMIN(i32 %272, i32 15)
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %12, align 8
  %278 = load i32, i32* %19, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %276, i32* %280, align 4
  br label %281

281:                                              ; preds = %267
  %282 = load i32, i32* %19, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %19, align 4
  br label %263

284:                                              ; preds = %263
  br label %399

285:                                              ; preds = %257
  %286 = load i32, i32* %15, align 4
  %287 = icmp eq i32 %286, 3
  br i1 %287, label %288, label %313

288:                                              ; preds = %285
  %289 = load i32, i32* %16, align 4
  %290 = call i32 @FFMIN(i32 %289, i32 16)
  store i32 %290, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %291

291:                                              ; preds = %309, %288
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %312

295:                                              ; preds = %291
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 3
  %298 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %297)
  store i32 %298, i32* %28, align 4
  %299 = load i32*, i32** @ff_ega_palette, align 8
  %300 = load i32, i32* %28, align 4
  %301 = call i32 @FFMIN(i32 %300, i32 63)
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  br label %309

309:                                              ; preds = %295
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %19, align 4
  br label %291

312:                                              ; preds = %291
  br label %398

313:                                              ; preds = %285
  %314 = load i32, i32* %15, align 4
  %315 = icmp eq i32 %314, 4
  br i1 %315, label %319, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %15, align 4
  %318 = icmp eq i32 %317, 5
  br i1 %318, label %319, label %354

319:                                              ; preds = %316, %313
  %320 = load i32, i32* %16, align 4
  %321 = sdiv i32 %320, 3
  %322 = call i32 @FFMIN(i32 %321, i32 256)
  store i32 %322, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %323

323:                                              ; preds = %350, %319
  %324 = load i32, i32* %19, align 4
  %325 = load i32, i32* %17, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %353

327:                                              ; preds = %323
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 3
  %330 = call i32 @bytestream2_get_be24(%struct.TYPE_27__* %329)
  %331 = shl i32 %330, 2
  %332 = load i32*, i32** %12, align 8
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %331, i32* %335, align 4
  %336 = load i32*, i32** %12, align 8
  %337 = load i32, i32* %19, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = ashr i32 %340, 6
  %342 = and i32 %341, 197379
  %343 = or i32 -16777216, %342
  %344 = load i32*, i32** %12, align 8
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %343
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %327
  %351 = load i32, i32* %19, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %19, align 4
  br label %323

353:                                              ; preds = %323
  br label %397

354:                                              ; preds = %316
  %355 = load i32, i32* %14, align 4
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  store i32 2, i32* %17, align 4
  %358 = load i32*, i32** %12, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 -16777216, i32* %359, align 4
  %360 = load i32*, i32** %12, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  store i32 -1, i32* %361, align 4
  br label %396

362:                                              ; preds = %354
  %363 = load i32, i32* %14, align 4
  %364 = icmp eq i32 %363, 2
  br i1 %364, label %365, label %389

365:                                              ; preds = %362
  store i32 4, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %366

366:                                              ; preds = %385, %365
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %17, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %388

370:                                              ; preds = %366
  %371 = load i32*, i32** @ff_cga_palette, align 8
  %372 = load i64**, i64*** @cga_mode45_index, align 8
  %373 = getelementptr inbounds i64*, i64** %372, i64 0
  %374 = load i64*, i64** %373, align 8
  %375 = load i32, i32* %19, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i64, i64* %374, i64 %376
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds i32, i32* %371, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32*, i32** %12, align 8
  %382 = load i32, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %380, i32* %384, align 4
  br label %385

385:                                              ; preds = %370
  %386 = load i32, i32* %19, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %19, align 4
  br label %366

388:                                              ; preds = %366
  br label %395

389:                                              ; preds = %362
  store i32 16, i32* %17, align 4
  %390 = load i32*, i32** %12, align 8
  %391 = load i32*, i32** @ff_cga_palette, align 8
  %392 = load i32, i32* %17, align 4
  %393 = mul nsw i32 %392, 4
  %394 = call i32 @memcpy(i32* %390, i32* %391, i32 %393)
  br label %395

395:                                              ; preds = %389, %388
  br label %396

396:                                              ; preds = %395, %357
  br label %397

397:                                              ; preds = %396, %353
  br label %398

398:                                              ; preds = %397, %312
  br label %399

399:                                              ; preds = %398, %284
  br label %400

400:                                              ; preds = %399, %256
  %401 = load i32*, i32** %12, align 8
  %402 = load i32, i32* %17, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* @AVPALETTE_SIZE, align 4
  %406 = load i32, i32* %17, align 4
  %407 = mul nsw i32 %406, 4
  %408 = sub nsw i32 %405, %407
  %409 = call i32 @memset(i32* %404, i32 0, i32 %408)
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 3
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* @SEEK_SET, align 4
  %414 = call i32 @bytestream2_seek(%struct.TYPE_27__* %411, i32 %412, i32 %413)
  store i32 0, i32* %25, align 4
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* %21, align 4
  %419 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %419, i32 0, i32 3
  %421 = call i32 @bytestream2_get_le16(%struct.TYPE_27__* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %560

423:                                              ; preds = %400
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %424

424:                                              ; preds = %509, %423
  %425 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %425, i32 0, i32 3
  %427 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %426)
  %428 = icmp sge i32 %427, 6
  br i1 %428, label %429, label %510

429:                                              ; preds = %424
  %430 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %430, i32 0, i32 3
  %432 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %431)
  store i32 %432, i32* %31, align 4
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 3
  %435 = call i32 @bytestream2_get_le16(%struct.TYPE_27__* %434)
  store i32 %435, i32* %32, align 4
  %436 = load i32, i32* %31, align 4
  %437 = load i32, i32* %31, align 4
  %438 = load i32, i32* %32, align 4
  %439 = call i32 @FFMIN(i32 %437, i32 %438)
  %440 = sub nsw i32 %436, %439
  store i32 %440, i32* %29, align 4
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 3
  %443 = call i32 @bytestream2_skip(%struct.TYPE_27__* %442, i32 2)
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %444, i32 0, i32 3
  %446 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %445)
  store i32 %446, i32* %30, align 4
  br label %447

447:                                              ; preds = %508, %429
  %448 = load i32, i32* %22, align 4
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = icmp slt i32 %448, %451
  br i1 %452, label %453, label %459

453:                                              ; preds = %447
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i32 0, i32 3
  %456 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %455)
  %457 = load i32, i32* %29, align 4
  %458 = icmp sgt i32 %456, %457
  br label %459

459:                                              ; preds = %453, %447
  %460 = phi i1 [ false, %447 ], [ %458, %453 ]
  br i1 %460, label %461, label %509

461:                                              ; preds = %459
  store i32 1, i32* %33, align 4
  %462 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %463 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %462, i32 0, i32 3
  %464 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %463)
  store i32 %464, i32* %25, align 4
  %465 = load i32, i32* %25, align 4
  %466 = load i32, i32* %30, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %482

468:                                              ; preds = %461
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %469, i32 0, i32 3
  %471 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %470)
  store i32 %471, i32* %33, align 4
  %472 = load i32, i32* %33, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %468
  %475 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %475, i32 0, i32 3
  %477 = call i32 @bytestream2_get_le16(%struct.TYPE_27__* %476)
  store i32 %477, i32* %33, align 4
  br label %478

478:                                              ; preds = %474, %468
  %479 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %479, i32 0, i32 3
  %481 = call i32 @bytestream2_get_byte(%struct.TYPE_27__* %480)
  store i32 %481, i32* %25, align 4
  br label %482

482:                                              ; preds = %478, %461
  %483 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 3
  %485 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %482
  br label %509

488:                                              ; preds = %482
  %489 = load i32, i32* %13, align 4
  %490 = icmp eq i32 %489, 8
  br i1 %490, label %491, label %501

491:                                              ; preds = %488
  %492 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %493 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %494 = load i32, i32* %25, align 4
  %495 = load i32, i32* %33, align 4
  %496 = call i32 @picmemset_8bpp(%struct.TYPE_28__* %492, %struct.TYPE_30__* %493, i32 %494, i32 %495, i32* %20, i32* %21)
  %497 = load i32, i32* %21, align 4
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %491
  br label %608

500:                                              ; preds = %491
  br label %508

501:                                              ; preds = %488
  %502 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %503 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %504 = load i32, i32* %25, align 4
  %505 = load i32, i32* %33, align 4
  %506 = load i32, i32* %13, align 4
  %507 = call i32 @picmemset(%struct.TYPE_28__* %502, %struct.TYPE_30__* %503, i32 %504, i32 %505, i32* %20, i32* %21, i32* %22, i32 %506)
  br label %508

508:                                              ; preds = %501, %500
  br label %447

509:                                              ; preds = %487, %459
  br label %424

510:                                              ; preds = %424
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* %22, align 4
  %515 = sub nsw i32 %513, %514
  %516 = icmp sgt i32 %515, 1
  br i1 %516, label %517, label %519

517:                                              ; preds = %510
  %518 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %518, i32* %5, align 4
  br label %613

519:                                              ; preds = %510
  %520 = load i32, i32* %22, align 4
  %521 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %522 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 8
  %524 = icmp slt i32 %520, %523
  br i1 %524, label %525, label %559

525:                                              ; preds = %519
  %526 = load i32, i32* %20, align 4
  %527 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = icmp slt i32 %526, %529
  br i1 %530, label %531, label %559

531:                                              ; preds = %525
  %532 = load i32, i32* %21, align 4
  %533 = add nsw i32 %532, 1
  %534 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = mul nsw i32 %533, %536
  %538 = load i32, i32* %20, align 4
  %539 = sub nsw i32 %537, %538
  store i32 %539, i32* %34, align 4
  %540 = load i32, i32* %13, align 4
  %541 = icmp eq i32 %540, 8
  br i1 %541, label %542, label %548

542:                                              ; preds = %531
  %543 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %544 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %545 = load i32, i32* %25, align 4
  %546 = load i32, i32* %34, align 4
  %547 = call i32 @picmemset_8bpp(%struct.TYPE_28__* %543, %struct.TYPE_30__* %544, i32 %545, i32 %546, i32* %20, i32* %21)
  br label %558

548:                                              ; preds = %531
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %550 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %551 = load i32, i32* %25, align 4
  %552 = load i32, i32* %34, align 4
  %553 = load i32, i32* %13, align 4
  %554 = sdiv i32 8, %553
  %555 = sdiv i32 %552, %554
  %556 = load i32, i32* %13, align 4
  %557 = call i32 @picmemset(%struct.TYPE_28__* %549, %struct.TYPE_30__* %550, i32 %551, i32 %555, i32* %20, i32* %21, i32* %22, i32 %556)
  br label %558

558:                                              ; preds = %548, %542
  br label %559

559:                                              ; preds = %558, %525, %519
  br label %607

560:                                              ; preds = %400
  br label %561

561:                                              ; preds = %571, %560
  %562 = load i32, i32* %21, align 4
  %563 = icmp sge i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %561
  %565 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %566 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %565, i32 0, i32 3
  %567 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %566)
  %568 = icmp sgt i32 %567, 0
  br label %569

569:                                              ; preds = %564, %561
  %570 = phi i1 [ false, %561 ], [ %568, %564 ]
  br i1 %570, label %571, label %606

571:                                              ; preds = %569
  %572 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %573 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %572, i32 0, i32 0
  %574 = load i32**, i32*** %573, align 8
  %575 = getelementptr inbounds i32*, i32** %574, i64 0
  %576 = load i32*, i32** %575, align 8
  %577 = load i32, i32* %21, align 4
  %578 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %579 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %578, i32 0, i32 1
  %580 = load i32*, i32** %579, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 0
  %582 = load i32, i32* %581, align 4
  %583 = mul nsw i32 %577, %582
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %576, i64 %584
  %586 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %587 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %586, i32 0, i32 3
  %588 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %591 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %594 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %593, i32 0, i32 3
  %595 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_27__* %594)
  %596 = call i32 @FFMIN(i32 %592, i32 %595)
  %597 = call i32 @memcpy(i32* %585, i32* %589, i32 %596)
  %598 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %599 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %598, i32 0, i32 3
  %600 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %601 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @bytestream2_skip(%struct.TYPE_27__* %599, i32 %602)
  %604 = load i32, i32* %21, align 4
  %605 = add nsw i32 %604, -1
  store i32 %605, i32* %21, align 4
  br label %561

606:                                              ; preds = %569
  br label %607

607:                                              ; preds = %606, %559
  br label %608

608:                                              ; preds = %607, %499
  %609 = load i32*, i32** %8, align 8
  store i32 1, i32* %609, align 4
  %610 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %611 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  store i32 %612, i32* %5, align 4
  br label %613

613:                                              ; preds = %608, %517, %185, %177, %149, %132, %99, %60, %53
  %614 = load i32, i32* %5, align 4
  ret i32 %614
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_27__*) #1

declare dso_local i32 @bytestream2_get_le16u(%struct.TYPE_27__*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @bytestream2_get_byteu(%struct.TYPE_27__*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @bytestream2_peek_byte(%struct.TYPE_27__*) #1

declare dso_local i32 @bytestream2_get_le16(%struct.TYPE_27__*) #1

declare dso_local i64 @av_image_check_size(i32, i32, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_31__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_tell(%struct.TYPE_27__*) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_27__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_be24(%struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_seek(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @picmemset_8bpp(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @picmemset(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
