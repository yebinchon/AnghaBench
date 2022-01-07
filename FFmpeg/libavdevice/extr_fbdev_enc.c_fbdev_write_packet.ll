; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_enc.c_fbdev_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_enc.c_fbdev_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__**, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_18__, i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }

@FBIOGET_VSCREENINFO = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error refreshing variable info: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Pixel format %s is not supported, use %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @fbdev_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbdev_write_packet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %26, i64 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %12, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 7
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FBIOGET_VSCREENINFO, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = call i64 @ioctl(i32 %50, i32 %51, %struct.TYPE_18__* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = load i32, i32* @AV_LOG_WARNING, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @AVERROR(i32 %59)
  %61 = call i32 @av_err2str(i32 %60)
  %62 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %57, i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = call i32 @ff_get_pixfmt_from_fb_varinfo(%struct.TYPE_18__* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @av_get_pix_fmt_name(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @av_get_pix_fmt_name(i32 %75)
  %77 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %71, i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %281

80:                                               ; preds = %63
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @FFMIN(i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @FFMIN(i32 %90, i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %7, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %100, i64 %107
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %112, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %108, i64 %118
  store i32* %119, i32** %8, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %188

124:                                              ; preds = %80
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %124
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 0, %132
  %134 = load i32, i32* %14, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %281

137:                                              ; preds = %129
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32*, i32** %7, align 8
  %151 = sext i32 %149 to i64
  %152 = sub i64 0, %151
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %7, align 8
  br label %187

154:                                              ; preds = %124
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %155, %158
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %159, %163
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %154
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %281

172:                                              ; preds = %167
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %16, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %172, %154
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = mul nsw i32 %179, %182
  %184 = load i32*, i32** %8, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %8, align 8
  br label %187

187:                                              ; preds = %178, %137
  br label %188

188:                                              ; preds = %187, %80
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %256

193:                                              ; preds = %188
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %221

198:                                              ; preds = %193
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 0, %201
  %203 = load i32, i32* %15, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %281

206:                                              ; preds = %198
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %10, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %17, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32*, i32** %7, align 8
  %218 = sext i32 %216 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32* %220, i32** %7, align 8
  br label %255

221:                                              ; preds = %193
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %226, %230
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %221
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 0, i32* %3, align 4
  br label %281

239:                                              ; preds = %234
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* %10, align 4
  %242 = sub nsw i32 %241, %240
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %239, %221
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = mul nsw i32 %246, %250
  %252 = load i32*, i32** %8, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %8, align 8
  br label %255

255:                                              ; preds = %243, %206
  br label %256

256:                                              ; preds = %255, %188
  store i32 0, i32* %18, align 4
  br label %257

257:                                              ; preds = %277, %256
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %10, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %257
  %262 = load i32*, i32** %8, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @memcpy(i32* %262, i32* %263, i32 %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32*, i32** %8, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %8, align 8
  %273 = load i32, i32* %17, align 4
  %274 = load i32*, i32** %7, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %7, align 8
  br label %277

277:                                              ; preds = %261
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %257

280:                                              ; preds = %257
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %280, %238, %205, %171, %136, %70
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_get_pixfmt_from_fb_varinfo(%struct.TYPE_18__*) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
