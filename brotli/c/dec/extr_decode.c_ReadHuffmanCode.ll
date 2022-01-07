; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadHuffmanCode.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadHuffmanCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i64, i64*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }

@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH = common dso_local global i32 0, align 4
@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@HUFFMAN_TABLE_BITS = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_INITIAL_REPEATED_CODE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[ReadHuffmanCode] space = %d\0A\00", align 1
@BROTLI_DECODER_ERROR_FORMAT_HUFFMAN_SPACE = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i64*, %struct.TYPE_11__*)* @ReadHuffmanCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadHuffmanCode(i64 %0, i64 %1, i32* %2, i64* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %13, align 8
  br label %26

26:                                               ; preds = %47, %5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %253 [
    i32 131, label %30
    i32 128, label %70
    i32 129, label %83
    i32 130, label %94
    i32 133, label %136
    i32 132, label %203
  ]

30:                                               ; preds = %26
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = call i32 @BrotliSafeReadBits(i32* %31, i32 2, i64* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %37, i32* %6, align 4
  br label %256

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @BROTLI_LOG_UINT(i64 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 1
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 32, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32* %55, i32 0, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @memset(i32* %65, i32 0, i32 8)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 133, i32* %68, align 8
  br label %26

69:                                               ; preds = %38
  br label %70

70:                                               ; preds = %26, %69
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = call i32 @BrotliSafeReadBits(i32* %71, i32 2, i64* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 128, i32* %78, align 8
  %79 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %79, i32* %6, align 4
  br label %256

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %26, %80
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %87 = call i32 @ReadSimpleHuffmanSymbols(i64 %84, i64 %85, %struct.TYPE_11__* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %256

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %26, %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 3
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @BrotliSafeReadBits(i32* %100, i32 1, i64* %16)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 130, i32* %105, align 8
  %106 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %106, i32* %6, align 4
  br label %256

107:                                              ; preds = %99
  %108 = load i64, i64* %16, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %107, %94
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @BROTLI_LOG_UINT(i64 %116)
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* @HUFFMAN_TABLE_BITS, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @BrotliBuildSimpleHuffmanTable(i32* %118, i32 %119, i32 %122, i64 %125)
  store i64 %126, i64* %15, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = load i64, i64* %15, align 8
  %131 = load i64*, i64** %10, align 8
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %113
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 131, i32* %134, align 8
  %135 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %135, i32* %6, align 4
  br label %256

136:                                              ; preds = %26
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = call i32 @ReadCodeLengthCodeLengths(%struct.TYPE_11__* %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %6, align 4
  br label %256

144:                                              ; preds = %136
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @BrotliBuildCodeLengthsHuffmanTable(i32 %147, i32* %150, i32* %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = call i32 @memset(i32* %158, i32 0, i32 8)
  store i64 0, i64* %17, align 8
  br label %160

160:                                              ; preds = %186, %144
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 8
  %163 = icmp ule i64 %161, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %160
  %165 = load i64, i64* %17, align 8
  %166 = trunc i64 %165 to i32
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 8
  %169 = add i64 %168, 1
  %170 = sub i64 %167, %169
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %17, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  store i64 %170, i64* %175, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 4
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* %17, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %178, i64 %184
  store i32 65535, i32* %185, align 4
  br label %186

186:                                              ; preds = %164
  %187 = load i64, i64* %17, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %17, align 8
  br label %160

189:                                              ; preds = %160
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @BROTLI_INITIAL_REPEATED_CODE_LENGTH, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 8
  store i32 0, i32* %196, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 7
  store i32 0, i32* %198, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store i32 32768, i32* %200, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i32 132, i32* %202, align 8
  br label %203

203:                                              ; preds = %26, %189
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %206 = call i32 @ReadSymbolCodeLengths(i64 %204, %struct.TYPE_11__* %205)
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %213 = call i32 @SafeReadSymbolCodeLengths(i64 %211, %struct.TYPE_11__* %212)
  store i32 %213, i32* %20, align 4
  br label %214

214:                                              ; preds = %210, %203
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i32, i32* %20, align 4
  store i32 %219, i32* %6, align 4
  br label %256

220:                                              ; preds = %214
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @BROTLI_LOG(i8* %230)
  %232 = load i32, i32* @BROTLI_DECODER_ERROR_FORMAT_HUFFMAN_SPACE, align 4
  %233 = call i32 @BROTLI_FAILURE(i32 %232)
  store i32 %233, i32* %6, align 4
  br label %256

234:                                              ; preds = %220
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* @HUFFMAN_TABLE_BITS, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = call i64 @BrotliBuildHuffmanTable(i32* %235, i32 %236, i32* %239, i32* %242)
  store i64 %243, i64* %19, align 8
  %244 = load i64*, i64** %10, align 8
  %245 = icmp ne i64* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %234
  %247 = load i64, i64* %19, align 8
  %248 = load i64*, i64** %10, align 8
  store i64 %247, i64* %248, align 8
  br label %249

249:                                              ; preds = %246, %234
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  store i32 131, i32* %251, align 8
  %252 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %252, i32* %6, align 4
  br label %256

253:                                              ; preds = %26
  %254 = load i32, i32* @BROTLI_DECODER_ERROR_UNREACHABLE, align 4
  %255 = call i32 @BROTLI_FAILURE(i32 %254)
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %253, %249, %225, %218, %142, %132, %103, %91, %76, %36
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

declare dso_local i32 @BrotliSafeReadBits(i32*, i32, i64*) #1

declare dso_local i32 @BROTLI_LOG_UINT(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ReadSimpleHuffmanSymbols(i64, i64, %struct.TYPE_11__*) #1

declare dso_local i64 @BrotliBuildSimpleHuffmanTable(i32*, i32, i32, i64) #1

declare dso_local i32 @ReadCodeLengthCodeLengths(%struct.TYPE_11__*) #1

declare dso_local i32 @BrotliBuildCodeLengthsHuffmanTable(i32, i32*, i32*) #1

declare dso_local i32 @ReadSymbolCodeLengths(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @SafeReadSymbolCodeLengths(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @BROTLI_LOG(i8*) #1

declare dso_local i32 @BROTLI_FAILURE(i32) #1

declare dso_local i64 @BrotliBuildHuffmanTable(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
