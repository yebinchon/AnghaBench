; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_unpack_superblocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_unpack_superblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32*, i32, i32**, i32*, i32*, i32, i32, i32*, i32*, i32**, i64, %struct.TYPE_7__*, %struct.TYPE_6__, i64, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SB_FULLY_CODED = common dso_local global i32 0, align 4
@MAXIMUM_LONG_BIT_RUN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid partially coded superblock run length\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid fully coded superblock run length\0A\00", align 1
@SB_NOT_CODED = common dso_local global i32 0, align 4
@MODE_COPY = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SB_PARTIALLY_CODED = common dso_local global i32 0, align 4
@MODE_INTER_NO_MV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @unpack_superblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_superblocks(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds i32, i32* %22, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 17
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @SB_FULLY_CODED, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memset(i32* %37, i32 %38, i32 %41)
  br label %237

43:                                               ; preds = %2
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @get_bits1(i32* %44)
  %46 = xor i32 %45, 1
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %124, %43
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @get_bits_left(i32* %54)
  %56 = icmp sgt i32 %55, 0
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ false, %47 ], [ %56, %53 ]
  br i1 %58, label %59, label %125

59:                                               ; preds = %57
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 20
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MAXIMUM_LONG_BIT_RUN, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @get_bits1(i32* %69)
  store i32 %70, i32* %7, align 4
  br label %74

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 19
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @get_vlc2(i32* %75, i32 %79, i32 6, i32 2)
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 34
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @get_bits(i32* %85, i32 12)
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %84, %74
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = icmp sgt i32 %92, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(i32 %102, i32 %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %524

105:                                              ; preds = %91
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @memset(i32* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %120, %105
  br label %47

125:                                              ; preds = %57
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %228

131:                                              ; preds = %125
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @get_bits1(i32* %132)
  %134 = xor i32 %133, 1
  store i32 %134, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %223, %131
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %139, %140
  %142 = icmp slt i32 %136, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @get_bits_left(i32* %144)
  %146 = icmp sgt i32 %145, 0
  br label %147

147:                                              ; preds = %143, %135
  %148 = phi i1 [ false, %135 ], [ %146, %143 ]
  br i1 %148, label %149, label %227

149:                                              ; preds = %147
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 20
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @MAXIMUM_LONG_BIT_RUN, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @get_bits1(i32* %159)
  store i32 %160, i32* %7, align 4
  br label %164

161:                                              ; preds = %154, %149
  %162 = load i32, i32* %7, align 4
  %163 = xor i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 19
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @get_vlc2(i32* %165, i32 %169, i32 6, i32 2)
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 34
  br i1 %173, label %174, label %181

174:                                              ; preds = %164
  %175 = load i32*, i32** %5, align 8
  %176 = call i64 @get_bits(i32* %175, i32 12)
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %174, %164
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %220, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %223

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 18
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = call i32 @av_log(i32 %195, i32 %196, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %524

198:                                              ; preds = %186
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SB_NOT_CODED, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %198
  %209 = load i32, i32* %7, align 4
  %210 = mul nsw i32 2, %209
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %208, %198
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %182

223:                                              ; preds = %182
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %16, align 4
  br label %135

227:                                              ; preds = %147
  br label %228

228:                                              ; preds = %227, %125
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  store i32 0, i32* %9, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @get_bits1(i32* %232)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = xor i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231, %228
  br label %237

237:                                              ; preds = %236, %34
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 14
  store i64 0, i64* %239, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @MODE_COPY, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @memset(i32* %242, i32 %243, i32 %246)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 17
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %237
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  br label %260

256:                                              ; preds = %237
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 8
  %259 = load i32*, i32** %258, align 8
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i32* [ %255, %252 ], [ %259, %256 ]
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 6
  %264 = load i32**, i32*** %263, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 0
  store i32* %261, i32** %265, align 8
  store i32 0, i32* %14, align 4
  br label %266

266:                                              ; preds = %520, %260
  %267 = load i32, i32* %14, align 4
  %268 = icmp slt i32 %267, 3
  br i1 %268, label %269, label %523

269:                                              ; preds = %266
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %269
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  br label %285

281:                                              ; preds = %269
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 4
  br label %285

285:                                              ; preds = %281, %277
  %286 = phi i32 [ %280, %277 ], [ %284, %281 ]
  %287 = add nsw i32 %274, %286
  store i32 %287, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 17
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %362

292:                                              ; preds = %285
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 11
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %353

301:                                              ; preds = %292
  %302 = load i32, i32* %17, align 4
  store i32 %302, i32* %11, align 4
  br label %303

303:                                              ; preds = %342, %301
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %18, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %345

307:                                              ; preds = %303
  store i32 0, i32* %12, align 4
  br label %308

308:                                              ; preds = %338, %307
  %309 = load i32, i32* %12, align 4
  %310 = icmp slt i32 %309, 16
  br i1 %310, label %311, label %341

311:                                              ; preds = %308
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 12
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %11, align 4
  %316 = mul nsw i32 %315, 16
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %316, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %314, i64 %319
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %13, align 4
  %322 = load i32, i32* %13, align 4
  %323 = icmp ne i32 %322, -1
  br i1 %323, label %324, label %337

324:                                              ; preds = %311
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 6
  %328 = load i32**, i32*** %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %328, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %19, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %19, align 4
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  store i32 %325, i32* %336, align 4
  br label %337

337:                                              ; preds = %324, %311
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %12, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %12, align 4
  br label %308

341:                                              ; preds = %308
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %11, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %11, align 4
  br label %303

345:                                              ; preds = %303
  %346 = load i32, i32* %19, align 4
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 11
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %14, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 %346, i32* %352, align 4
  br label %361

353:                                              ; preds = %292
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 11
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %14, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %19, align 4
  br label %361

361:                                              ; preds = %353, %345
  br label %468

362:                                              ; preds = %285
  %363 = load i32, i32* %17, align 4
  store i32 %363, i32* %11, align 4
  br label %364

364:                                              ; preds = %464, %362
  %365 = load i32, i32* %11, align 4
  %366 = load i32, i32* %18, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i32*, i32** %5, align 8
  %370 = call i32 @get_bits_left(i32* %369)
  %371 = icmp sgt i32 %370, 0
  br label %372

372:                                              ; preds = %368, %364
  %373 = phi i1 [ false, %364 ], [ %371, %368 ]
  br i1 %373, label %374, label %467

374:                                              ; preds = %372
  %375 = load i32*, i32** %5, align 8
  %376 = call i32 @get_bits_left(i32* %375)
  %377 = load i32, i32* %15, align 4
  %378 = ashr i32 %377, 2
  %379 = icmp slt i32 %376, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %374
  %381 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %381, i32* %3, align 4
  br label %524

382:                                              ; preds = %374
  store i32 0, i32* %12, align 4
  br label %383

383:                                              ; preds = %460, %382
  %384 = load i32, i32* %12, align 4
  %385 = icmp slt i32 %384, 16
  br i1 %385, label %386, label %463

386:                                              ; preds = %383
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 12
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %11, align 4
  %391 = mul nsw i32 %390, 16
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %389, i64 %394
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %13, align 4
  %398 = icmp ne i32 %397, -1
  br i1 %398, label %399, label %459

399:                                              ; preds = %386
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 2
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %11, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %20, align 4
  %407 = load i32, i32* %20, align 4
  %408 = load i32, i32* @SB_PARTIALLY_CODED, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %399
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %411, -1
  store i32 %412, i32* %9, align 4
  %413 = icmp eq i32 %411, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %410
  %415 = load i32, i32* %7, align 4
  %416 = xor i32 %415, 1
  store i32 %416, i32* %7, align 4
  %417 = load i32*, i32** %5, align 8
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 16
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @get_vlc2(i32* %417, i32 %421, i32 5, i32 2)
  store i32 %422, i32* %9, align 4
  br label %423

423:                                              ; preds = %414, %410
  %424 = load i32, i32* %7, align 4
  store i32 %424, i32* %20, align 4
  br label %425

425:                                              ; preds = %423, %399
  %426 = load i32, i32* %20, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %449

428:                                              ; preds = %425
  %429 = load i32, i32* @MODE_INTER_NO_MV, align 4
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 15
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %431, align 8
  %433 = load i32, i32* %13, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 0
  store i32 %429, i32* %436, align 4
  %437 = load i32, i32* %13, align 4
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 6
  %440 = load i32**, i32*** %439, align 8
  %441 = load i32, i32* %14, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32*, i32** %440, i64 %442
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %19, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %19, align 4
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  store i32 %437, i32* %448, align 4
  br label %458

449:                                              ; preds = %425
  %450 = load i32, i32* @MODE_COPY, align 4
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 15
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %452, align 8
  %454 = load i32, i32* %13, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  store i32 %450, i32* %457, align 4
  br label %458

458:                                              ; preds = %449, %428
  br label %459

459:                                              ; preds = %458, %386
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %12, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %12, align 4
  br label %383

463:                                              ; preds = %383
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %11, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %11, align 4
  br label %364

467:                                              ; preds = %372
  br label %468

468:                                              ; preds = %467, %361
  %469 = load i32, i32* %14, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %473, label %471

471:                                              ; preds = %468
  %472 = load i32, i32* %19, align 4
  store i32 %472, i32* %15, align 4
  br label %473

473:                                              ; preds = %471, %468
  %474 = load i32, i32* %19, align 4
  %475 = sext i32 %474 to i64
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 14
  %478 = load i64, i64* %477, align 8
  %479 = add nsw i64 %478, %475
  store i64 %479, i64* %477, align 8
  store i32 0, i32* %11, align 4
  br label %480

480:                                              ; preds = %495, %473
  %481 = load i32, i32* %11, align 4
  %482 = icmp slt i32 %481, 64
  br i1 %482, label %483, label %498

483:                                              ; preds = %480
  %484 = load i32, i32* %19, align 4
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 13
  %487 = load i32**, i32*** %486, align 8
  %488 = load i32, i32* %14, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32*, i32** %487, i64 %489
  %491 = load i32*, i32** %490, align 8
  %492 = load i32, i32* %11, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  store i32 %484, i32* %494, align 4
  br label %495

495:                                              ; preds = %483
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %11, align 4
  br label %480

498:                                              ; preds = %480
  %499 = load i32, i32* %14, align 4
  %500 = icmp slt i32 %499, 2
  br i1 %500, label %501, label %519

501:                                              ; preds = %498
  %502 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %502, i32 0, i32 6
  %504 = load i32**, i32*** %503, align 8
  %505 = load i32, i32* %14, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32*, i32** %504, i64 %506
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %19, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 6
  %514 = load i32**, i32*** %513, align 8
  %515 = load i32, i32* %14, align 4
  %516 = add nsw i32 %515, 1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32*, i32** %514, i64 %517
  store i32* %511, i32** %518, align 8
  br label %519

519:                                              ; preds = %501, %498
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %14, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %14, align 4
  br label %266

523:                                              ; preds = %266
  store i32 0, i32* %3, align 4
  br label %524

524:                                              ; preds = %523, %380, %192, %99
  %525 = load i32, i32* %3, align 4
  ret i32 %525
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
