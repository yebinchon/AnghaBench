; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaDec.c_LzmaDec_DecodeToDic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaDec.c_LzmaDec_DecodeToDic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64*, i64, i64, i64*, i64 }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4
@kMatchSpecLenStart = common dso_local global i64 0, align 8
@RC_INIT_SIZE = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i64 0, align 8
@LZMA_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@LZMA_REQUIRED_INPUT_MAX = common dso_local global i64 0, align 8
@DUMMY_ERROR = common dso_local global i32 0, align 4
@DUMMY_MATCH = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_DecodeToDic(%struct.TYPE_8__* %0, i64 %1, i64* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64*, i64** %11, align 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @LzmaDec_WriteRem(%struct.TYPE_8__* %25, i64 %26)
  %28 = load i32, i32* @LZMA_STATUS_NOT_SPECIFIED, align 4
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %354, %6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @kMatchSpecLenStart, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %355

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i64, i64* %14, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RC_INIT_SIZE, align 8
  %50 = icmp slt i64 %48, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %71

53:                                               ; preds = %51
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %10, align 8
  %56 = load i64, i64* %54, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64 %56, i64* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %14, align 8
  br label %42

71:                                               ; preds = %51
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RC_INIT_SIZE, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @SZ_OK, align 4
  store i32 %80, i32* %7, align 4
  br label %374

81:                                               ; preds = %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %89, i32* %7, align 4
  br label %374

90:                                               ; preds = %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @LzmaDec_InitRc(%struct.TYPE_8__* %91, i64* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %36
  store i32 0, i32* %15, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %136

104:                                              ; preds = %98
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @SZ_OK, align 4
  store i32 %117, i32* %7, align 4
  br label %374

118:                                              ; preds = %109, %104
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @LZMA_FINISH_ANY, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @SZ_OK, align 4
  store i32 %125, i32* %7, align 4
  br label %374

126:                                              ; preds = %118
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %134, i32* %7, align 4
  br label %374

135:                                              ; preds = %126
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %98
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = call i32 @LzmaDec_InitStateReal(%struct.TYPE_8__* %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %234

149:                                              ; preds = %144
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %197

156:                                              ; preds = %153, %149
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = load i64*, i64** %10, align 8
  %159 = load i64, i64* %14, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @LzmaDec_TryDummy(%struct.TYPE_8__* %157, i64* %158, i32 %160)
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @DUMMY_ERROR, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %156
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i64*, i64** %167, align 8
  %169 = load i64*, i64** %10, align 8
  %170 = load i64, i64* %14, align 8
  %171 = call i32 @memcpy(i64* %168, i64* %169, i64 %170)
  %172 = load i64, i64* %14, align 8
  %173 = trunc i64 %172 to i32
  %174 = zext i32 %173 to i64
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %14, align 8
  %178 = load i64*, i64** %11, align 8
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %177
  store i64 %180, i64* %178, align 8
  %181 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %182 = load i32*, i32** %13, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i32, i32* @SZ_OK, align 4
  store i32 %183, i32* %7, align 4
  br label %374

184:                                              ; preds = %156
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* @DUMMY_MATCH, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %193 = load i32*, i32** %13, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %194, i32* %7, align 4
  br label %374

195:                                              ; preds = %187, %184
  %196 = load i64*, i64** %10, align 8
  store i64* %196, i64** %17, align 8
  br label %204

197:                                              ; preds = %153
  %198 = load i64*, i64** %10, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %202 = sub i64 0, %201
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64* %203, i64** %17, align 8
  br label %204

204:                                              ; preds = %197, %195
  %205 = load i64*, i64** %10, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  store i64* %205, i64** %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64*, i64** %17, align 8
  %211 = call i64 @LzmaDec_DecodeReal2(%struct.TYPE_8__* %208, i64 %209, i64* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %214, i32* %7, align 4
  br label %374

215:                                              ; preds = %204
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 6
  %218 = load i64*, i64** %217, align 8
  %219 = load i64*, i64** %10, align 8
  %220 = ptrtoint i64* %218 to i64
  %221 = ptrtoint i64* %219 to i64
  %222 = sub i64 %220, %221
  %223 = sdiv exact i64 %222, 8
  store i64 %223, i64* %16, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64*, i64** %11, align 8
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, %224
  store i64 %227, i64* %225, align 8
  %228 = load i64, i64* %16, align 8
  %229 = load i64*, i64** %10, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 %228
  store i64* %230, i64** %10, align 8
  %231 = load i64, i64* %16, align 8
  %232 = load i64, i64* %14, align 8
  %233 = sub i64 %232, %231
  store i64 %233, i64* %14, align 8
  br label %354

234:                                              ; preds = %144
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %239

239:                                              ; preds = %251, %234
  %240 = load i32, i32* %19, align 4
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load i32, i32* %20, align 4
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %14, align 8
  %248 = icmp ult i64 %246, %247
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i1 [ false, %239 ], [ %248, %244 ]
  br i1 %250, label %251, label %265

251:                                              ; preds = %249
  %252 = load i64*, i64** %10, align 8
  %253 = load i32, i32* %20, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %20, align 4
  %255 = zext i32 %253 to i64
  %256 = getelementptr inbounds i64, i64* %252, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %19, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %19, align 4
  %263 = zext i32 %261 to i64
  %264 = getelementptr inbounds i64, i64* %260, i64 %263
  store i64 %257, i64* %264, align 8
  br label %239

265:                                              ; preds = %249
  %266 = load i32, i32* %19, align 4
  %267 = zext i32 %266 to i64
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  store i64 %267, i64* %269, align 8
  %270 = load i32, i32* %19, align 4
  %271 = zext i32 %270 to i64
  %272 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %265
  %275 = load i32, i32* %15, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %274, %265
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 3
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %19, align 4
  %283 = call i32 @LzmaDec_TryDummy(%struct.TYPE_8__* %278, i64* %281, i32 %282)
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* @DUMMY_ERROR, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %296

287:                                              ; preds = %277
  %288 = load i32, i32* %20, align 4
  %289 = zext i32 %288 to i64
  %290 = load i64*, i64** %11, align 8
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %291, %289
  store i64 %292, i64* %290, align 8
  %293 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %294 = load i32*, i32** %13, align 8
  store i32 %293, i32* %294, align 4
  %295 = load i32, i32* @SZ_OK, align 4
  store i32 %295, i32* %7, align 4
  br label %374

296:                                              ; preds = %277
  %297 = load i32, i32* %15, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = load i32, i32* %21, align 4
  %301 = load i32, i32* @DUMMY_MATCH, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %305 = load i32*, i32** %13, align 8
  store i32 %304, i32* %305, align 4
  %306 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %306, i32* %7, align 4
  br label %374

307:                                              ; preds = %299, %296
  br label %308

308:                                              ; preds = %307, %274
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  %311 = load i64*, i64** %310, align 8
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 6
  store i64* %311, i64** %313, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %315 = load i64, i64* %9, align 8
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 6
  %318 = load i64*, i64** %317, align 8
  %319 = call i64 @LzmaDec_DecodeReal2(%struct.TYPE_8__* %314, i64 %315, i64* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %308
  %322 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %322, i32* %7, align 4
  br label %374

323:                                              ; preds = %308
  %324 = load i32, i32* %19, align 4
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 6
  %327 = load i64*, i64** %326, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 3
  %330 = load i64*, i64** %329, align 8
  %331 = ptrtoint i64* %327 to i64
  %332 = ptrtoint i64* %330 to i64
  %333 = sub i64 %331, %332
  %334 = sdiv exact i64 %333, 8
  %335 = trunc i64 %334 to i32
  %336 = sub i32 %324, %335
  %337 = load i32, i32* %20, align 4
  %338 = sub i32 %337, %336
  store i32 %338, i32* %20, align 4
  %339 = load i32, i32* %20, align 4
  %340 = zext i32 %339 to i64
  %341 = load i64*, i64** %11, align 8
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %342, %340
  store i64 %343, i64* %341, align 8
  %344 = load i32, i32* %20, align 4
  %345 = load i64*, i64** %10, align 8
  %346 = zext i32 %344 to i64
  %347 = getelementptr inbounds i64, i64* %345, i64 %346
  store i64* %347, i64** %10, align 8
  %348 = load i32, i32* %20, align 4
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* %14, align 8
  %351 = sub i64 %350, %349
  store i64 %351, i64* %14, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  store i64 0, i64* %353, align 8
  br label %354

354:                                              ; preds = %323, %215
  br label %30

355:                                              ; preds = %30
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load i32, i32* @LZMA_STATUS_FINISHED_WITH_MARK, align 4
  %362 = load i32*, i32** %13, align 8
  store i32 %361, i32* %362, align 4
  br label %363

363:                                              ; preds = %360, %355
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  %369 = load i32, i32* @SZ_OK, align 4
  br label %372

370:                                              ; preds = %363
  %371 = load i32, i32* @SZ_ERROR_DATA, align 4
  br label %372

372:                                              ; preds = %370, %368
  %373 = phi i32 [ %369, %368 ], [ %371, %370 ]
  store i32 %373, i32* %7, align 4
  br label %374

374:                                              ; preds = %372, %321, %303, %287, %213, %191, %165, %131, %122, %114, %88, %77
  %375 = load i32, i32* %7, align 4
  ret i32 %375
}

declare dso_local i32 @LzmaDec_WriteRem(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @LzmaDec_InitRc(%struct.TYPE_8__*, i64*) #1

declare dso_local i32 @LzmaDec_InitStateReal(%struct.TYPE_8__*) #1

declare dso_local i32 @LzmaDec_TryDummy(%struct.TYPE_8__*, i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @LzmaDec_DecodeReal2(%struct.TYPE_8__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
