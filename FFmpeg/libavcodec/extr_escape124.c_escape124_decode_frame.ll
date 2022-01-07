; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_escape124.c_escape124_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_escape124.c_escape124_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32*, i64* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Skipping frame\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid codebook size 0.\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Depth or num_superblocks are too large\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@mask_matrix = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Escape sizes: %i, %i, %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @escape124_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape124_decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_22__, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_17__, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %11, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %12, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 8
  store i32 %46, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @init_get_bits8(i32* %13, i32 %49, i32 %52)
  store i32 %53, i32* %26, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %4
  %56 = load i32, i32* %26, align 4
  store i32 %56, i32* %5, align 4
  br label %449

57:                                               ; preds = %4
  %58 = call i32 @get_bits_left(i32* %13)
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %62, 23
  %64 = sdiv i64 %63, 4320
  %65 = add nsw i64 64, %64
  %66 = icmp slt i64 %59, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %449

68:                                               ; preds = %57
  %69 = call i32 @get_bits_long(i32* %13, i32 32)
  store i32 %69, i32* %14, align 4
  %70 = call i32 @get_bits_long(i32* %13, i32 32)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 276
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %75, 125829120
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %5, align 4
  br label %449

89:                                               ; preds = %78
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = load i32, i32* @AV_LOG_DEBUG, align 4
  %92 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %90, i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %93 = load i32*, i32** %8, align 8
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = call i32 @av_frame_ref(%struct.TYPE_20__* %94, %struct.TYPE_20__* %97)
  store i32 %98, i32* %26, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %26, align 4
  store i32 %101, i32* %5, align 4
  br label %449

102:                                              ; preds = %89
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %5, align 4
  br label %449

104:                                              ; preds = %74
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %195, %104
  %106 = load i32, i32* %16, align 4
  %107 = icmp ult i32 %106, 3
  br i1 %107, label %108, label %198

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add i32 17, %110
  %112 = shl i32 1, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %194

115:                                              ; preds = %108
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = call i32 @get_bits_long(i32* %13, i32 20)
  store i32 %119, i32* %28, align 4
  %120 = load i32, i32* %28, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %123, i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %5, align 4
  br label %449

127:                                              ; preds = %118
  %128 = load i32, i32* %28, align 4
  %129 = sub i32 %128, 1
  %130 = call i32 @av_log2(i32 %129)
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %27, align 4
  br label %148

132:                                              ; preds = %115
  %133 = call i32 @get_bits(i32* %13, i32 4)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %27, align 4
  %138 = shl i32 1, %137
  store i32 %138, i32* %28, align 4
  br label %147

139:                                              ; preds = %132
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %27, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %28, align 4
  br label %147

147:                                              ; preds = %139, %136
  br label %148

148:                                              ; preds = %147, %127
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @INT_MAX, align 4
  %153 = load i32, i32* %27, align 4
  %154 = lshr i32 %152, %153
  %155 = zext i32 %154 to i64
  %156 = icmp sge i64 %151, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %158, i32 %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %5, align 4
  br label %449

162:                                              ; preds = %148
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = call i32 @av_freep(i32* %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i64 %175
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %28, align 4
  %179 = call i32 @unpack_codebook(i32* %13, i32 %177, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = bitcast %struct.TYPE_22__* %176 to i8*
  %182 = bitcast %struct.TYPE_22__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 4, i1 false)
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %162
  store i32 -1, i32* %5, align 4
  br label %449

193:                                              ; preds = %162
  br label %194

194:                                              ; preds = %193, %108
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %16, align 4
  br label %105

198:                                              ; preds = %105
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %201 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %202 = call i32 @ff_get_buffer(%struct.TYPE_21__* %199, %struct.TYPE_20__* %200, i32 %201)
  store i32 %202, i32* %26, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %26, align 4
  store i32 %205, i32* %5, align 4
  br label %449

206:                                              ; preds = %198
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to i32*
  store i32* %212, i32** %23, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %217, 2
  store i32 %218, i32* %25, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  store i32* %226, i32** %22, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 2
  store i32 %234, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %235

235:                                              ; preds = %423, %206
  %236 = load i32, i32* %17, align 4
  %237 = zext i32 %236 to i64
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %242, label %426

242:                                              ; preds = %235
  store i32 0, i32* %32, align 4
  %243 = load i32, i32* %21, align 4
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 @decode_skip_count(i32* %13)
  store i32 %246, i32* %21, align 4
  br label %247

247:                                              ; preds = %245, %242
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32*, i32** %23, align 8
  %252 = load i32, i32* %25, align 4
  %253 = load i32*, i32** %22, align 8
  %254 = load i32, i32* %24, align 4
  %255 = call i32 @copy_superblock(i32* %251, i32 %252, i32* %253, i32 %254)
  br label %385

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32*, i32** %22, align 8
  %260 = load i32, i32* %24, align 4
  %261 = call i32 @copy_superblock(i32* %258, i32 8, i32* %259, i32 %260)
  br label %262

262:                                              ; preds = %299, %256
  %263 = call i32 @get_bits_left(i32* %13)
  %264 = icmp sge i32 %263, 1
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = call i32 @get_bits1(i32* %13)
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %265, %262
  %270 = phi i1 [ false, %262 ], [ %268, %265 ]
  br i1 %270, label %271, label %300

271:                                              ; preds = %269
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %273 = load i32, i32* %17, align 4
  %274 = call i32 @decode_macroblock(%struct.TYPE_18__* %272, i32* %13, i32* %18, i32 %273)
  store i32 %274, i32* %30, align 4
  %275 = call i32 @get_bits(i32* %13, i32 16)
  store i32 %275, i32* %33, align 4
  %276 = load i32, i32* %33, align 4
  %277 = load i32, i32* %32, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %32, align 4
  store i32 0, i32* %16, align 4
  br label %279

279:                                              ; preds = %296, %271
  %280 = load i32, i32* %16, align 4
  %281 = icmp ult i32 %280, 16
  br i1 %281, label %282, label %299

282:                                              ; preds = %279
  %283 = load i32, i32* %33, align 4
  %284 = load i32*, i32** @mask_matrix, align 8
  %285 = load i32, i32* %16, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %283, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %282
  %292 = load i32, i32* %30, align 4
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @insert_mb_into_sb(%struct.TYPE_17__* %31, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %282
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %16, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %16, align 4
  br label %279

299:                                              ; preds = %279
  br label %262

300:                                              ; preds = %269
  %301 = call i32 @get_bits1(i32* %13)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %356, label %303

303:                                              ; preds = %300
  %304 = call i32 @get_bits(i32* %13, i32 4)
  store i32 %304, i32* %34, align 4
  store i32 0, i32* %16, align 4
  br label %305

305:                                              ; preds = %328, %303
  %306 = load i32, i32* %16, align 4
  %307 = icmp ult i32 %306, 4
  br i1 %307, label %308, label %331

308:                                              ; preds = %305
  %309 = load i32, i32* %34, align 4
  %310 = load i32, i32* %16, align 4
  %311 = shl i32 1, %310
  %312 = and i32 %309, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i32, i32* %16, align 4
  %316 = mul i32 %315, 4
  %317 = shl i32 15, %316
  %318 = load i32, i32* %32, align 4
  %319 = xor i32 %318, %317
  store i32 %319, i32* %32, align 4
  br label %327

320:                                              ; preds = %308
  %321 = call i32 @get_bits(i32* %13, i32 4)
  %322 = load i32, i32* %16, align 4
  %323 = mul i32 %322, 4
  %324 = shl i32 %321, %323
  %325 = load i32, i32* %32, align 4
  %326 = xor i32 %325, %324
  store i32 %326, i32* %32, align 4
  br label %327

327:                                              ; preds = %320, %314
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %16, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %16, align 4
  br label %305

331:                                              ; preds = %305
  store i32 0, i32* %16, align 4
  br label %332

332:                                              ; preds = %352, %331
  %333 = load i32, i32* %16, align 4
  %334 = icmp ult i32 %333, 16
  br i1 %334, label %335, label %355

335:                                              ; preds = %332
  %336 = load i32, i32* %32, align 4
  %337 = load i32*, i32** @mask_matrix, align 8
  %338 = load i32, i32* %16, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %336, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %335
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %346 = load i32, i32* %17, align 4
  %347 = call i32 @decode_macroblock(%struct.TYPE_18__* %345, i32* %13, i32* %18, i32 %346)
  store i32 %347, i32* %30, align 4
  %348 = load i32, i32* %30, align 4
  %349 = load i32, i32* %16, align 4
  %350 = call i32 @insert_mb_into_sb(%struct.TYPE_17__* %31, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %344, %335
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %16, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %16, align 4
  br label %332

355:                                              ; preds = %332
  br label %379

356:                                              ; preds = %300
  %357 = load i32, i32* %14, align 4
  %358 = and i32 %357, 65536
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %378

360:                                              ; preds = %356
  br label %361

361:                                              ; preds = %370, %360
  %362 = call i32 @get_bits_left(i32* %13)
  %363 = icmp sge i32 %362, 1
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = call i32 @get_bits1(i32* %13)
  %366 = icmp ne i32 %365, 0
  %367 = xor i1 %366, true
  br label %368

368:                                              ; preds = %364, %361
  %369 = phi i1 [ false, %361 ], [ %367, %364 ]
  br i1 %369, label %370, label %377

370:                                              ; preds = %368
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %372 = load i32, i32* %17, align 4
  %373 = call i32 @decode_macroblock(%struct.TYPE_18__* %371, i32* %13, i32* %18, i32 %372)
  store i32 %373, i32* %30, align 4
  %374 = load i32, i32* %30, align 4
  %375 = call i32 @get_bits(i32* %13, i32 4)
  %376 = call i32 @insert_mb_into_sb(%struct.TYPE_17__* %31, i32 %374, i32 %375)
  br label %361

377:                                              ; preds = %368
  br label %378

378:                                              ; preds = %377, %356
  br label %379

379:                                              ; preds = %378, %355
  %380 = load i32*, i32** %23, align 8
  %381 = load i32, i32* %25, align 4
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @copy_superblock(i32* %380, i32 %381, i32* %383, i32 8)
  br label %385

385:                                              ; preds = %379, %250
  %386 = load i32, i32* %19, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* %19, align 4
  %388 = load i32*, i32** %23, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 8
  store i32* %389, i32** %23, align 8
  %390 = load i32*, i32** %22, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %385
  %393 = load i32*, i32** %22, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 8
  store i32* %394, i32** %22, align 8
  br label %395

395:                                              ; preds = %392, %385
  %396 = load i32, i32* %19, align 4
  %397 = load i32, i32* %20, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %420

399:                                              ; preds = %395
  %400 = load i32, i32* %25, align 4
  %401 = mul i32 %400, 8
  %402 = load i32, i32* %20, align 4
  %403 = mul i32 %402, 8
  %404 = sub i32 %401, %403
  %405 = load i32*, i32** %23, align 8
  %406 = zext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  store i32* %407, i32** %23, align 8
  %408 = load i32*, i32** %22, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %410, label %419

410:                                              ; preds = %399
  %411 = load i32, i32* %24, align 4
  %412 = mul i32 %411, 8
  %413 = load i32, i32* %20, align 4
  %414 = mul i32 %413, 8
  %415 = sub i32 %412, %414
  %416 = load i32*, i32** %22, align 8
  %417 = zext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %22, align 8
  br label %419

419:                                              ; preds = %410, %399
  store i32 0, i32* %19, align 4
  br label %420

420:                                              ; preds = %419, %395
  %421 = load i32, i32* %21, align 4
  %422 = add i32 %421, -1
  store i32 %422, i32* %21, align 4
  br label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %17, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %17, align 4
  br label %235

426:                                              ; preds = %235
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %428 = load i32, i32* @AV_LOG_DEBUG, align 4
  %429 = load i32, i32* %15, align 4
  %430 = load i32, i32* %10, align 4
  %431 = call i32 @get_bits_count(i32* %13)
  %432 = sdiv i32 %431, 8
  %433 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %427, i32 %428, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %429, i32 %430, i32 %432)
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %435, align 8
  %437 = call i32 @av_frame_unref(%struct.TYPE_20__* %436)
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %439, align 8
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %442 = call i32 @av_frame_ref(%struct.TYPE_20__* %440, %struct.TYPE_20__* %441)
  store i32 %442, i32* %26, align 4
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %426
  %445 = load i32, i32* %26, align 4
  store i32 %445, i32* %5, align 4
  br label %449

446:                                              ; preds = %426
  %447 = load i32*, i32** %8, align 8
  store i32 1, i32* %447, align 4
  %448 = load i32, i32* %15, align 4
  store i32 %448, i32* %5, align 4
  br label %449

449:                                              ; preds = %446, %444, %204, %192, %157, %122, %102, %100, %87, %67, %55
  %450 = load i32, i32* %5, align 4
  ret i32 %450
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @unpack_codebook(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @decode_skip_count(i32*) #1

declare dso_local i32 @copy_superblock(i32*, i32, i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @decode_macroblock(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32 @insert_mb_into_sb(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
