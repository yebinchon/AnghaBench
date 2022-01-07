; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_read_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_read_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i64, i64*, %struct.TYPE_14__, i32, i32, i32*, i32, i32, i32, i32, i64, i64, i32*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"image x=%d y=%d w=%d h=%d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"picture doesn't have either global or local palette.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid image width: %d, truncating.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid left position: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid image height: %d, truncating.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid top position: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Image too wide by %d, truncating.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Image too high by %d, truncating.\0A\00", align 1
@GCE_DISPOSAL_BACKGROUND = common dso_local global i64 0, align 8
@GCE_DISPOSAL_RESTORE = common dso_local global i64 0, align 8
@GCE_DISPOSAL_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@FF_LZW_GIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"LZW init failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"LZW decode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @gif_read_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_read_image(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 10
  %32 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_14__* %31)
  %33 = icmp slt i32 %32, 9
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %3, align 4
  br label %603

36:                                               ; preds = %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 10
  %39 = call i32 @bytestream2_get_le16u(%struct.TYPE_14__* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 10
  %42 = call i32 @bytestream2_get_le16u(%struct.TYPE_14__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 10
  %45 = call i32 @bytestream2_get_le16u(%struct.TYPE_14__* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 10
  %48 = call i32 @bytestream2_get_le16u(%struct.TYPE_14__* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 10
  %51 = call i32 @bytestream2_get_byteu(%struct.TYPE_14__* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 64
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 128
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 7
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ff_dlog(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %36
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 1, %70
  store i32 %71, i32* %20, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 10
  %74 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_14__* %73)
  %75 = load i32, i32* %20, align 4
  %76 = mul nsw i32 %75, 3
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %3, align 4
  br label %603

80:                                               ; preds = %69
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 21
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @gif_read_palette(%struct.TYPE_12__* %81, i32* %84, i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 21
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %23, align 8
  br label %106

90:                                               ; preds = %36
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 18
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 (i32, i32, i8*, ...) @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %101, i32* %3, align 4
  br label %603

102:                                              ; preds = %90
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 20
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %23, align 8
  br label %106

106:                                              ; preds = %102, %80
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 19
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 18
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 15
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @gif_fill(%struct.TYPE_13__* %122, i32 %125)
  br label %133

127:                                              ; preds = %116, %111
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 17
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gif_fill(%struct.TYPE_13__* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133, %106
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137, %134
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AV_LOG_WARNING, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i32, i32, i8*, ...) @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %143, %137
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i32, i32, i8*, ...) @av_log(i32 %162, i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %3, align 4
  br label %603

167:                                              ; preds = %153
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %170, %167
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @AV_LOG_WARNING, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (i32, i32, i8*, ...) @av_log(i32 %179, i32 %180, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %176, %170
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %187, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %186
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i32, i8*, ...) @av_log(i32 %195, i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %199, i32* %3, align 4
  br label %603

200:                                              ; preds = %186
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %200
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %6, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %13, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @AV_LOG_WARNING, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %218, %219
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %220, %223
  %225 = call i32 (i32, i32, i8*, ...) @av_log(i32 %216, i32 %217, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  br label %228

226:                                              ; preds = %200
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %226, %208
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %229, %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp sgt i32 %231, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %228
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @AV_LOG_WARNING, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %241, %242
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %243, %246
  %248 = call i32 (i32, i32, i8*, ...) @av_log(i32 %239, i32 %240, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %247)
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %236, %228
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @GCE_DISPOSAL_BACKGROUND, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %254
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 16
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @gif_fill_rect(%struct.TYPE_13__* %261, i32 %264, i32 %267, i32 %270, i32 %273, i32 %276)
  br label %316

278:                                              ; preds = %254
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @GCE_DISPOSAL_RESTORE, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %315

284:                                              ; preds = %278
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 13
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 0
  %292 = load i64, i64* %291, align 8
  %293 = inttoptr i64 %292 to i32*
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = udiv i64 %299, 4
  %301 = trunc i64 %300 to i32
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @gif_copy_img_rect(i32* %287, i32* %293, i32 %301, i32 %304, i32 %307, i32 %310, i32 %313)
  br label %315

315:                                              ; preds = %284, %278
  br label %316

316:                                              ; preds = %315, %260
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  store i64 %319, i64* %321, align 8
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 8
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @GCE_DISPOSAL_NONE, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %416

327:                                              ; preds = %316
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 5
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %13, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 6
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %9, align 4
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 7
  store i32 %337, i32* %339, align 4
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 8
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @GCE_DISPOSAL_BACKGROUND, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %363

345:                                              ; preds = %327
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp sge i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 17
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 16
  store i32 %353, i32* %355, align 8
  br label %362

356:                                              ; preds = %345
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 15
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 16
  store i32 %359, i32* %361, align 8
  br label %362

362:                                              ; preds = %356, %350
  br label %415

363:                                              ; preds = %327
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 8
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @GCE_DISPOSAL_RESTORE, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %414

369:                                              ; preds = %363
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 13
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 14
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = mul nsw i32 %378, %381
  %383 = call i32 @av_fast_malloc(i32** %371, i32* %373, i32 %382)
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 13
  %386 = load i32*, i32** %385, align 8
  %387 = icmp ne i32* %386, null
  br i1 %387, label %391, label %388

388:                                              ; preds = %369
  %389 = load i32, i32* @ENOMEM, align 4
  %390 = call i32 @AVERROR(i32 %389)
  store i32 %390, i32* %3, align 4
  br label %603

391:                                              ; preds = %369
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 2
  %394 = load i64*, i64** %393, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 0
  %396 = load i64, i64* %395, align 8
  %397 = inttoptr i64 %396 to i32*
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 13
  %400 = load i32*, i32** %399, align 8
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 0
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = udiv i64 %406, 4
  %408 = trunc i64 %407 to i32
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* %9, align 4
  %413 = call i32 @gif_copy_img_rect(i32* %397, i32* %400, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412)
  br label %414

414:                                              ; preds = %391, %363
  br label %415

415:                                              ; preds = %414, %362
  br label %416

416:                                              ; preds = %415, %316
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 10
  %419 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_14__* %418)
  %420 = icmp slt i32 %419, 2
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  %422 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %422, i32* %3, align 4
  br label %603

423:                                              ; preds = %416
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 10
  %426 = call i32 @bytestream2_get_byteu(%struct.TYPE_14__* %425)
  store i32 %426, i32* %11, align 4
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 11
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %11, align 4
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 10
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 10
  %437 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_14__* %436)
  %438 = load i32, i32* @FF_LZW_GIF, align 4
  %439 = call i32 @ff_lzw_decode_init(i32 %429, i32 %430, i32 %434, i32 %437, i32 %438)
  store i32 %439, i32* %27, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %423
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 12
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @AV_LOG_ERROR, align 4
  %446 = call i32 (i32, i32, i8*, ...) @av_log(i32 %444, i32 %445, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %447 = load i32, i32* %27, align 4
  store i32 %447, i32* %3, align 4
  br label %603

448:                                              ; preds = %423
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = udiv i64 %454, 4
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %19, align 4
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 2
  %459 = load i64*, i64** %458, align 8
  %460 = getelementptr inbounds i64, i64* %459, i64 0
  %461 = load i64, i64* %460, align 8
  %462 = inttoptr i64 %461 to i32*
  %463 = load i32, i32* %7, align 4
  %464 = load i32, i32* %19, align 4
  %465 = mul nsw i32 %463, %464
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %462, i64 %466
  %468 = load i32, i32* %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  store i32* %470, i32** %26, align 8
  %471 = load i32*, i32** %26, align 8
  store i32* %471, i32** %22, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %472

472:                                              ; preds = %585, %448
  %473 = load i32, i32* %16, align 4
  %474 = load i32, i32* %9, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %476, label %588

476:                                              ; preds = %472
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 11
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 9
  %482 = load i64*, i64** %481, align 8
  %483 = load i32, i32* %8, align 4
  %484 = call i32 @ff_lzw_decode(i32 %479, i64* %482, i32 %483)
  store i32 %484, i32* %29, align 4
  %485 = load i32, i32* %29, align 4
  %486 = load i32, i32* %8, align 4
  %487 = icmp ne i32 %485, %486
  br i1 %487, label %488, label %498

488:                                              ; preds = %476
  %489 = load i32, i32* %29, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %488
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 12
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @AV_LOG_ERROR, align 4
  %496 = call i32 (i32, i32, i8*, ...) @av_log(i32 %494, i32 %495, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %497

497:                                              ; preds = %491, %488
  br label %589

498:                                              ; preds = %476
  %499 = load i32*, i32** %22, align 8
  %500 = load i32, i32* %13, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  store i32* %502, i32** %25, align 8
  %503 = load i32*, i32** %22, align 8
  store i32* %503, i32** %24, align 8
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 9
  %506 = load i64*, i64** %505, align 8
  store i64* %506, i64** %28, align 8
  br label %507

507:                                              ; preds = %527, %498
  %508 = load i32*, i32** %24, align 8
  %509 = load i32*, i32** %25, align 8
  %510 = icmp ult i32* %508, %509
  br i1 %510, label %511, label %532

511:                                              ; preds = %507
  %512 = load i64*, i64** %28, align 8
  %513 = load i64, i64* %512, align 8
  %514 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = icmp ne i64 %513, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %511
  %520 = load i32*, i32** %23, align 8
  %521 = load i64*, i64** %28, align 8
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32*, i32** %24, align 8
  store i32 %524, i32* %525, align 4
  br label %526

526:                                              ; preds = %519, %511
  br label %527

527:                                              ; preds = %526
  %528 = load i32*, i32** %24, align 8
  %529 = getelementptr inbounds i32, i32* %528, i32 1
  store i32* %529, i32** %24, align 8
  %530 = load i64*, i64** %28, align 8
  %531 = getelementptr inbounds i64, i64* %530, i32 1
  store i64* %531, i64** %28, align 8
  br label %507

532:                                              ; preds = %507
  %533 = load i32, i32* %14, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %579

535:                                              ; preds = %532
  %536 = load i32, i32* %17, align 4
  switch i32 %536, label %537 [
    i32 0, label %538
    i32 1, label %538
    i32 2, label %546
    i32 3, label %554
  ]

537:                                              ; preds = %535
  br label %538

538:                                              ; preds = %535, %535, %537
  %539 = load i32, i32* %18, align 4
  %540 = add nsw i32 %539, 8
  store i32 %540, i32* %18, align 4
  %541 = load i32, i32* %19, align 4
  %542 = mul nsw i32 %541, 8
  %543 = load i32*, i32** %22, align 8
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i32, i32* %543, i64 %544
  store i32* %545, i32** %22, align 8
  br label %562

546:                                              ; preds = %535
  %547 = load i32, i32* %18, align 4
  %548 = add nsw i32 %547, 4
  store i32 %548, i32* %18, align 4
  %549 = load i32, i32* %19, align 4
  %550 = mul nsw i32 %549, 4
  %551 = load i32*, i32** %22, align 8
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i32, i32* %551, i64 %552
  store i32* %553, i32** %22, align 8
  br label %562

554:                                              ; preds = %535
  %555 = load i32, i32* %18, align 4
  %556 = add nsw i32 %555, 2
  store i32 %556, i32* %18, align 4
  %557 = load i32, i32* %19, align 4
  %558 = mul nsw i32 %557, 2
  %559 = load i32*, i32** %22, align 8
  %560 = sext i32 %558 to i64
  %561 = getelementptr inbounds i32, i32* %559, i64 %560
  store i32* %561, i32** %22, align 8
  br label %562

562:                                              ; preds = %554, %546, %538
  br label %563

563:                                              ; preds = %567, %562
  %564 = load i32, i32* %18, align 4
  %565 = load i32, i32* %9, align 4
  %566 = icmp sge i32 %564, %565
  br i1 %566, label %567, label %578

567:                                              ; preds = %563
  %568 = load i32, i32* %17, align 4
  %569 = ashr i32 4, %568
  store i32 %569, i32* %18, align 4
  %570 = load i32*, i32** %26, align 8
  %571 = load i32, i32* %19, align 4
  %572 = load i32, i32* %18, align 4
  %573 = mul nsw i32 %571, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %570, i64 %574
  store i32* %575, i32** %22, align 8
  %576 = load i32, i32* %17, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %17, align 4
  br label %563

578:                                              ; preds = %563
  br label %584

579:                                              ; preds = %532
  %580 = load i32, i32* %19, align 4
  %581 = load i32*, i32** %22, align 8
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds i32, i32* %581, i64 %582
  store i32* %583, i32** %22, align 8
  br label %584

584:                                              ; preds = %579, %578
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %16, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %16, align 4
  br label %472

588:                                              ; preds = %472
  br label %589

589:                                              ; preds = %588, %497
  %590 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %590, i32 0, i32 11
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @ff_lzw_decode_tail(i32 %592)
  store i32 %593, i32* %21, align 4
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 10
  %596 = load i32, i32* %21, align 4
  %597 = call i32 @bytestream2_skipu(%struct.TYPE_14__* %595, i32 %596)
  %598 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %599 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %598, i32 0, i32 0
  store i32 -1, i32* %599, align 8
  %600 = load i64, i64* @GCE_DISPOSAL_NONE, align 8
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 8
  store i64 %600, i64* %602, align 8
  store i32 0, i32* %3, align 4
  br label %603

603:                                              ; preds = %589, %441, %421, %388, %192, %159, %95, %78, %34
  %604 = load i32, i32* %3, align 4
  ret i32 %604
}

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_14__*) #1

declare dso_local i32 @bytestream2_get_le16u(%struct.TYPE_14__*) #1

declare dso_local i32 @bytestream2_get_byteu(%struct.TYPE_14__*) #1

declare dso_local i32 @ff_dlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gif_read_palette(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @gif_fill(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gif_fill_rect(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gif_copy_img_rect(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_fast_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_lzw_decode_init(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_lzw_decode(i32, i64*, i32) #1

declare dso_local i32 @ff_lzw_decode_tail(i32) #1

declare dso_local i32 @bytestream2_skipu(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
