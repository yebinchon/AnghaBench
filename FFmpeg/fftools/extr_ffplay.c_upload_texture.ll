; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_upload_texture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_upload_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32 }
%struct.SwsContext = type { i32 }

@SDL_PIXELFORMAT_ARGB8888 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGRA = common dso_local global i32 0, align 4
@sws_flags = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot initialize the conversion context\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Mixed negative and positive linesizes are not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_3__*, %struct.SwsContext**)* @upload_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_texture(i32** %0, %struct.TYPE_3__* %1, %struct.SwsContext** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.SwsContext**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32*], align 16
  %12 = alloca [4 x i32], align 16
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.SwsContext** %2, %struct.SwsContext*** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_sdl_pix_fmt_and_blendmode(i32 %15, i32* %9, i32* %10)
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @SDL_PIXELFORMAT_ARGB8888, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @realloc_texture(i32** %17, i32 %25, i32 %28, i32 %31, i32 %32, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %298

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %248 [
    i32 128, label %38
    i32 129, label %95
  ]

38:                                               ; preds = %36
  %39 = load %struct.SwsContext**, %struct.SwsContext*** %7, align 8
  %40 = load %struct.SwsContext*, %struct.SwsContext** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AV_PIX_FMT_BGRA, align 4
  %57 = load i32, i32* @sws_flags, align 4
  %58 = call %struct.SwsContext* @sws_getCachedContext(%struct.SwsContext* %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %56, i32 %57, i32* null, i32* null, i32* null)
  %59 = load %struct.SwsContext**, %struct.SwsContext*** %7, align 8
  store %struct.SwsContext* %58, %struct.SwsContext** %59, align 8
  %60 = load %struct.SwsContext**, %struct.SwsContext*** %7, align 8
  %61 = load %struct.SwsContext*, %struct.SwsContext** %60, align 8
  %62 = icmp ne %struct.SwsContext* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %38
  %64 = load i32**, i32*** %5, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %67 = bitcast i32** %66 to i8**
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %69 = call i32 @SDL_LockTexture(i32* %65, i32* null, i8** %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %63
  %72 = load %struct.SwsContext**, %struct.SwsContext*** %7, align 8
  %73 = load %struct.SwsContext*, %struct.SwsContext** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i32**
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %86 = call i32 @sws_scale(%struct.SwsContext* %73, i32** %77, i32* %80, i32 0, i32 %83, i32** %84, i32* %85)
  %87 = load i32**, i32*** %5, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @SDL_UnlockTexture(i32* %88)
  br label %90

90:                                               ; preds = %71, %63
  br label %94

91:                                               ; preds = %38
  %92 = load i32, i32* @AV_LOG_FATAL, align 4
  %93 = call i32 @av_log(i32* null, i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %90
  br label %296

95:                                               ; preds = %36
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %150

102:                                              ; preds = %95
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %102
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %109
  %117 = load i32**, i32*** %5, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @SDL_UpdateYUVTexture(i32* %118, i32* null, i32 %123, i32 %128, i32 %133, i32 %138, i32 %143, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %247

150:                                              ; preds = %109, %102, %95
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %243

157:                                              ; preds = %150
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %243

164:                                              ; preds = %157
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %243

171:                                              ; preds = %164
  %172 = load i32**, i32*** %5, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = mul nsw i32 %183, %187
  %189 = add nsw i32 %178, %188
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 0, %194
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @AV_CEIL_RSHIFT(i32 %208, i32 1)
  %210 = sub nsw i32 %209, 1
  %211 = mul nsw i32 %205, %210
  %212 = add nsw i32 %200, %211
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 0, %217
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @AV_CEIL_RSHIFT(i32 %231, i32 1)
  %233 = sub nsw i32 %232, 1
  %234 = mul nsw i32 %228, %233
  %235 = add nsw i32 %223, %234
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 0, %240
  %242 = call i32 @SDL_UpdateYUVTexture(i32* %173, i32* null, i32 %189, i32 %195, i32 %212, i32 %218, i32 %235, i32 %241)
  store i32 %242, i32* %8, align 4
  br label %246

243:                                              ; preds = %164, %157, %150
  %244 = load i32, i32* @AV_LOG_ERROR, align 4
  %245 = call i32 @av_log(i32* null, i32 %244, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %298

246:                                              ; preds = %171
  br label %247

247:                                              ; preds = %246, %116
  br label %296

248:                                              ; preds = %36
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %248
  %256 = load i32**, i32*** %5, align 8
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 1
  %272 = mul nsw i32 %267, %271
  %273 = add nsw i32 %262, %272
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 0, %278
  %280 = call i32 @SDL_UpdateTexture(i32* %257, i32* null, i32 %273, i32 %279)
  store i32 %280, i32* %8, align 4
  br label %295

281:                                              ; preds = %248
  %282 = load i32**, i32*** %5, align 8
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @SDL_UpdateTexture(i32* %283, i32* null, i32 %288, i32 %293)
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %281, %255
  br label %296

296:                                              ; preds = %295, %247, %94
  %297 = load i32, i32* %8, align 4
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %296, %243, %35
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @get_sdl_pix_fmt_and_blendmode(i32, i32*, i32*) #1

declare dso_local i64 @realloc_texture(i32**, i32, i32, i32, i32, i32) #1

declare dso_local %struct.SwsContext* @sws_getCachedContext(%struct.SwsContext*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SDL_LockTexture(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @SDL_UnlockTexture(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @SDL_UpdateYUVTexture(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @SDL_UpdateTexture(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
