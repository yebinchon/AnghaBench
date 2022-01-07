; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pnmenc.c_pnm_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pnmenc.c_pnm_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32*, i32** }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pgmyuv needs even width and height\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"P%c\0A%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*)* @pnm_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnm_encode_frame(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @av_image_get_buffer_size(i32 %27, i32 %30, i32 %33, i32 1)
  store i32 %34, i32* %23, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = load i32, i32* %23, align 4
  %38 = add nsw i32 %37, 200
  %39 = call i32 @ff_alloc_packet2(%struct.TYPE_16__* %35, %struct.TYPE_14__* %36, i32 %38, i32 0)
  store i32 %39, i32* %19, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %5, align 4
  br label %285

43:                                               ; preds = %4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  store i32* %46, i32** %11, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %12, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %120 [
    i32 132, label %62
    i32 133, label %68
    i32 134, label %72
    i32 131, label %77
    i32 130, label %82
    i32 129, label %87
    i32 128, label %112
  ]

62:                                               ; preds = %43
  store i32 52, i32* %16, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 7
  %67 = ashr i32 %66, 3
  store i32 %67, i32* %17, align 4
  br label %121

68:                                               ; preds = %43
  store i32 53, i32* %16, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  br label %121

72:                                               ; preds = %43
  store i32 53, i32* %16, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 2
  store i32 %76, i32* %17, align 4
  br label %121

77:                                               ; preds = %43
  store i32 54, i32* %16, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 3
  store i32 %81, i32* %17, align 4
  br label %121

82:                                               ; preds = %43
  store i32 54, i32* %16, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 6
  store i32 %86, i32* %17, align 4
  br label %121

87:                                               ; preds = %43
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93, %87
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = call i32 @av_log(%struct.TYPE_16__* %100, i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %5, align 4
  br label %285

105:                                              ; preds = %93
  store i32 53, i32* %16, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 3
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %15, align 4
  br label %121

112:                                              ; preds = %43
  store i32 53, i32* %16, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 2
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %117, 3
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %15, align 4
  br label %121

120:                                              ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %285

121:                                              ; preds = %112, %105, %82, %77, %72, %68, %62
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %122, i32 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %133, i32 %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @strlen(i32* %136)
  %138 = load i32*, i32** %10, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %10, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 132
  br i1 %144, label %145, label %172

145:                                              ; preds = %121
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 1, %154
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %24, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = ptrtoint i32* %158 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* %24, align 4
  %166 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %157, i32 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @strlen(i32* %167)
  %169 = load i32*, i32** %10, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %10, align 8
  br label %172

172:                                              ; preds = %145, %121
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 0
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %20, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %183

183:                                              ; preds = %200, %172
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %183
  %188 = load i32*, i32** %10, align 8
  %189 = load i32*, i32** %20, align 8
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @memcpy(i32* %188, i32* %189, i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %10, align 8
  %196 = load i32, i32* %18, align 4
  %197 = load i32*, i32** %20, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %20, align 8
  br label %200

200:                                              ; preds = %187
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %183

203:                                              ; preds = %183
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 129
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 128
  br i1 %212, label %213, label %269

213:                                              ; preds = %208, %203
  %214 = load i32, i32* %14, align 4
  %215 = ashr i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %17, align 4
  %217 = ashr i32 %216, 1
  store i32 %217, i32* %17, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i32**, i32*** %219, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 1
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %21, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32**, i32*** %224, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 2
  %227 = load i32*, i32** %226, align 8
  store i32* %227, i32** %22, align 8
  store i32 0, i32* %13, align 4
  br label %228

228:                                              ; preds = %265, %213
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %268

232:                                              ; preds = %228
  %233 = load i32*, i32** %10, align 8
  %234 = load i32*, i32** %21, align 8
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @memcpy(i32* %233, i32* %234, i32 %235)
  %237 = load i32, i32* %17, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %10, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = load i32*, i32** %22, align 8
  %243 = load i32, i32* %17, align 4
  %244 = call i32 @memcpy(i32* %241, i32* %242, i32 %243)
  %245 = load i32, i32* %17, align 4
  %246 = load i32*, i32** %10, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %10, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %21, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %21, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %22, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %22, align 8
  br label %265

265:                                              ; preds = %232
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %13, align 4
  br label %228

268:                                              ; preds = %228
  br label %269

269:                                              ; preds = %268, %208
  %270 = load i32*, i32** %10, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = ptrtoint i32* %270 to i64
  %273 = ptrtoint i32* %271 to i64
  %274 = sub i64 %272, %273
  %275 = sdiv exact i64 %274, 4
  %276 = trunc i64 %275 to i32
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load i32*, i32** %9, align 8
  store i32 1, i32* %284, align 4
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %269, %120, %99, %41
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
