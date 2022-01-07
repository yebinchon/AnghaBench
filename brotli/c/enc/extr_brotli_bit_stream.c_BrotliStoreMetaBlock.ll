; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlock.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@HuffmanTree = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@BROTLI_NUM_HISTOGRAM_DISTANCE_SYMBOLS = common dso_local global i64 0, align 8
@MAX_HUFFMAN_TREE_SIZE = common dso_local global i32 0, align 4
@BROTLI_NUM_LITERAL_SYMBOLS = common dso_local global i64 0, align 8
@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i64 0, align 8
@BROTLI_LITERAL_CONTEXT_BITS = common dso_local global i32 0, align 4
@BROTLI_DISTANCE_CONTEXT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliStoreMetaBlock(i32* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, %struct.TYPE_19__* %8, i32 %9, %struct.TYPE_18__* %10, i64 %11, %struct.TYPE_17__* %12, i64* %13, i64* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_20__*, align 8
  %40 = alloca %struct.TYPE_18__, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  %49 = alloca i64, align 8
  store i32* %0, i32** %16, align 8
  store i64* %1, i64** %17, align 8
  store i64 %2, i64* %18, align 8
  store i64 %3, i64* %19, align 8
  store i64 %4, i64* %20, align 8
  store i64 %5, i64* %21, align 8
  store i64 %6, i64* %22, align 8
  store i64 %7, i64* %23, align 8
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %24, align 8
  store i32 %9, i32* %25, align 4
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %26, align 8
  store i64 %11, i64* %27, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %28, align 8
  store i64* %13, i64** %29, align 8
  store i64* %14, i64** %30, align 8
  %50 = load i64, i64* %18, align 8
  store i64 %50, i64* %31, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %33, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %34, align 8
  %59 = load i32, i32* @HuffmanTree, align 4
  %60 = load i32, i32* @tree, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %25, align 4
  %63 = call i32 @BROTLI_CONTEXT_LUT(i32 %62)
  store i32 %63, i32* %35, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %39, align 8
  %66 = load i64, i64* %34, align 8
  %67 = load i64, i64* @BROTLI_NUM_HISTOGRAM_DISTANCE_SYMBOLS, align 8
  %68 = icmp sle i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BROTLI_DCHECK(i32 %69)
  %71 = load i64, i64* %23, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64*, i64** %29, align 8
  %74 = load i64*, i64** %30, align 8
  %75 = call i32 @StoreCompressedMetaBlockHeader(i64 %71, i64 %72, i64* %73, i64* %74)
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* @HuffmanTree, align 4
  %78 = load i32, i32* @MAX_HUFFMAN_TREE_SIZE, align 4
  %79 = call i32 @BROTLI_ALLOC(i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* @tree, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = call i64 @BROTLI_IS_OOM(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %15
  %84 = load i32, i32* @tree, align 4
  %85 = call i64 @BROTLI_IS_NULL(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %15
  br label %467

88:                                               ; preds = %83
  %89 = load i64, i64* @BROTLI_NUM_LITERAL_SYMBOLS, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 10
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @InitBlockEncoder(i32* %36, i64 %89, i64 %93, i32 %97, i32 %101, i32 %105)
  %107 = load i64, i64* @BROTLI_NUM_COMMAND_SYMBOLS, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 12
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 12
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 12
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @InitBlockEncoder(i32* %37, i64 %107, i64 %111, i32 %115, i32 %119, i32 %123)
  %125 = load i64, i64* %34, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 11
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 11
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @InitBlockEncoder(i32* %38, i64 %125, i64 %129, i32 %133, i32 %137, i32 %141)
  %143 = load i32, i32* @tree, align 4
  %144 = load i64*, i64** %29, align 8
  %145 = load i64*, i64** %30, align 8
  %146 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %36, i32 %143, i64* %144, i64* %145)
  %147 = load i32, i32* @tree, align 4
  %148 = load i64*, i64** %29, align 8
  %149 = load i64*, i64** %30, align 8
  %150 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %37, i32 %147, i64* %148, i64* %149)
  %151 = load i32, i32* @tree, align 4
  %152 = load i64*, i64** %29, align 8
  %153 = load i64*, i64** %30, align 8
  %154 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %38, i32 %151, i64* %152, i64* %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i64*, i64** %29, align 8
  %159 = load i64*, i64** %30, align 8
  %160 = call i32 @BrotliWriteBits(i64 2, i32 %157, i64* %158, i64* %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = ashr i32 %163, %166
  %168 = load i64*, i64** %29, align 8
  %169 = load i64*, i64** %30, align 8
  %170 = call i32 @BrotliWriteBits(i64 4, i32 %167, i64* %168, i64* %169)
  store i64 0, i64* %32, align 8
  br label %171

171:                                              ; preds = %183, %88
  %172 = load i64, i64* %32, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 10
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ult i64 %172, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load i32, i32* %25, align 4
  %180 = load i64*, i64** %29, align 8
  %181 = load i64*, i64** %30, align 8
  %182 = call i32 @BrotliWriteBits(i64 2, i32 %179, i64* %180, i64* %181)
  br label %183

183:                                              ; preds = %178
  %184 = load i64, i64* %32, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %32, align 8
  br label %171

186:                                              ; preds = %171
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @BROTLI_LITERAL_CONTEXT_BITS, align 4
  %196 = load i32, i32* @tree, align 4
  %197 = load i64*, i64** %29, align 8
  %198 = load i64*, i64** %30, align 8
  %199 = call i32 @StoreTrivialContextMap(i32 %194, i32 %195, i32 %196, i64* %197, i64* %198)
  br label %220

200:                                              ; preds = %186
  %201 = load i32*, i32** %16, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @tree, align 4
  %212 = load i64*, i64** %29, align 8
  %213 = load i64*, i64** %30, align 8
  %214 = call i32 @EncodeContextMap(i32* %201, i32 %204, i64 %207, i32 %210, i32 %211, i64* %212, i64* %213)
  %215 = load i32*, i32** %16, align 8
  %216 = call i64 @BROTLI_IS_OOM(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %200
  br label %467

219:                                              ; preds = %200
  br label %220

220:                                              ; preds = %219, %191
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @BROTLI_DISTANCE_CONTEXT_BITS, align 4
  %230 = load i32, i32* @tree, align 4
  %231 = load i64*, i64** %29, align 8
  %232 = load i64*, i64** %30, align 8
  %233 = call i32 @StoreTrivialContextMap(i32 %228, i32 %229, i32 %230, i64* %231, i64* %232)
  br label %254

234:                                              ; preds = %220
  %235 = load i32*, i32** %16, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @tree, align 4
  %246 = load i64*, i64** %29, align 8
  %247 = load i64*, i64** %30, align 8
  %248 = call i32 @EncodeContextMap(i32* %235, i32 %238, i64 %241, i32 %244, i32 %245, i64* %246, i64* %247)
  %249 = load i32*, i32** %16, align 8
  %250 = call i64 @BROTLI_IS_OOM(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %234
  br label %467

253:                                              ; preds = %234
  br label %254

254:                                              ; preds = %253, %225
  %255 = load i32*, i32** %16, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = load i64, i64* @BROTLI_NUM_LITERAL_SYMBOLS, align 8
  %263 = load i32, i32* @tree, align 4
  %264 = load i64*, i64** %29, align 8
  %265 = load i64*, i64** %30, align 8
  %266 = call i32 @BuildAndStoreEntropyCodesLiteral(i32* %255, i32* %36, i32 %258, i32 %261, i64 %262, i32 %263, i64* %264, i64* %265)
  %267 = load i32*, i32** %16, align 8
  %268 = call i64 @BROTLI_IS_OOM(i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %254
  br label %467

271:                                              ; preds = %254
  %272 = load i32*, i32** %16, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load i64, i64* @BROTLI_NUM_COMMAND_SYMBOLS, align 8
  %280 = load i32, i32* @tree, align 4
  %281 = load i64*, i64** %29, align 8
  %282 = load i64*, i64** %30, align 8
  %283 = call i32 @BuildAndStoreEntropyCodesCommand(i32* %272, i32* %37, i32 %275, i32 %278, i64 %279, i32 %280, i64* %281, i64* %282)
  %284 = load i32*, i32** %16, align 8
  %285 = call i64 @BROTLI_IS_OOM(i32* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %271
  br label %467

288:                                              ; preds = %271
  %289 = load i32*, i32** %16, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load i64, i64* %33, align 8
  %297 = load i32, i32* @tree, align 4
  %298 = load i64*, i64** %29, align 8
  %299 = load i64*, i64** %30, align 8
  %300 = call i32 @BuildAndStoreEntropyCodesDistance(i32* %289, i32* %38, i32 %292, i32 %295, i64 %296, i32 %297, i64* %298, i64* %299)
  %301 = load i32*, i32** %16, align 8
  %302 = call i64 @BROTLI_IS_OOM(i32* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %288
  br label %467

305:                                              ; preds = %288
  %306 = load i32*, i32** %16, align 8
  %307 = load i32, i32* @tree, align 4
  %308 = call i32 @BROTLI_FREE(i32* %306, i32 %307)
  store i64 0, i64* %32, align 8
  br label %309

309:                                              ; preds = %451, %305
  %310 = load i64, i64* %32, align 8
  %311 = load i64, i64* %27, align 8
  %312 = icmp ult i64 %310, %311
  br i1 %312, label %313, label %454

313:                                              ; preds = %309
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %315 = load i64, i64* %32, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i64 %315
  %317 = bitcast %struct.TYPE_18__* %40 to i8*
  %318 = bitcast %struct.TYPE_18__* %316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %317, i8* align 8 %318, i64 24, i1 false)
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %41, align 8
  %321 = load i64, i64* %41, align 8
  %322 = load i64*, i64** %29, align 8
  %323 = load i64*, i64** %30, align 8
  %324 = call i32 @StoreSymbol(i32* %37, i64 %321, i64* %322, i64* %323)
  %325 = load i64*, i64** %29, align 8
  %326 = load i64*, i64** %30, align 8
  %327 = call i32 @StoreCommandExtra(%struct.TYPE_18__* %40, i64* %325, i64* %326)
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %313
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %42, align 8
  br label %335

335:                                              ; preds = %350, %332
  %336 = load i64, i64* %42, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %353

338:                                              ; preds = %335
  %339 = load i64*, i64** %17, align 8
  %340 = load i64, i64* %31, align 8
  %341 = load i64, i64* %20, align 8
  %342 = and i64 %340, %341
  %343 = getelementptr inbounds i64, i64* %339, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = load i64*, i64** %29, align 8
  %346 = load i64*, i64** %30, align 8
  %347 = call i32 @StoreSymbol(i32* %36, i64 %344, i64* %345, i64* %346)
  %348 = load i64, i64* %31, align 8
  %349 = add i64 %348, 1
  store i64 %349, i64* %31, align 8
  br label %350

350:                                              ; preds = %338
  %351 = load i64, i64* %42, align 8
  %352 = add i64 %351, -1
  store i64 %352, i64* %42, align 8
  br label %335

353:                                              ; preds = %335
  br label %388

354:                                              ; preds = %313
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %43, align 8
  br label %357

357:                                              ; preds = %384, %354
  %358 = load i64, i64* %43, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %387

360:                                              ; preds = %357
  %361 = load i64, i64* %21, align 8
  %362 = load i64, i64* %22, align 8
  %363 = load i32, i32* %35, align 4
  %364 = call i64 @BROTLI_CONTEXT(i64 %361, i64 %362, i32 %363)
  store i64 %364, i64* %44, align 8
  %365 = load i64*, i64** %17, align 8
  %366 = load i64, i64* %31, align 8
  %367 = load i64, i64* %20, align 8
  %368 = and i64 %366, %367
  %369 = getelementptr inbounds i64, i64* %365, i64 %368
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %45, align 8
  %371 = load i64, i64* %45, align 8
  %372 = load i64, i64* %44, align 8
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = load i64*, i64** %29, align 8
  %377 = load i64*, i64** %30, align 8
  %378 = load i32, i32* @BROTLI_LITERAL_CONTEXT_BITS, align 4
  %379 = call i32 @StoreSymbolWithContext(i32* %36, i64 %371, i64 %372, i32 %375, i64* %376, i64* %377, i32 %378)
  %380 = load i64, i64* %21, align 8
  store i64 %380, i64* %22, align 8
  %381 = load i64, i64* %45, align 8
  store i64 %381, i64* %21, align 8
  %382 = load i64, i64* %31, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %31, align 8
  br label %384

384:                                              ; preds = %360
  %385 = load i64, i64* %43, align 8
  %386 = add i64 %385, -1
  store i64 %386, i64* %43, align 8
  br label %357

387:                                              ; preds = %357
  br label %388

388:                                              ; preds = %387, %353
  %389 = call i64 @CommandCopyLen(%struct.TYPE_18__* %40)
  %390 = load i64, i64* %31, align 8
  %391 = add i64 %390, %389
  store i64 %391, i64* %31, align 8
  %392 = call i64 @CommandCopyLen(%struct.TYPE_18__* %40)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %450

394:                                              ; preds = %388
  %395 = load i64*, i64** %17, align 8
  %396 = load i64, i64* %31, align 8
  %397 = sub i64 %396, 2
  %398 = load i64, i64* %20, align 8
  %399 = and i64 %397, %398
  %400 = getelementptr inbounds i64, i64* %395, i64 %399
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %22, align 8
  %402 = load i64*, i64** %17, align 8
  %403 = load i64, i64* %31, align 8
  %404 = sub i64 %403, 1
  %405 = load i64, i64* %20, align 8
  %406 = and i64 %404, %405
  %407 = getelementptr inbounds i64, i64* %402, i64 %406
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %21, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp uge i64 %410, 128
  br i1 %411, label %412, label %449

412:                                              ; preds = %394
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = and i32 %414, 1023
  %416 = sext i32 %415 to i64
  store i64 %416, i64* %46, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = ashr i32 %418, 10
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %47, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %48, align 4
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %412
  %428 = load i64, i64* %46, align 8
  %429 = load i64*, i64** %29, align 8
  %430 = load i64*, i64** %30, align 8
  %431 = call i32 @StoreSymbol(i32* %38, i64 %428, i64* %429, i64* %430)
  br label %443

432:                                              ; preds = %412
  %433 = call i64 @CommandDistanceContext(%struct.TYPE_18__* %40)
  store i64 %433, i64* %49, align 8
  %434 = load i64, i64* %46, align 8
  %435 = load i64, i64* %49, align 8
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i64*, i64** %29, align 8
  %440 = load i64*, i64** %30, align 8
  %441 = load i32, i32* @BROTLI_DISTANCE_CONTEXT_BITS, align 4
  %442 = call i32 @StoreSymbolWithContext(i32* %38, i64 %434, i64 %435, i32 %438, i64* %439, i64* %440, i32 %441)
  br label %443

443:                                              ; preds = %432, %427
  %444 = load i64, i64* %47, align 8
  %445 = load i32, i32* %48, align 4
  %446 = load i64*, i64** %29, align 8
  %447 = load i64*, i64** %30, align 8
  %448 = call i32 @BrotliWriteBits(i64 %444, i32 %445, i64* %446, i64* %447)
  br label %449

449:                                              ; preds = %443, %394
  br label %450

450:                                              ; preds = %449, %388
  br label %451

451:                                              ; preds = %450
  %452 = load i64, i64* %32, align 8
  %453 = add i64 %452, 1
  store i64 %453, i64* %32, align 8
  br label %309

454:                                              ; preds = %309
  %455 = load i32*, i32** %16, align 8
  %456 = call i32 @CleanupBlockEncoder(i32* %455, i32* %38)
  %457 = load i32*, i32** %16, align 8
  %458 = call i32 @CleanupBlockEncoder(i32* %457, i32* %37)
  %459 = load i32*, i32** %16, align 8
  %460 = call i32 @CleanupBlockEncoder(i32* %459, i32* %36)
  %461 = load i64, i64* %23, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %454
  %464 = load i64*, i64** %29, align 8
  %465 = load i64*, i64** %30, align 8
  %466 = call i32 @JumpToByteBoundary(i64* %464, i64* %465)
  br label %467

467:                                              ; preds = %87, %218, %252, %270, %287, %304, %463, %454
  ret void
}

declare dso_local i32 @BROTLI_CONTEXT_LUT(i32) #1

declare dso_local i32 @BROTLI_DCHECK(i32) #1

declare dso_local i32 @StoreCompressedMetaBlockHeader(i64, i64, i64*, i64*) #1

declare dso_local i32 @BROTLI_ALLOC(i32*, i32, i32) #1

declare dso_local i64 @BROTLI_IS_OOM(i32*) #1

declare dso_local i64 @BROTLI_IS_NULL(i32) #1

declare dso_local i32 @InitBlockEncoder(i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @BuildAndStoreBlockSwitchEntropyCodes(i32*, i32, i64*, i64*) #1

declare dso_local i32 @BrotliWriteBits(i64, i32, i64*, i64*) #1

declare dso_local i32 @StoreTrivialContextMap(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @EncodeContextMap(i32*, i32, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesLiteral(i32*, i32*, i32, i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesCommand(i32*, i32*, i32, i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesDistance(i32*, i32*, i32, i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @BROTLI_FREE(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @StoreSymbol(i32*, i64, i64*, i64*) #1

declare dso_local i32 @StoreCommandExtra(%struct.TYPE_18__*, i64*, i64*) #1

declare dso_local i64 @BROTLI_CONTEXT(i64, i64, i32) #1

declare dso_local i32 @StoreSymbolWithContext(i32*, i64, i64, i32, i64*, i64*, i32) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_18__*) #1

declare dso_local i64 @CommandDistanceContext(%struct.TYPE_18__*) #1

declare dso_local i32 @CleanupBlockEncoder(i32*, i32*) #1

declare dso_local i32 @JumpToByteBoundary(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
