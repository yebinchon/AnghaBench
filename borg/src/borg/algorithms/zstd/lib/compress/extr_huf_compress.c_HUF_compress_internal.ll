; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_huf_compress.c_HUF_compress_internal.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_huf_compress.c_HUF_compress_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@GENERIC = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE = common dso_local global i64 0, align 8
@workSpace_tooSmall = common dso_local global i32 0, align 4
@HUF_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@maxSymbolValue_tooLarge = common dso_local global i32 0, align 4
@HUF_TABLELOG_DEFAULT = common dso_local global i32 0, align 4
@HUF_repeat_valid = common dso_local global i64 0, align 8
@largest = common dso_local global i64 0, align 8
@HUF_repeat_check = common dso_local global i64 0, align 8
@HUF_repeat_none = common dso_local global i64 0, align 8
@hSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32, i32, i32, i8*, i64, i32*, i64*, i32, i32)* @HUF_compress_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compress_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i64 %8, i32* %9, i64* %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_2__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i8* %0, i8** %15, align 8
  store i64 %1, i64* %16, align 8
  store i8* %2, i8** %17, align 8
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i8* %7, i8** %22, align 8
  store i64 %8, i64* %23, align 8
  store i32* %9, i32** %24, align 8
  store i64* %10, i64** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %35 = load i8*, i8** %22, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %28, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %29, align 8
  %39 = load i32*, i32** %29, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %30, align 8
  %42 = load i32*, i32** %29, align 8
  store i32* %42, i32** %31, align 8
  %43 = load i8*, i8** %22, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %13
  %48 = load i32, i32* @GENERIC, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %14, align 8
  br label %309

50:                                               ; preds = %13
  %51 = load i64, i64* %23, align 8
  %52 = load i64, i64* @HUF_WORKSPACE_SIZE, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @workSpace_tooSmall, align 4
  %56 = call i64 @ERROR(i32 %55)
  store i64 %56, i64* %14, align 8
  br label %309

57:                                               ; preds = %50
  %58 = load i64, i64* %18, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i64 0, i64* %14, align 8
  br label %309

61:                                               ; preds = %57
  %62 = load i64, i64* %16, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i64 0, i64* %14, align 8
  br label %309

65:                                               ; preds = %61
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* @HUF_BLOCKSIZE_MAX, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @srcSize_wrong, align 4
  %71 = call i64 @ERROR(i32 %70)
  store i64 %71, i64* %14, align 8
  br label %309

72:                                               ; preds = %65
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @tableLog_tooLarge, align 4
  %78 = call i64 @ERROR(i32 %77)
  store i64 %78, i64* %14, align 8
  br label %309

79:                                               ; preds = %72
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @maxSymbolValue_tooLarge, align 4
  %85 = call i64 @ERROR(i32 %84)
  store i64 %85, i64* %14, align 8
  br label %309

86:                                               ; preds = %79
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @HUF_TABLELOG_DEFAULT, align 4
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %26, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i64*, i64** %25, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i64*, i64** %25, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HUF_repeat_valid, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32*, i32** %29, align 8
  %109 = load i32*, i32** %31, align 8
  %110 = load i32*, i32** %30, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i32, i32* %21, align 4
  %114 = load i32*, i32** %24, align 8
  %115 = load i32, i32* %27, align 4
  %116 = call i64 @HUF_compressCTable_internal(i32* %108, i32* %109, i32* %110, i8* %111, i64 %112, i32 %113, i32* %114, i32 %115)
  store i64 %116, i64* %14, align 8
  br label %309

117:                                              ; preds = %102, %99, %96
  %118 = load i64, i64* @largest, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i64, i64* %18, align 8
  %125 = load i8*, i8** %22, align 8
  %126 = load i64, i64* %23, align 8
  %127 = call i32 @HIST_count_wksp(i32 %121, i32* %19, i32* %123, i64 %124, i8* %125, i64 %126)
  %128 = call i32 @CHECK_V_F(i64 %118, i32 %127)
  %129 = load i64, i64* @largest, align 8
  %130 = load i64, i64* %18, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load i8*, i8** %17, align 8
  %134 = bitcast i8* %133 to i32*
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %29, align 8
  store i32 %136, i32* %137, align 4
  store i64 1, i64* %14, align 8
  br label %309

138:                                              ; preds = %117
  %139 = load i64, i64* @largest, align 8
  %140 = load i64, i64* %18, align 8
  %141 = lshr i64 %140, 7
  %142 = add i64 %141, 4
  %143 = icmp ule i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i64 0, i64* %14, align 8
  br label %309

145:                                              ; preds = %138
  %146 = load i64*, i64** %25, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i64*, i64** %25, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @HUF_repeat_check, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = load i32*, i32** %24, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @HUF_validateCTable(i32* %154, i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %153
  %162 = load i64, i64* @HUF_repeat_none, align 8
  %163 = load i64*, i64** %25, align 8
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %161, %153, %148, %145
  %165 = load i32, i32* %26, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %164
  %168 = load i64*, i64** %25, align 8
  %169 = icmp ne i64* %168, null
  br i1 %169, label %170, label %185

170:                                              ; preds = %167
  %171 = load i64*, i64** %25, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @HUF_repeat_none, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i32*, i32** %29, align 8
  %177 = load i32*, i32** %31, align 8
  %178 = load i32*, i32** %30, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load i32*, i32** %24, align 8
  %183 = load i32, i32* %27, align 4
  %184 = call i64 @HUF_compressCTable_internal(i32* %176, i32* %177, i32* %178, i8* %179, i64 %180, i32 %181, i32* %182, i32 %183)
  store i64 %184, i64* %14, align 8
  br label %309

185:                                              ; preds = %170, %167, %164
  %186 = load i32, i32* %20, align 4
  %187 = load i64, i64* %18, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @HUF_optimalTableLog(i32 %186, i64 %187, i32 %188)
  store i32 %189, i32* %20, align 4
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @HUF_buildCTable_wksp(i32* %192, i32 %195, i32 %196, i32 %197, i32 %200, i32 4)
  store i64 %201, i64* %32, align 8
  %202 = load i64, i64* %32, align 8
  %203 = call i32 @CHECK_F(i64 %202)
  %204 = load i64, i64* %32, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %20, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %19, align 4
  %214 = add i32 %213, 1
  %215 = zext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = sub i64 8, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memset(i32* %212, i32 0, i32 %218)
  %220 = load i64, i64* @hSize, align 8
  %221 = load i32*, i32** %31, align 8
  %222 = load i64, i64* %16, align 8
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* %20, align 4
  %228 = call i32 @HUF_writeCTable(i32* %221, i64 %222, i32* %225, i32 %226, i32 %227)
  %229 = call i32 @CHECK_V_F(i64 %220, i32 %228)
  %230 = load i64*, i64** %25, align 8
  %231 = icmp ne i64* %230, null
  br i1 %231, label %232, label %273

232:                                              ; preds = %185
  %233 = load i64*, i64** %25, align 8
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @HUF_repeat_none, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %232
  %238 = load i32*, i32** %24, align 8
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %19, align 4
  %243 = call i64 @HUF_estimateCompressedSize(i32* %238, i32 %241, i32 %242)
  store i64 %243, i64* %33, align 8
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %19, align 4
  %251 = call i64 @HUF_estimateCompressedSize(i32* %246, i32 %249, i32 %250)
  store i64 %251, i64* %34, align 8
  %252 = load i64, i64* %33, align 8
  %253 = load i64, i64* @hSize, align 8
  %254 = load i64, i64* %34, align 8
  %255 = add i64 %253, %254
  %256 = icmp ule i64 %252, %255
  br i1 %256, label %262, label %257

257:                                              ; preds = %237
  %258 = load i64, i64* @hSize, align 8
  %259 = add i64 %258, 12
  %260 = load i64, i64* %18, align 8
  %261 = icmp uge i64 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %257, %237
  %263 = load i32*, i32** %29, align 8
  %264 = load i32*, i32** %31, align 8
  %265 = load i32*, i32** %30, align 8
  %266 = load i8*, i8** %17, align 8
  %267 = load i64, i64* %18, align 8
  %268 = load i32, i32* %21, align 4
  %269 = load i32*, i32** %24, align 8
  %270 = load i32, i32* %27, align 4
  %271 = call i64 @HUF_compressCTable_internal(i32* %263, i32* %264, i32* %265, i8* %266, i64 %267, i32 %268, i32* %269, i32 %270)
  store i64 %271, i64* %14, align 8
  br label %309

272:                                              ; preds = %257
  br label %273

273:                                              ; preds = %272, %232, %185
  %274 = load i64, i64* @hSize, align 8
  %275 = add i64 %274, 12
  %276 = load i64, i64* %18, align 8
  %277 = icmp uge i64 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  store i64 0, i64* %14, align 8
  br label %309

279:                                              ; preds = %273
  %280 = load i64, i64* @hSize, align 8
  %281 = load i32*, i32** %31, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 %280
  store i32* %282, i32** %31, align 8
  %283 = load i64*, i64** %25, align 8
  %284 = icmp ne i64* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i64, i64* @HUF_repeat_none, align 8
  %287 = load i64*, i64** %25, align 8
  store i64 %286, i64* %287, align 8
  br label %288

288:                                              ; preds = %285, %279
  %289 = load i32*, i32** %24, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load i32*, i32** %24, align 8
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @memcpy(i32* %292, i32* %295, i32 8)
  br label %297

297:                                              ; preds = %291, %288
  %298 = load i32*, i32** %29, align 8
  %299 = load i32*, i32** %31, align 8
  %300 = load i32*, i32** %30, align 8
  %301 = load i8*, i8** %17, align 8
  %302 = load i64, i64* %18, align 8
  %303 = load i32, i32* %21, align 4
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %27, align 4
  %308 = call i64 @HUF_compressCTable_internal(i32* %298, i32* %299, i32* %300, i8* %301, i64 %302, i32 %303, i32* %306, i32 %307)
  store i64 %308, i64* %14, align 8
  br label %309

309:                                              ; preds = %297, %278, %262, %175, %144, %132, %107, %83, %76, %69, %64, %60, %54, %47
  %310 = load i64, i64* %14, align 8
  ret i64 %310
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_compressCTable_internal(i32*, i32*, i32*, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @HIST_count_wksp(i32, i32*, i32*, i64, i8*, i64) #1

declare dso_local i32 @HUF_validateCTable(i32*, i32, i32) #1

declare dso_local i32 @HUF_optimalTableLog(i32, i64, i32) #1

declare dso_local i64 @HUF_buildCTable_wksp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_F(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @HUF_writeCTable(i32*, i64, i32*, i32, i32) #1

declare dso_local i64 @HUF_estimateCompressedSize(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
