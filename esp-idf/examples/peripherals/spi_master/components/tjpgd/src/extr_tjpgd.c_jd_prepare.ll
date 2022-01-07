; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_jd_prepare.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_jd_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_17__*, i32*, i32)*, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i8*, i64*, i64**, i64**, i64**, i8*, i8* }

@JDR_PAR = common dso_local global i32 0, align 4
@JD_SZBUF = common dso_local global i32 0, align 4
@JDR_MEM1 = common dso_local global i32 0, align 4
@JDR_INP = common dso_local global i32 0, align 4
@JDR_FMT1 = common dso_local global i32 0, align 4
@JDR_MEM2 = common dso_local global i32 0, align 4
@JDR_FMT3 = common dso_local global i32 0, align 4
@JDR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jd_prepare(%struct.TYPE_17__* %0, i32 (%struct.TYPE_17__*, i32*, i32)* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32 (%struct.TYPE_17__*, i32*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32 (%struct.TYPE_17__*, i32*, i32)* %1, i32 (%struct.TYPE_17__*, i32*, i32)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @JDR_PAR, align 4
  store i32 %24, i32* %6, align 4
  br label %540

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 19
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  store i32 (%struct.TYPE_17__*, i32*, i32)* %32, i32 (%struct.TYPE_17__*, i32*, i32)** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 18
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %82, %25
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %18, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 15
  %50 = load i64**, i64*** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64*, i64** %50, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 17
  %60 = load i64**, i64*** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 16
  %70 = load i64**, i64*** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %47
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %44

81:                                               ; preds = %44
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %40

85:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 14
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 0, i64* %97, align 8
  br label %86

98:                                               ; preds = %86
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = load i32, i32* @JD_SZBUF, align 4
  %101 = call i8* @alloc_pool(%struct.TYPE_17__* %99, i32 %100)
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %12, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @JDR_MEM1, align 4
  store i32 %108, i32* %6, align 4
  br label %540

109:                                              ; preds = %98
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 %112(%struct.TYPE_17__* %113, i32* %114, i32 2)
  %116 = icmp ne i32 %115, 2
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @JDR_INP, align 4
  store i32 %118, i32* %6, align 4
  br label %540

119:                                              ; preds = %109
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @LDB_WORD(i32* %120)
  %122 = icmp ne i32 %121, 65496
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @JDR_FMT1, align 4
  store i32 %124, i32* %6, align 4
  br label %540

125:                                              ; preds = %119
  store i32 2, i32* %15, align 4
  br label %126

126:                                              ; preds = %539, %125
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 %129(%struct.TYPE_17__* %130, i32* %131, i32 4)
  %133 = icmp ne i32 %132, 4
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @JDR_INP, align 4
  store i32 %135, i32* %6, align 4
  br label %540

136:                                              ; preds = %126
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @LDB_WORD(i32* %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = call i32 @LDB_WORD(i32* %140)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp sle i32 %142, 2
  br i1 %143, label %148, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = ashr i32 %145, 8
  %147 = icmp ne i32 %146, 255
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %136
  %149 = load i32, i32* @JDR_FMT1, align 4
  store i32 %149, i32* %6, align 4
  br label %540

150:                                              ; preds = %144
  %151 = load i32, i32* %19, align 4
  %152 = sub nsw i32 %151, 2
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 4, %153
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = and i32 %157, 255
  switch i32 %158, label %527 [
    i32 192, label %159
    i32 221, label %258
    i32 196, label %281
    i32 219, label %309
    i32 218, label %337
    i32 193, label %525
    i32 194, label %525
    i32 195, label %525
    i32 197, label %525
    i32 198, label %525
    i32 199, label %525
    i32 201, label %525
    i32 202, label %525
    i32 203, label %525
    i32 205, label %525
    i32 206, label %525
    i32 207, label %525
    i32 217, label %525
  ]

159:                                              ; preds = %150
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* @JD_SZBUF, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @JDR_MEM2, align 4
  store i32 %164, i32* %6, align 4
  br label %540

165:                                              ; preds = %159
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %167, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = load i32, i32* %19, align 4
  %172 = call i32 %168(%struct.TYPE_17__* %169, i32* %170, i32 %171)
  %173 = load i32, i32* %19, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = load i32, i32* @JDR_INP, align 4
  store i32 %176, i32* %6, align 4
  br label %540

177:                                              ; preds = %165
  %178 = load i32*, i32** %12, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = call i32 @LDB_WORD(i32* %179)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = call i32 @LDB_WORD(i32* %184)
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 3
  br i1 %191, label %192, label %194

192:                                              ; preds = %177
  %193 = load i32, i32* @JDR_FMT3, align 4
  store i32 %193, i32* %6, align 4
  br label %540

194:                                              ; preds = %177
  store i32 0, i32* %17, align 4
  br label %195

195:                                              ; preds = %254, %194
  %196 = load i32, i32* %17, align 4
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %257

198:                                              ; preds = %195
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %17, align 4
  %201 = mul nsw i32 3, %200
  %202 = add nsw i32 7, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %228, label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 17
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 34
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 33
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* @JDR_FMT3, align 4
  store i32 %218, i32* %6, align 4
  br label %540

219:                                              ; preds = %214, %211, %208
  %220 = load i32, i32* %13, align 4
  %221 = ashr i32 %220, 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %13, align 4
  %225 = and i32 %224, 15
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 4
  br label %234

228:                                              ; preds = %198
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 17
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @JDR_FMT3, align 4
  store i32 %232, i32* %6, align 4
  br label %540

233:                                              ; preds = %228
  br label %234

234:                                              ; preds = %233, %219
  %235 = load i32*, i32** %12, align 8
  %236 = load i32, i32* %17, align 4
  %237 = mul nsw i32 3, %236
  %238 = add nsw i32 8, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %235, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp sgt i32 %242, 3
  br i1 %243, label %244, label %246

244:                                              ; preds = %234
  %245 = load i32, i32* @JDR_FMT3, align 4
  store i32 %245, i32* %6, align 4
  br label %540

246:                                              ; preds = %234
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 8
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %246
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %17, align 4
  br label %195

257:                                              ; preds = %195
  br label %539

258:                                              ; preds = %150
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* @JD_SZBUF, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* @JDR_MEM2, align 4
  store i32 %263, i32* %6, align 4
  br label %540

264:                                              ; preds = %258
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %266, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %269 = load i32*, i32** %12, align 8
  %270 = load i32, i32* %19, align 4
  %271 = call i32 %267(%struct.TYPE_17__* %268, i32* %269, i32 %270)
  %272 = load i32, i32* %19, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %264
  %275 = load i32, i32* @JDR_INP, align 4
  store i32 %275, i32* %6, align 4
  br label %540

276:                                              ; preds = %264
  %277 = load i32*, i32** %12, align 8
  %278 = call i32 @LDB_WORD(i32* %277)
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  br label %539

281:                                              ; preds = %150
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @JD_SZBUF, align 4
  %284 = icmp sgt i32 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = load i32, i32* @JDR_MEM2, align 4
  store i32 %286, i32* %6, align 4
  br label %540

287:                                              ; preds = %281
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  %290 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %289, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* %19, align 4
  %294 = call i32 %290(%struct.TYPE_17__* %291, i32* %292, i32 %293)
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %287
  %298 = load i32, i32* @JDR_INP, align 4
  store i32 %298, i32* %6, align 4
  br label %540

299:                                              ; preds = %287
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %301 = load i32*, i32** %12, align 8
  %302 = load i32, i32* %19, align 4
  %303 = call i32 @create_huffman_tbl(%struct.TYPE_17__* %300, i32* %301, i32 %302)
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %299
  %307 = load i32, i32* %20, align 4
  store i32 %307, i32* %6, align 4
  br label %540

308:                                              ; preds = %299
  br label %539

309:                                              ; preds = %150
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* @JD_SZBUF, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* @JDR_MEM2, align 4
  store i32 %314, i32* %6, align 4
  br label %540

315:                                              ; preds = %309
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 1
  %318 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %317, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %320 = load i32*, i32** %12, align 8
  %321 = load i32, i32* %19, align 4
  %322 = call i32 %318(%struct.TYPE_17__* %319, i32* %320, i32 %321)
  %323 = load i32, i32* %19, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %315
  %326 = load i32, i32* @JDR_INP, align 4
  store i32 %326, i32* %6, align 4
  br label %540

327:                                              ; preds = %315
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %329 = load i32*, i32** %12, align 8
  %330 = load i32, i32* %19, align 4
  %331 = call i32 @create_qt_tbl(%struct.TYPE_17__* %328, i32* %329, i32 %330)
  store i32 %331, i32* %20, align 4
  %332 = load i32, i32* %20, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %327
  %335 = load i32, i32* %20, align 4
  store i32 %335, i32* %6, align 4
  br label %540

336:                                              ; preds = %327
  br label %539

337:                                              ; preds = %150
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* @JD_SZBUF, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %337
  %342 = load i32, i32* @JDR_MEM2, align 4
  store i32 %342, i32* %6, align 4
  br label %540

343:                                              ; preds = %337
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 1
  %346 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %345, align 8
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %348 = load i32*, i32** %12, align 8
  %349 = load i32, i32* %19, align 4
  %350 = call i32 %346(%struct.TYPE_17__* %347, i32* %348, i32 %349)
  %351 = load i32, i32* %19, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %343
  %354 = load i32, i32* @JDR_INP, align 4
  store i32 %354, i32* %6, align 4
  br label %540

355:                                              ; preds = %343
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %360, %355
  %366 = load i32, i32* @JDR_FMT1, align 4
  store i32 %366, i32* %6, align 4
  br label %540

367:                                              ; preds = %360
  %368 = load i32*, i32** %12, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 3
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = load i32, i32* @JDR_FMT3, align 4
  store i32 %373, i32* %6, align 4
  br label %540

374:                                              ; preds = %367
  store i32 0, i32* %17, align 4
  br label %375

375:                                              ; preds = %439, %374
  %376 = load i32, i32* %17, align 4
  %377 = icmp slt i32 %376, 3
  br i1 %377, label %378, label %442

378:                                              ; preds = %375
  %379 = load i32*, i32** %12, align 8
  %380 = load i32, i32* %17, align 4
  %381 = mul nsw i32 2, %380
  %382 = add nsw i32 2, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %379, i64 %383
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %13, align 4
  %386 = load i32, i32* %13, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %378
  %389 = load i32, i32* %13, align 4
  %390 = icmp ne i32 %389, 17
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load i32, i32* @JDR_FMT3, align 4
  store i32 %392, i32* %6, align 4
  br label %540

393:                                              ; preds = %388, %378
  %394 = load i32, i32* %17, align 4
  %395 = icmp ne i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 1, i32 0
  store i32 %397, i32* %13, align 4
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 15
  %400 = load i64**, i64*** %399, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i64*, i64** %400, i64 %402
  %404 = load i64*, i64** %403, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %393
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 15
  %411 = load i64**, i64*** %410, align 8
  %412 = load i32, i32* %13, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i64*, i64** %411, i64 %413
  %415 = load i64*, i64** %414, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %408, %393
  %420 = load i32, i32* @JDR_FMT1, align 4
  store i32 %420, i32* %6, align 4
  br label %540

421:                                              ; preds = %408
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 14
  %424 = load i64*, i64** %423, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 8
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %17, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %424, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %421
  %437 = load i32, i32* @JDR_FMT1, align 4
  store i32 %437, i32* %6, align 4
  br label %540

438:                                              ; preds = %421
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %17, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %17, align 4
  br label %375

442:                                              ; preds = %375
  %443 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 7
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %446, i32 0, i32 6
  %448 = load i32, i32* %447, align 8
  %449 = mul nsw i32 %445, %448
  store i32 %449, i32* %16, align 4
  %450 = load i32, i32* %16, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %442
  %453 = load i32, i32* @JDR_FMT1, align 4
  store i32 %453, i32* %6, align 4
  br label %540

454:                                              ; preds = %442
  %455 = load i32, i32* %16, align 4
  %456 = mul nsw i32 %455, 64
  %457 = mul nsw i32 %456, 2
  %458 = add nsw i32 %457, 64
  store i32 %458, i32* %19, align 4
  %459 = load i32, i32* %19, align 4
  %460 = icmp slt i32 %459, 256
  br i1 %460, label %461, label %462

461:                                              ; preds = %454
  store i32 256, i32* %19, align 4
  br label %462

462:                                              ; preds = %461, %454
  %463 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %464 = load i32, i32* %19, align 4
  %465 = call i8* @alloc_pool(%struct.TYPE_17__* %463, i32 %464)
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 13
  store i8* %465, i8** %467, align 8
  %468 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 13
  %470 = load i8*, i8** %469, align 8
  %471 = icmp ne i8* %470, null
  br i1 %471, label %474, label %472

472:                                              ; preds = %462
  %473 = load i32, i32* @JDR_MEM1, align 4
  store i32 %473, i32* %6, align 4
  br label %540

474:                                              ; preds = %462
  %475 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %476 = load i32, i32* %16, align 4
  %477 = add nsw i32 %476, 2
  %478 = mul nsw i32 %477, 64
  %479 = call i8* @alloc_pool(%struct.TYPE_17__* %475, i32 %478)
  %480 = bitcast i8* %479 to i32*
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 9
  store i32* %480, i32** %482, align 8
  %483 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 9
  %485 = load i32*, i32** %484, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %474
  %488 = load i32, i32* @JDR_MEM1, align 4
  store i32 %488, i32* %6, align 4
  br label %540

489:                                              ; preds = %474
  %490 = load i32*, i32** %12, align 8
  %491 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %491, i32 0, i32 10
  store i32* %490, i32** %492, align 8
  %493 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %493, i32 0, i32 11
  store i32 0, i32* %494, align 8
  %495 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 12
  store i32 0, i32* %496, align 4
  %497 = load i32, i32* @JD_SZBUF, align 4
  %498 = load i32, i32* %15, align 4
  %499 = srem i32 %498, %497
  store i32 %499, i32* %15, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %523

501:                                              ; preds = %489
  %502 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i32 0, i32 1
  %504 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %503, align 8
  %505 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %506 = load i32*, i32** %12, align 8
  %507 = load i32, i32* %15, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* @JD_SZBUF, align 4
  %511 = load i32, i32* %15, align 4
  %512 = sub nsw i32 %510, %511
  %513 = call i32 %504(%struct.TYPE_17__* %505, i32* %509, i32 %512)
  %514 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 11
  store i32 %513, i32* %515, align 8
  %516 = load i32*, i32** %12, align 8
  %517 = load i32, i32* %15, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = getelementptr inbounds i32, i32* %519, i64 -1
  %521 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %521, i32 0, i32 10
  store i32* %520, i32** %522, align 8
  br label %523

523:                                              ; preds = %501, %489
  %524 = load i32, i32* @JDR_OK, align 4
  store i32 %524, i32* %6, align 4
  br label %540

525:                                              ; preds = %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150
  %526 = load i32, i32* @JDR_FMT3, align 4
  store i32 %526, i32* %6, align 4
  br label %540

527:                                              ; preds = %150
  %528 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %528, i32 0, i32 1
  %530 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %529, align 8
  %531 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %532 = load i32, i32* %19, align 4
  %533 = call i32 %530(%struct.TYPE_17__* %531, i32* null, i32 %532)
  %534 = load i32, i32* %19, align 4
  %535 = icmp ne i32 %533, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %527
  %537 = load i32, i32* @JDR_INP, align 4
  store i32 %537, i32* %6, align 4
  br label %540

538:                                              ; preds = %527
  br label %539

539:                                              ; preds = %538, %336, %308, %276, %257
  br label %126

540:                                              ; preds = %536, %525, %523, %487, %472, %452, %436, %419, %391, %372, %365, %353, %341, %334, %325, %313, %306, %297, %285, %274, %262, %244, %231, %217, %192, %175, %163, %148, %134, %123, %117, %107, %23
  %541 = load i32, i32* %6, align 4
  ret i32 %541
}

declare dso_local i8* @alloc_pool(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LDB_WORD(i32*) #1

declare dso_local i32 @create_huffman_tbl(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @create_qt_tbl(%struct.TYPE_17__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
