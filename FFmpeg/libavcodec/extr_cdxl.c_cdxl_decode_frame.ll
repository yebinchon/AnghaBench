; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdxl.c_cdxl_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdxl.c_cdxl_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@BIT_PLANAR = common dso_local global i32 0, align 4
@BIT_LINE = common dso_local global i32 0, align 4
@CHUNKY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Pixel format 0x%0x\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Encoding %d, bpp %d and format 0x%x\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, i32*, %struct.TYPE_22__*)* @cdxl_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdxl_decode_frame(%struct.TYPE_24__* %0, i8* %1, i32* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %11, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %18, align 8
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %5, align 4
  br label %343

34:                                               ; preds = %4
  %35 = load i32*, i32** %18, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %18, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 224
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 14
  %47 = call i8* @AV_RB16(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %18, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  %51 = call i8* @AV_RB16(i32* %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 19
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %18, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 20
  %60 = call i8* @AV_RB16(i32* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 32
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  %83 = sub nsw i32 %82, 32
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 512
  br i1 %89, label %90, label %92

90:                                               ; preds = %34
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %5, align 4
  br label %343

92:                                               ; preds = %34
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 32
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %343

101:                                              ; preds = %92
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %5, align 4
  br label %343

108:                                              ; preds = %101
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BIT_PLANAR, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %108
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BIT_LINE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CHUNKY, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (%struct.TYPE_24__*, i8*, i32, ...) @avpriv_request_sample(%struct.TYPE_24__* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %132, i32* %5, align 4
  br label %343

133:                                              ; preds = %120, %114, %108
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @ff_set_dimensions(%struct.TYPE_24__* %134, i32 %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %343

141:                                              ; preds = %133
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CHUNKY, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %16, align 4
  br label %158

151:                                              ; preds = %141
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @FFALIGN(i64 %156, i32 16)
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %151, %147
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %160, %165
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 9
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %172, %175
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = sdiv i32 %180, 8
  %182 = icmp slt i32 %171, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %158
  %184 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %184, i32* %5, align 4
  br label %343

185:                                              ; preds = %158
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sle i32 %196, 8
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CHUNKY, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  br label %279

208:                                              ; preds = %198, %193, %188, %185
  %209 = load i32, i32* %15, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %243

211:                                              ; preds = %208
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 6
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %221, label %243

221:                                              ; preds = %216, %211
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CHUNKY, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 1
  %235 = shl i32 1, %234
  %236 = icmp ne i32 %230, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %227
  %238 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %238, i32* %5, align 4
  br label %343

239:                                              ; preds = %227
  %240 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  br label %278

243:                                              ; preds = %221, %216, %208
  %244 = load i32, i32* %15, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %266, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 24
  br i1 %250, label %251, label %266

251:                                              ; preds = %246
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CHUNKY, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %251
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %257
  %263 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 2
  store i64 %263, i64* %265, align 8
  br label %277

266:                                              ; preds = %257, %251, %246, %243
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (%struct.TYPE_24__*, i8*, i32, ...) @avpriv_request_sample(%struct.TYPE_24__* %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %268, i32 %271, i32 %274)
  %276 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %276, i32* %5, align 4
  br label %343

277:                                              ; preds = %262
  br label %278

278:                                              ; preds = %277, %239
  br label %279

279:                                              ; preds = %278, %204
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %282 = call i32 @ff_get_buffer(%struct.TYPE_24__* %280, %struct.TYPE_23__* %281, i32 0)
  store i32 %282, i32* %12, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* %12, align 4
  store i32 %285, i32* %5, align 4
  br label %343

286:                                              ; preds = %279
  %287 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %325

292:                                              ; preds = %286
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 6
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 7
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* %13, align 4
  %299 = mul nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %302 = add nsw i64 %300, %301
  %303 = call i32 @av_fast_padded_malloc(i32* %294, i32* %296, i64 %302)
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %292
  %309 = load i32, i32* @ENOMEM, align 4
  %310 = call i32 @AVERROR(i32 %309)
  store i32 %310, i32* %5, align 4
  br label %343

311:                                              ; preds = %292
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 8
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %319 = call i32 @cdxl_decode_ham8(%struct.TYPE_21__* %317, %struct.TYPE_23__* %318)
  br label %324

320:                                              ; preds = %311
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %323 = call i32 @cdxl_decode_ham6(%struct.TYPE_21__* %321, %struct.TYPE_23__* %322)
  br label %324

324:                                              ; preds = %320, %316
  br label %340

325:                                              ; preds = %286
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %334 = call i32 @cdxl_decode_rgb(%struct.TYPE_21__* %332, %struct.TYPE_23__* %333)
  br label %339

335:                                              ; preds = %325
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %338 = call i32 @cdxl_decode_raw(%struct.TYPE_21__* %336, %struct.TYPE_23__* %337)
  br label %339

339:                                              ; preds = %335, %331
  br label %340

340:                                              ; preds = %339, %324
  %341 = load i32*, i32** %8, align 8
  store i32 1, i32* %341, align 4
  %342 = load i32, i32* %17, align 4
  store i32 %342, i32* %5, align 4
  br label %343

343:                                              ; preds = %340, %308, %284, %266, %237, %183, %139, %126, %106, %99, %90, %32
  %344 = load i32, i32* %5, align 4
  ret i32 %344
}

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_24__*, i8*, i32, ...) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @FFALIGN(i64, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32*, i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cdxl_decode_ham8(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cdxl_decode_ham6(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cdxl_decode_rgb(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cdxl_decode_raw(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
