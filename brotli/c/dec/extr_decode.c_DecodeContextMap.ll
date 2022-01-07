; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_DecodeContextMap.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_DecodeContextMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_ALLOC_CONTEXT_MAP = common dso_local global i32 0, align 4
@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_FORMAT_CONTEXT_MAP_REPEAT = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32**, %struct.TYPE_11__*)* @DecodeContextMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeContextMap(i32 %0, i32* %1, i32** %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i32* %23, i32** %10, align 8
  %24 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %262 [
    i32 130, label %31
    i32 129, label %78
    i32 131, label %108
    i32 132, label %132
    i32 128, label %241
  ]

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @DecodeVarLenUint8(%struct.TYPE_11__* %32, i32* %33, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %265

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @BROTLI_LOG_UINT(i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BROTLI_LOG_UINT(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = call i64 @BROTLI_DECODER_ALLOC(%struct.TYPE_11__* %52, i64 %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32**, i32*** %8, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load i32, i32* @BROTLI_DECODER_ERROR_ALLOC_CONTEXT_MAP, align 4
  %63 = call i32 @BROTLI_FAILURE(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %265

64:                                               ; preds = %41
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @memset(i32* %70, i32 0, i64 %72)
  %74 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %74, i32* %5, align 4
  br label %265

75:                                               ; preds = %64
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 129, i32* %77, align 4
  br label %78

78:                                               ; preds = %4, %75
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @BrotliSafeGetBits(i32* %79, i32 5, i32* %13)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %83, i32* %5, align 4
  br label %265

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @BrotliDropBits(i32* %94, i32 5)
  br label %101

96:                                               ; preds = %84
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @BrotliDropBits(i32* %99, i32 1)
  br label %101

101:                                              ; preds = %96, %88
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BROTLI_LOG_UINT(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 131, i32* %107, align 4
  br label %108

108:                                              ; preds = %4, %101
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = call i32 @ReadHuffmanCode(i32 %115, i32 %116, i32 %119, i32* null, %struct.TYPE_11__* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %108
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %265

127:                                              ; preds = %108
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  store i32 65535, i32* %129, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 132, i32* %131, align 4
  br label %132

132:                                              ; preds = %4, %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  %139 = load i32**, i32*** %8, align 8
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %17, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 65535
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %239, %188, %178, %132
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi i1 [ true, %147 ], [ %153, %151 ]
  br i1 %155, label %156, label %240

156:                                              ; preds = %154
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %198, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @SafeReadSymbol(i32 %162, i32* %163, i32* %18)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  store i32 65535, i32* %168, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %172, i32* %5, align 4
  br label %265

173:                                              ; preds = %159
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @BROTLI_LOG_UINT(i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 0, i32* %183, align 4
  br label %147

184:                                              ; preds = %173
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %16, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %184
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  br label %147

197:                                              ; preds = %184
  br label %200

198:                                              ; preds = %156
  %199 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %199, i32* %19, align 4
  br label %200

200:                                              ; preds = %198, %197
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @BrotliSafeReadBits(i32* %201, i32 %202, i32* %20)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %18, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %212, i32* %5, align 4
  br label %265

213:                                              ; preds = %200
  %214 = load i32, i32* %18, align 4
  %215 = shl i32 1, %214
  %216 = load i32, i32* %20, align 4
  %217 = add i32 %216, %215
  store i32 %217, i32* %20, align 4
  %218 = load i32, i32* %20, align 4
  %219 = call i32 @BROTLI_LOG_UINT(i32 %218)
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %6, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %213
  %226 = load i32, i32* @BROTLI_DECODER_ERROR_FORMAT_CONTEXT_MAP_REPEAT, align 4
  %227 = call i32 @BROTLI_FAILURE(i32 %226)
  store i32 %227, i32* %5, align 4
  br label %265

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %235, %228
  %230 = load i32*, i32** %17, align 8
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 0, i32* %234, align 4
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %20, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %229, label %239

239:                                              ; preds = %235
  br label %147

240:                                              ; preds = %154
  br label %241

241:                                              ; preds = %4, %240
  %242 = load i32*, i32** %10, align 8
  %243 = call i32 @BrotliSafeReadBits(i32* %242, i32 1, i32* %21)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  store i32 128, i32* %247, align 4
  %248 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %248, i32* %5, align 4
  br label %265

249:                                              ; preds = %241
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i32**, i32*** %8, align 8
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %257 = call i32 @InverseMoveToFrontTransform(i32* %254, i32 %255, %struct.TYPE_11__* %256)
  br label %258

258:                                              ; preds = %252, %249
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  store i32 130, i32* %260, align 4
  %261 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %261, i32* %5, align 4
  br label %265

262:                                              ; preds = %4
  %263 = load i32, i32* @BROTLI_DECODER_ERROR_UNREACHABLE, align 4
  %264 = call i32 @BROTLI_FAILURE(i32 %263)
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %262, %258, %245, %225, %205, %166, %125, %82, %68, %61, %39
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i32 @DecodeVarLenUint8(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @BROTLI_LOG_UINT(i32) #1

declare dso_local i64 @BROTLI_DECODER_ALLOC(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @BROTLI_FAILURE(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @BrotliSafeGetBits(i32*, i32, i32*) #1

declare dso_local i32 @BrotliDropBits(i32*, i32) #1

declare dso_local i32 @ReadHuffmanCode(i32, i32, i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @SafeReadSymbol(i32, i32*, i32*) #1

declare dso_local i32 @BrotliSafeReadBits(i32*, i32, i32*) #1

declare dso_local i32 @InverseMoveToFrontTransform(i32*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
