; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_decode_entropy_coded_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_decode_entropy_coded_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, %struct.TYPE_15__*, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_ARGB = common dso_local global i32 0, align 4
@IMAGE_ROLE_ARGB = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid color cache bits: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HUFFMAN_CODES_PER_META_CODE = common dso_local global i32 0, align 4
@alphabet_sizes = common dso_local global i32* null, align 8
@HUFF_IDX_GREEN = common dso_local global i64 0, align 8
@NUM_LITERAL_CODES = common dso_local global i32 0, align 4
@HUFF_IDX_RED = common dso_local global i64 0, align 8
@HUFF_IDX_BLUE = common dso_local global i64 0, align 8
@HUFF_IDX_ALPHA = common dso_local global i64 0, align 8
@NUM_LENGTH_CODES = common dso_local global i32 0, align 4
@HUFF_IDX_DIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"distance prefix code too large: %d\0A\00", align 1
@NUM_SHORT_DISTANCES = common dso_local global i32 0, align 4
@lz77_distance_offsets = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"color cache not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"color cache index out-of-bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32)* @decode_entropy_coded_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_entropy_coded_image(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_17__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
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
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i64 %41
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = icmp ne %struct.TYPE_15__* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %4
  %51 = call %struct.TYPE_15__* (...) @av_frame_alloc()
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 4
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %53, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %637

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* @AV_PIX_FMT_ARGB, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @IMAGE_ROLE_ARGB, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %62
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %87, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ff_thread_get_buffer(i32 %93, %struct.TYPE_17__* %18, i32 0)
  store i32 %94, i32* %14, align 4
  br label %100

95:                                               ; preds = %81, %62
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call i32 @av_frame_get_buffer(%struct.TYPE_15__* %98, i32 1)
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %95, %86
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %637

105:                                              ; preds = %100
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = call i64 @get_bits1(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  %113 = call i32 @get_bits(i32* %112, i32 4)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %125, label %120

120:                                              ; preds = %110
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 11
  br i1 %124, label %125, label %135

125:                                              ; preds = %120, %110
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i32, i8*, ...) @av_log(i32 %128, i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %5, align 4
  br label %637

135:                                              ; preds = %120
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 1, %138
  %140 = call i8* @av_mallocz_array(i32 %139, i32 4)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %135
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = call i32 @AVERROR(i32 %149)
  store i32 %150, i32* %5, align 4
  br label %637

151:                                              ; preds = %135
  br label %155

152:                                              ; preds = %105
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %151
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @IMAGE_ROLE_ARGB, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %155
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = call i64 @get_bits1(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = call i32 @decode_entropy_image(%struct.TYPE_16__* %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %5, align 4
  br label %637

173:                                              ; preds = %166
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %161, %155
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @HUFFMAN_CODES_PER_META_CODE, align 4
  %184 = mul nsw i32 %182, %183
  %185 = call i8* @av_mallocz_array(i32 %184, i32 4)
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 5
  store i32* %186, i32** %188, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %179
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = call i32 @AVERROR(i32 %194)
  store i32 %195, i32* %5, align 4
  br label %637

196:                                              ; preds = %179
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %266, %196
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %269

203:                                              ; preds = %197
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @HUFFMAN_CODES_PER_META_CODE, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32* %211, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %262, %203
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @HUFFMAN_CODES_PER_META_CODE, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %265

216:                                              ; preds = %212
  %217 = load i32*, i32** @alphabet_sizes, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %236, label %224

224:                                              ; preds = %216
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 1, %232
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %229, %224, %216
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  %239 = call i64 @get_bits1(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = call i32 @read_huffman_code_simple(%struct.TYPE_16__* %242, i32* %246)
  br label %261

248:                                              ; preds = %236
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %19, align 4
  %255 = call i32 @read_huffman_code_normal(%struct.TYPE_16__* %249, i32* %253, i32 %254)
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = load i32, i32* %14, align 4
  store i32 %259, i32* %5, align 4
  br label %637

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %260, %241
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  br label %212

265:                                              ; preds = %212
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  br label %197

269:                                              ; preds = %197
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @IMAGE_ROLE_ARGB, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %269
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %17, align 4
  br label %287

287:                                              ; preds = %283, %278, %269
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %635, %287
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %289, %294
  br i1 %295, label %296, label %636

296:                                              ; preds = %288
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %16, align 4
  %301 = call i32* @get_huffman_group(%struct.TYPE_16__* %297, %struct.TYPE_18__* %298, i32 %299, i32 %300)
  store i32* %301, i32** %11, align 8
  %302 = load i32*, i32** %11, align 8
  %303 = load i64, i64* @HUFF_IDX_GREEN, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 3
  %307 = call i8* @huff_reader_get_symbol(i32* %304, i32* %306)
  %308 = ptrtoint i8* %307 to i32
  store i32 %308, i32* %20, align 4
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %368

312:                                              ; preds = %296
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 4
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* %16, align 4
  %318 = call i32* @GET_PIXEL(%struct.TYPE_15__* %315, i32 %316, i32 %317)
  store i32* %318, i32** %21, align 8
  %319 = load i32, i32* %20, align 4
  %320 = load i32*, i32** %21, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  store i32 %319, i32* %321, align 4
  %322 = load i32*, i32** %11, align 8
  %323 = load i64, i64* @HUFF_IDX_RED, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 3
  %327 = call i8* @huff_reader_get_symbol(i32* %324, i32* %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load i32*, i32** %21, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  store i32 %328, i32* %330, align 4
  %331 = load i32*, i32** %11, align 8
  %332 = load i64, i64* @HUFF_IDX_BLUE, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 3
  %336 = call i8* @huff_reader_get_symbol(i32* %333, i32* %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load i32*, i32** %21, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  store i32 %337, i32* %339, align 4
  %340 = load i32*, i32** %11, align 8
  %341 = load i64, i64* @HUFF_IDX_ALPHA, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 3
  %345 = call i8* @huff_reader_get_symbol(i32* %342, i32* %344)
  %346 = ptrtoint i8* %345 to i32
  %347 = load i32*, i32** %21, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  store i32 %346, i32* %348, align 4
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %312
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %355 = load i32*, i32** %21, align 8
  %356 = call i32 @AV_RB32(i32* %355)
  %357 = call i32 @color_cache_put(%struct.TYPE_18__* %354, i32 %356)
  br label %358

358:                                              ; preds = %353, %312
  %359 = load i32, i32* %15, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %15, align 4
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* %17, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  store i32 0, i32* %15, align 4
  %365 = load i32, i32* %16, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %16, align 4
  br label %367

367:                                              ; preds = %364, %358
  br label %635

368:                                              ; preds = %296
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %371 = load i32, i32* @NUM_LENGTH_CODES, align 4
  %372 = add nsw i32 %370, %371
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %578

374:                                              ; preds = %368
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %377 = sub nsw i32 %375, %376
  store i32 %377, i32* %22, align 4
  %378 = load i32, i32* %22, align 4
  %379 = icmp slt i32 %378, 4
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i32, i32* %22, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %23, align 4
  br label %399

383:                                              ; preds = %374
  %384 = load i32, i32* %22, align 4
  %385 = sub nsw i32 %384, 2
  %386 = ashr i32 %385, 1
  store i32 %386, i32* %27, align 4
  %387 = load i32, i32* %22, align 4
  %388 = and i32 %387, 1
  %389 = add nsw i32 2, %388
  %390 = load i32, i32* %27, align 4
  %391 = shl i32 %389, %390
  store i32 %391, i32* %28, align 4
  %392 = load i32, i32* %28, align 4
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 3
  %395 = load i32, i32* %27, align 4
  %396 = call i32 @get_bits(i32* %394, i32 %395)
  %397 = add nsw i32 %392, %396
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %23, align 4
  br label %399

399:                                              ; preds = %383, %380
  %400 = load i32*, i32** %11, align 8
  %401 = load i64, i64* @HUFF_IDX_DIST, align 8
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 3
  %405 = call i8* @huff_reader_get_symbol(i32* %402, i32* %404)
  %406 = ptrtoint i8* %405 to i32
  store i32 %406, i32* %22, align 4
  %407 = load i32, i32* %22, align 4
  %408 = icmp ugt i32 %407, 39
  br i1 %408, label %409, label %417

409:                                              ; preds = %399
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @AV_LOG_ERROR, align 4
  %414 = load i32, i32* %22, align 4
  %415 = call i32 (i32, i32, i8*, ...) @av_log(i32 %412, i32 %413, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %414)
  %416 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %416, i32* %5, align 4
  br label %637

417:                                              ; preds = %399
  %418 = load i32, i32* %22, align 4
  %419 = icmp slt i32 %418, 4
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load i32, i32* %22, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %24, align 4
  br label %439

423:                                              ; preds = %417
  %424 = load i32, i32* %22, align 4
  %425 = sub nsw i32 %424, 2
  %426 = ashr i32 %425, 1
  store i32 %426, i32* %29, align 4
  %427 = load i32, i32* %22, align 4
  %428 = and i32 %427, 1
  %429 = add nsw i32 2, %428
  %430 = load i32, i32* %29, align 4
  %431 = shl i32 %429, %430
  store i32 %431, i32* %30, align 4
  %432 = load i32, i32* %30, align 4
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 3
  %435 = load i32, i32* %29, align 4
  %436 = call i32 @get_bits(i32* %434, i32 %435)
  %437 = add nsw i32 %432, %436
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %24, align 4
  br label %439

439:                                              ; preds = %423, %420
  %440 = load i32, i32* %24, align 4
  %441 = load i32, i32* @NUM_SHORT_DISTANCES, align 4
  %442 = icmp sle i32 %440, %441
  br i1 %442, label %443, label %466

443:                                              ; preds = %439
  %444 = load i32**, i32*** @lz77_distance_offsets, align 8
  %445 = load i32, i32* %24, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32*, i32** %444, i64 %447
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 0
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %31, align 4
  %452 = load i32**, i32*** @lz77_distance_offsets, align 8
  %453 = load i32, i32* %24, align 4
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32*, i32** %452, i64 %455
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %32, align 4
  %460 = load i32, i32* %31, align 4
  %461 = load i32, i32* %32, align 4
  %462 = load i32, i32* %17, align 4
  %463 = mul nsw i32 %461, %462
  %464 = add nsw i32 %460, %463
  %465 = call i32 @FFMAX(i32 1, i32 %464)
  store i32 %465, i32* %24, align 4
  br label %470

466:                                              ; preds = %439
  %467 = load i32, i32* @NUM_SHORT_DISTANCES, align 4
  %468 = load i32, i32* %24, align 4
  %469 = sub nsw i32 %468, %467
  store i32 %469, i32* %24, align 4
  br label %470

470:                                              ; preds = %466, %443
  %471 = load i32, i32* %15, align 4
  store i32 %471, i32* %25, align 4
  %472 = load i32, i32* %16, align 4
  store i32 %472, i32* %26, align 4
  %473 = load i32, i32* %24, align 4
  %474 = load i32, i32* %15, align 4
  %475 = icmp sle i32 %473, %474
  br i1 %475, label %476, label %480

476:                                              ; preds = %470
  %477 = load i32, i32* %24, align 4
  %478 = load i32, i32* %25, align 4
  %479 = sub nsw i32 %478, %477
  store i32 %479, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %484

480:                                              ; preds = %470
  store i32 0, i32* %25, align 4
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* %24, align 4
  %483 = sub nsw i32 %482, %481
  store i32 %483, i32* %24, align 4
  br label %484

484:                                              ; preds = %480, %476
  br label %485

485:                                              ; preds = %489, %484
  %486 = load i32, i32* %24, align 4
  %487 = load i32, i32* %17, align 4
  %488 = icmp sge i32 %486, %487
  br i1 %488, label %489, label %495

489:                                              ; preds = %485
  %490 = load i32, i32* %26, align 4
  %491 = add nsw i32 %490, -1
  store i32 %491, i32* %26, align 4
  %492 = load i32, i32* %17, align 4
  %493 = load i32, i32* %24, align 4
  %494 = sub nsw i32 %493, %492
  store i32 %494, i32* %24, align 4
  br label %485

495:                                              ; preds = %485
  %496 = load i32, i32* %24, align 4
  %497 = icmp sgt i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %495
  %499 = load i32, i32* %17, align 4
  %500 = load i32, i32* %24, align 4
  %501 = sub nsw i32 %499, %500
  store i32 %501, i32* %25, align 4
  %502 = load i32, i32* %26, align 4
  %503 = add nsw i32 %502, -1
  store i32 %503, i32* %26, align 4
  br label %504

504:                                              ; preds = %498, %495
  %505 = load i32, i32* %25, align 4
  %506 = call i32 @FFMAX(i32 0, i32 %505)
  store i32 %506, i32* %25, align 4
  %507 = load i32, i32* %26, align 4
  %508 = call i32 @FFMAX(i32 0, i32 %507)
  store i32 %508, i32* %26, align 4
  store i32 0, i32* %12, align 4
  br label %509

509:                                              ; preds = %574, %504
  %510 = load i32, i32* %12, align 4
  %511 = load i32, i32* %23, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %577

513:                                              ; preds = %509
  %514 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %514, i32 0, i32 4
  %516 = load %struct.TYPE_15__*, %struct.TYPE_15__** %515, align 8
  %517 = load i32, i32* %25, align 4
  %518 = load i32, i32* %26, align 4
  %519 = call i32* @GET_PIXEL(%struct.TYPE_15__* %516, i32 %517, i32 %518)
  store i32* %519, i32** %33, align 8
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 4
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %521, align 8
  %523 = load i32, i32* %15, align 4
  %524 = load i32, i32* %16, align 4
  %525 = call i32* @GET_PIXEL(%struct.TYPE_15__* %522, i32 %523, i32 %524)
  store i32* %525, i32** %34, align 8
  %526 = load i32*, i32** %34, align 8
  %527 = load i32*, i32** %33, align 8
  %528 = call i32 @AV_COPY32(i32* %526, i32* %527)
  %529 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %538

533:                                              ; preds = %513
  %534 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %535 = load i32*, i32** %34, align 8
  %536 = call i32 @AV_RB32(i32* %535)
  %537 = call i32 @color_cache_put(%struct.TYPE_18__* %534, i32 %536)
  br label %538

538:                                              ; preds = %533, %513
  %539 = load i32, i32* %15, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %15, align 4
  %541 = load i32, i32* %25, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %25, align 4
  %543 = load i32, i32* %15, align 4
  %544 = load i32, i32* %17, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %549

546:                                              ; preds = %538
  store i32 0, i32* %15, align 4
  %547 = load i32, i32* %16, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %16, align 4
  br label %549

549:                                              ; preds = %546, %538
  %550 = load i32, i32* %25, align 4
  %551 = load i32, i32* %17, align 4
  %552 = icmp eq i32 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %549
  store i32 0, i32* %25, align 4
  %554 = load i32, i32* %26, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %26, align 4
  br label %556

556:                                              ; preds = %553, %549
  %557 = load i32, i32* %16, align 4
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %559 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i32 0, i32 4
  %560 = load %struct.TYPE_15__*, %struct.TYPE_15__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = icmp eq i32 %557, %562
  br i1 %563, label %572, label %564

564:                                              ; preds = %556
  %565 = load i32, i32* %26, align 4
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 4
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %565, %570
  br i1 %571, label %572, label %573

572:                                              ; preds = %564, %556
  br label %577

573:                                              ; preds = %564
  br label %574

574:                                              ; preds = %573
  %575 = load i32, i32* %12, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %12, align 4
  br label %509

577:                                              ; preds = %572, %509
  br label %634

578:                                              ; preds = %368
  %579 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %580 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %579, i32 0, i32 4
  %581 = load %struct.TYPE_15__*, %struct.TYPE_15__** %580, align 8
  %582 = load i32, i32* %15, align 4
  %583 = load i32, i32* %16, align 4
  %584 = call i32* @GET_PIXEL(%struct.TYPE_15__* %581, i32 %582, i32 %583)
  store i32* %584, i32** %35, align 8
  %585 = load i32, i32* %20, align 4
  %586 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %587 = load i32, i32* @NUM_LENGTH_CODES, align 4
  %588 = add nsw i32 %586, %587
  %589 = sub nsw i32 %585, %588
  store i32 %589, i32* %36, align 4
  %590 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %591 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %601, label %594

594:                                              ; preds = %578
  %595 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %596 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @AV_LOG_ERROR, align 4
  %599 = call i32 (i32, i32, i8*, ...) @av_log(i32 %597, i32 %598, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %600 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %600, i32* %5, align 4
  br label %637

601:                                              ; preds = %578
  %602 = load i32, i32* %36, align 4
  %603 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %604 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = shl i32 1, %605
  %607 = icmp sge i32 %602, %606
  br i1 %607, label %608, label %615

608:                                              ; preds = %601
  %609 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %610 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* @AV_LOG_ERROR, align 4
  %613 = call i32 (i32, i32, i8*, ...) @av_log(i32 %611, i32 %612, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %614 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %614, i32* %5, align 4
  br label %637

615:                                              ; preds = %601
  %616 = load i32*, i32** %35, align 8
  %617 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %618 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %617, i32 0, i32 3
  %619 = load i32*, i32** %618, align 8
  %620 = load i32, i32* %36, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @AV_WB32(i32* %616, i32 %623)
  %625 = load i32, i32* %15, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %15, align 4
  %627 = load i32, i32* %15, align 4
  %628 = load i32, i32* %17, align 4
  %629 = icmp eq i32 %627, %628
  br i1 %629, label %630, label %633

630:                                              ; preds = %615
  store i32 0, i32* %15, align 4
  %631 = load i32, i32* %16, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %16, align 4
  br label %633

633:                                              ; preds = %630, %615
  br label %634

634:                                              ; preds = %633, %577
  br label %635

635:                                              ; preds = %634, %367
  br label %288

636:                                              ; preds = %288
  store i32 0, i32* %5, align 4
  br label %637

637:                                              ; preds = %636, %608, %594, %409, %258, %193, %171, %148, %125, %103, %58
  %638 = load i32, i32* %5, align 4
  ret i32 %638
}

declare dso_local %struct.TYPE_15__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_thread_get_buffer(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @decode_entropy_image(%struct.TYPE_16__*) #1

declare dso_local i32 @read_huffman_code_simple(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @read_huffman_code_normal(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32* @get_huffman_group(%struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @huff_reader_get_symbol(i32*, i32*) #1

declare dso_local i32* @GET_PIXEL(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @color_cache_put(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @AV_COPY32(i32*, i32*) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
