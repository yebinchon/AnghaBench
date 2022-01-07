; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_xface_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_xface_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_24__ = type { i32**, i32* }
%struct.TYPE_21__ = type { i64, i32*, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }

@XFACE_PIXELS = common dso_local global i32 0, align 4
@XFACE_MAX_DIGITS = common dso_local global i32 0, align 4
@XFACE_WIDTH = common dso_local global i32 0, align 4
@XFACE_HEIGHT = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Size value %dx%d not supported, only accepts a size of %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XFACE_MAX_WORDS = common dso_local global i64 0, align 8
@XFACE_PRINTS = common dso_local global i32 0, align 4
@XFACE_FIRST_PRINT = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32*)* @xface_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xface_encode_frame(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %10, align 8
  %27 = bitcast %struct.TYPE_21__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load i32, i32* @XFACE_PIXELS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 16, i1 false)
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* @XFACE_MAX_DIGITS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %21, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40, %4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XFACE_WIDTH, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFACE_HEIGHT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51, %45
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @XFACE_WIDTH, align 4
  %67 = load i64, i64* @XFACE_HEIGHT, align 8
  %68 = call i32 @av_log(%struct.TYPE_25__* %58, i32 %59, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65, i32 %66, i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %279

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* @XFACE_WIDTH, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @XFACE_HEIGHT, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %19, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %124, %72
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 7, %94
  %96 = ashr i32 %93, %95
  %97 = and i32 %96, 1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %85

108:                                              ; preds = %85
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* @XFACE_WIDTH, align 4
  %112 = sdiv i32 %111, 8
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %19, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %19, align 8
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %114, %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @XFACE_PIXELS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %84, label %128

128:                                              ; preds = %124
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @XFACE_PIXELS, align 4
  %133 = call i32 @memcpy(i32* %31, i32* %131, i32 %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @ff_xface_generate_face(i32* %136, i32* %31)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @encode_block(i32* %140, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 16
  %146 = call i32 @encode_block(i32* %145, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 32
  %151 = call i32 @encode_block(i32* %150, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @XFACE_WIDTH, align 4
  %156 = mul nsw i32 %155, 16
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = call i32 @encode_block(i32* %158, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @XFACE_WIDTH, align 4
  %164 = mul nsw i32 %163, 16
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = getelementptr inbounds i32, i32* %166, i64 16
  %168 = call i32 @encode_block(i32* %167, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* @XFACE_WIDTH, align 4
  %173 = mul nsw i32 %172, 16
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = getelementptr inbounds i32, i32* %175, i64 32
  %177 = call i32 @encode_block(i32* %176, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @XFACE_WIDTH, align 4
  %182 = mul nsw i32 %181, 32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = call i32 @encode_block(i32* %184, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* @XFACE_WIDTH, align 4
  %190 = mul nsw i32 %189, 32
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = getelementptr inbounds i32, i32* %192, i64 16
  %194 = call i32 @encode_block(i32* %193, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @XFACE_WIDTH, align 4
  %199 = mul nsw i32 %198, 32
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = getelementptr inbounds i32, i32* %201, i64 32
  %203 = call i32 @encode_block(i32* %202, i32 16, i32 16, i32 0, %struct.TYPE_21__* %11)
  br label %204

204:                                              ; preds = %208, %128
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ugt i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* %211, align 8
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = call i32 @push_integer(%struct.TYPE_22__* %14, i32* %214)
  br label %204

216:                                              ; preds = %204
  store i32 0, i32* %15, align 4
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @XFACE_MAX_WORDS, align 8
  %220 = icmp slt i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @av_assert0(i32 %221)
  br label %223

223:                                              ; preds = %227, %216
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %223
  %228 = load i32, i32* @XFACE_PRINTS, align 4
  %229 = call i32 @ff_big_div(%struct.TYPE_22__* %14, i32 %228, i32* %23)
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %231, %34
  %233 = zext i1 %232 to i32
  %234 = call i32 @av_assert0(i32 %233)
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* @XFACE_FIRST_PRINT, align 4
  %237 = add nsw i32 %235, %236
  %238 = trunc i32 %237 to i8
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i8, i8* %35, i64 %241
  store i8 %238, i8* %242, align 1
  br label %223

243:                                              ; preds = %223
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 2
  %248 = call i32 @ff_alloc_packet2(%struct.TYPE_25__* %244, %struct.TYPE_23__* %245, i32 %247, i32 0)
  store i32 %248, i32* %18, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* %18, align 4
  store i32 %251, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %279

252:                                              ; preds = %243
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  store i32* %255, i32** %20, align 8
  br label %256

256:                                              ; preds = %260, %252
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %15, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %256
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %35, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = load i32*, i32** %20, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %20, align 8
  store i32 %265, i32* %266, align 4
  br label %256

268:                                              ; preds = %256
  %269 = load i32*, i32** %20, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %20, align 8
  store i32 10, i32* %269, align 4
  %271 = load i32*, i32** %20, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %20, align 8
  store i32 0, i32* %271, align 4
  %273 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load i32*, i32** %9, align 8
  store i32 1, i32* %278, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %279

279:                                              ; preds = %268, %250, %57
  %280 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i32, i64, i32, i64) #3

declare dso_local i32 @AVERROR(i32) #3

declare dso_local i32 @memcpy(i32*, i32*, i32) #3

declare dso_local i32 @ff_xface_generate_face(i32*, i32*) #3

declare dso_local i32 @encode_block(i32*, i32, i32, i32, %struct.TYPE_21__*) #3

declare dso_local i32 @push_integer(%struct.TYPE_22__*, i32*) #3

declare dso_local i32 @av_assert0(i32) #3

declare dso_local i32 @ff_big_div(%struct.TYPE_22__*, i32, i32*) #3

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
