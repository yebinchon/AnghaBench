; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@LZMA2_STATE_FINISHED = common dso_local global i64 0, align 8
@LZMA2_STATE_ERROR = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i64 0, align 8
@LZMA_STATUS_NOT_FINISHED = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@LZMA2_STATE_DATA = common dso_local global i64 0, align 8
@LZMA2_STATE_DATA_CONT = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i64 0, align 8
@LZMA2_STATE_CONTROL = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2Dec_DecodeToDic(%struct.TYPE_9__* %0, i64 %1, i32* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %29 = load i64*, i64** %13, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %332, %81, %6
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %333

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %47, i32* %7, align 4
  br label %337

48:                                               ; preds = %36
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @LZMA_FINISH_ANY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @LZMA_STATUS_NOT_FINISHED, align 8
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @SZ_OK, align 4
  store i32 %59, i32* %7, align 4
  br label %337

60:                                               ; preds = %52, %48
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %79 = load i64*, i64** %13, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* @SZ_OK, align 4
  store i32 %80, i32* %7, align 4
  br label %337

81:                                               ; preds = %72
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %86, align 4
  %89 = call i64 @Lzma2Dec_UpdateState(%struct.TYPE_9__* %85, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %30

92:                                               ; preds = %66, %60
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %16, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %96, %98
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* @LZMA_FINISH_ANY, align 8
  store i64 %100, i64* %18, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp ule i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* @LZMA_FINISH_END, align 8
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %106, %92
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = call i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %200

115:                                              ; preds = %111
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %122 = load i64*, i64** %13, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @SZ_OK, align 4
  store i32 %123, i32* %7, align 4
  br label %337

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LZMA2_CONTROL_COPY_RESET_DIC, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  store i32 1, i32* %143, align 8
  br label %152

144:                                              ; preds = %130
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %150, i32* %7, align 4
  br label %337

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %139
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 5
  store i32 0, i32* %154, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 7
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %152, %124
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %16, align 8
  %162 = icmp ugt i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i64, i64* %16, align 8
  store i64 %164, i64* %17, align 8
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i64, i64* %17, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %169, i32* %7, align 4
  br label %337

170:                                              ; preds = %165
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 7
  %173 = load i32*, i32** %10, align 8
  %174 = load i64, i64* %17, align 8
  %175 = call i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_10__* %172, i32* %173, i64 %174)
  %176 = load i64, i64* %17, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 %176
  store i32* %178, i32** %10, align 8
  %179 = load i64, i64* %17, align 8
  %180 = load i64*, i64** %11, align 8
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %179
  store i64 %182, i64* %180, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sub i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %170
  %193 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  br label %196

194:                                              ; preds = %170
  %195 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i64 [ %193, %192 ], [ %195, %194 ]
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %332

200:                                              ; preds = %111
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %245

206:                                              ; preds = %200
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %208 = call i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__* %207)
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %22, align 4
  %210 = icmp eq i32 %209, 3
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* %22, align 4
  %213 = icmp sgt i32 %212, 0
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %24, align 4
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %206
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217, %206
  %223 = load i32, i32* %24, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225, %217
  %231 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %231, i32* %7, align 4
  br label %337

232:                                              ; preds = %225, %222
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 7
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %24, align 4
  %237 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__* %234, i32 %235, i32 %236)
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 5
  store i32 0, i32* %239, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 4
  store i32 0, i32* %241, align 4
  %242 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %232, %200
  %246 = load i64, i64* %17, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = icmp ugt i64 %246, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %17, align 8
  br label %255

255:                                              ; preds = %251, %245
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 7
  %258 = load i64, i64* %15, align 8
  %259 = load i64, i64* %16, align 8
  %260 = add i64 %258, %259
  %261 = load i32*, i32** %10, align 8
  %262 = load i64, i64* %18, align 8
  %263 = load i64*, i64** %13, align 8
  %264 = call i32 @LzmaDec_DecodeToDic(%struct.TYPE_10__* %257, i64 %260, i32* %261, i64* %17, i64 %262, i64* %263)
  store i32 %264, i32* %21, align 4
  %265 = load i64, i64* %17, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 %265
  store i32* %267, i32** %10, align 8
  %268 = load i64, i64* %17, align 8
  %269 = load i64*, i64** %11, align 8
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %270, %268
  store i64 %271, i64* %269, align 8
  %272 = load i64, i64* %17, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = sub i64 %275, %272
  store i64 %276, i64* %274, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %15, align 8
  %282 = sub i64 %280, %281
  store i64 %282, i64* %20, align 8
  %283 = load i64, i64* %20, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = sub i64 %286, %283
  store i64 %287, i64* %285, align 8
  %288 = load i32, i32* %21, align 4
  %289 = call i32 @RINOK(i32 %288)
  %290 = load i64*, i64** %13, align 8
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %255
  %295 = load i32, i32* %21, align 4
  store i32 %295, i32* %7, align 4
  br label %337

296:                                              ; preds = %255
  %297 = load i64, i64* %17, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %323

299:                                              ; preds = %296
  %300 = load i64, i64* %20, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  %303 = load i64*, i64** %13, align 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %317, label %307

307:                                              ; preds = %302
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312, %307, %302
  %318 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %318, i32* %7, align 4
  br label %337

319:                                              ; preds = %312
  %320 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  store i64 %320, i64* %322, align 8
  br label %323

323:                                              ; preds = %319, %299, %296
  %324 = load i64*, i64** %13, align 8
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load i64, i64* @LZMA_STATUS_NOT_FINISHED, align 8
  %330 = load i64*, i64** %13, align 8
  store i64 %329, i64* %330, align 8
  br label %331

331:                                              ; preds = %328, %323
  br label %332

332:                                              ; preds = %331, %196
  br label %30

333:                                              ; preds = %30
  %334 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %335 = load i64*, i64** %13, align 8
  store i64 %334, i64* %335, align 8
  %336 = load i32, i32* @SZ_OK, align 4
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %333, %317, %294, %230, %168, %149, %120, %77, %56, %46
  %338 = load i32, i32* %7, align 4
  ret i32 %338
}

declare dso_local i64 @Lzma2Dec_UpdateState(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__*) #1

declare dso_local i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__*) #1

declare dso_local i32 @LzmaDec_DecodeToDic(%struct.TYPE_10__*, i64, i32*, i64*, i64, i64*) #1

declare dso_local i32 @RINOK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
