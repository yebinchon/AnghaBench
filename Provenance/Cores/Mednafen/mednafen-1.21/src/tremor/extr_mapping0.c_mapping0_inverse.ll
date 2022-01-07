; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_mapping0.c_mapping0_inverse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_mapping0.c_mapping0_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32, i32, i64**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_22__ = type { i64* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_14__**, i32*, %struct.TYPE_15__**, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_20__*, i32, i8*, i64*)*, i8* (%struct.TYPE_20__*, i32)* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_20__*, i32, i64**, i32*, i32)* }
%struct.TYPE_17__ = type { i32*, i32, i64*, i64*, i32 }

@seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @mapping0_inverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapping0_inverse(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* %1, i32** %4, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %5, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %6, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %7, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %8, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = bitcast i32* %42 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %9, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %10, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i64 %54, i64* %13, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @alloca(i32 %62)
  %64 = inttoptr i64 %63 to i64**
  store i64** %64, i64*** %14, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 @alloca(i32 %70)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %15, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i64 @alloca(i32 %78)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %16, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = call i64 @alloca(i32 %86)
  %88 = inttoptr i64 %87 to i8**
  store i8** %88, i8*** %17, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %154, %2
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %157

95:                                               ; preds = %89
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %18, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %104, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %105, i64 %107
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i8* (%struct.TYPE_20__*, i32)*, i8* (%struct.TYPE_20__*, i32)** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i8* %111(%struct.TYPE_20__* %112, i32 %119)
  %121 = load i8**, i8*** %17, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %120, i8** %124, align 8
  %125 = load i8**, i8*** %17, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %95
  %132 = load i32*, i32** %16, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 1, i32* %135, align 4
  br label %141

136:                                              ; preds = %95
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 4
  %144 = load i64**, i64*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64*, i64** %144, i64 %146
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %13, align 8
  %150 = mul i64 8, %149
  %151 = udiv i64 %150, 2
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memset(i64* %148, i32 0, i32 %152)
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %89

157:                                              ; preds = %89
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %208, %157
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %158
  %165 = load i32*, i32** %16, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %165, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %164
  %177 = load i32*, i32** %16, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %177, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %176, %164
  %189 = load i32*, i32** %16, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %189, i64 %196
  store i32 1, i32* %197, align 4
  %198 = load i32*, i32** %16, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %198, i64 %205
  store i32 1, i32* %206, align 4
  br label %207

207:                                              ; preds = %188, %176
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %158

211:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %291, %211
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %294

218:                                              ; preds = %212
  store i32 0, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %266, %218
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %269

225:                                              ; preds = %219
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %265

235:                                              ; preds = %225
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load i32*, i32** %15, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 1, i32* %246, align 4
  br label %252

247:                                              ; preds = %235
  %248 = load i32*, i32** %15, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %247, %242
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 4
  %255 = load i64**, i64*** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64*, i64** %255, i64 %257
  %259 = load i64*, i64** %258, align 8
  %260 = load i64**, i64*** %14, align 8
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %19, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i64*, i64** %260, i64 %263
  store i64* %259, i64** %264, align 8
  br label %265

265:                                              ; preds = %252, %225
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  br label %219

269:                                              ; preds = %219
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %272, i64 %274
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_20__*, i32, i64**, i32*, i32)*, i32 (%struct.TYPE_20__*, i32, i64**, i32*, i32)** %277, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load i64**, i64*** %14, align 8
  %288 = load i32*, i32** %15, align 8
  %289 = load i32, i32* %19, align 4
  %290 = call i32 %278(%struct.TYPE_20__* %279, i32 %286, i64** %287, i32* %288, i32 %289)
  br label %291

291:                                              ; preds = %269
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %212

294:                                              ; preds = %212
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sub nsw i32 %297, 1
  store i32 %298, i32* %11, align 4
  br label %299

299:                                              ; preds = %411, %294
  %300 = load i32, i32* %11, align 4
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %414

302:                                              ; preds = %299
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 4
  %305 = load i64**, i64*** %304, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = load i64*, i64** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i64, i64* %308, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds i64*, i64** %305, i64 %312
  %314 = load i64*, i64** %313, align 8
  store i64* %314, i64** %20, align 8
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 4
  %317 = load i64**, i64*** %316, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 3
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i64*, i64** %317, i64 %324
  %326 = load i64*, i64** %325, align 8
  store i64* %326, i64** %21, align 8
  store i32 0, i32* %12, align 4
  br label %327

327:                                              ; preds = %407, %302
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = load i64, i64* %13, align 8
  %331 = sdiv i64 %330, 2
  %332 = icmp slt i64 %329, %331
  br i1 %332, label %333, label %410

333:                                              ; preds = %327
  %334 = load i64*, i64** %20, align 8
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %22, align 8
  %339 = load i64*, i64** %21, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %23, align 8
  %344 = load i64, i64* %22, align 8
  %345 = icmp sgt i64 %344, 0
  br i1 %345, label %346, label %376

346:                                              ; preds = %333
  %347 = load i64, i64* %23, align 8
  %348 = icmp sgt i64 %347, 0
  br i1 %348, label %349, label %362

349:                                              ; preds = %346
  %350 = load i64, i64* %22, align 8
  %351 = load i64*, i64** %20, align 8
  %352 = load i32, i32* %12, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  store i64 %350, i64* %354, align 8
  %355 = load i64, i64* %22, align 8
  %356 = load i64, i64* %23, align 8
  %357 = sub nsw i64 %355, %356
  %358 = load i64*, i64** %21, align 8
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  store i64 %357, i64* %361, align 8
  br label %375

362:                                              ; preds = %346
  %363 = load i64, i64* %22, align 8
  %364 = load i64*, i64** %21, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  store i64 %363, i64* %367, align 8
  %368 = load i64, i64* %22, align 8
  %369 = load i64, i64* %23, align 8
  %370 = add nsw i64 %368, %369
  %371 = load i64*, i64** %20, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  store i64 %370, i64* %374, align 8
  br label %375

375:                                              ; preds = %362, %349
  br label %406

376:                                              ; preds = %333
  %377 = load i64, i64* %23, align 8
  %378 = icmp sgt i64 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %376
  %380 = load i64, i64* %22, align 8
  %381 = load i64*, i64** %20, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i64, i64* %381, i64 %383
  store i64 %380, i64* %384, align 8
  %385 = load i64, i64* %22, align 8
  %386 = load i64, i64* %23, align 8
  %387 = add nsw i64 %385, %386
  %388 = load i64*, i64** %21, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  store i64 %387, i64* %391, align 8
  br label %405

392:                                              ; preds = %376
  %393 = load i64, i64* %22, align 8
  %394 = load i64*, i64** %21, align 8
  %395 = load i32, i32* %12, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  store i64 %393, i64* %397, align 8
  %398 = load i64, i64* %22, align 8
  %399 = load i64, i64* %23, align 8
  %400 = sub nsw i64 %398, %399
  %401 = load i64*, i64** %20, align 8
  %402 = load i32, i32* %12, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  store i64 %400, i64* %404, align 8
  br label %405

405:                                              ; preds = %392, %379
  br label %406

406:                                              ; preds = %405, %375
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %12, align 4
  br label %327

410:                                              ; preds = %327
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %11, align 4
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %11, align 4
  br label %299

414:                                              ; preds = %299
  store i32 0, i32* %11, align 4
  br label %415

415:                                              ; preds = %460, %414
  %416 = load i32, i32* %11, align 4
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %463

421:                                              ; preds = %415
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 4
  %424 = load i64**, i64*** %423, align 8
  %425 = load i32, i32* %11, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i64*, i64** %424, i64 %426
  %428 = load i64*, i64** %427, align 8
  store i64* %428, i64** %24, align 8
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %11, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %25, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %437, align 8
  %439 = load i32, i32* %25, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %438, i64 %440
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 0
  %444 = load i32 (%struct.TYPE_20__*, i32, i8*, i64*)*, i32 (%struct.TYPE_20__*, i32, i8*, i64*)** %443, align 8
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %446 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %25, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i8**, i8*** %17, align 8
  %454 = load i32, i32* %11, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = load i64*, i64** %24, align 8
  %459 = call i32 %444(%struct.TYPE_20__* %445, i32 %452, i8* %457, i64* %458)
  br label %460

460:                                              ; preds = %421
  %461 = load i32, i32* %11, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %11, align 4
  br label %415

463:                                              ; preds = %415
  store i32 0, i32* %11, align 4
  br label %464

464:                                              ; preds = %482, %463
  %465 = load i32, i32* %11, align 4
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = icmp slt i32 %465, %468
  br i1 %469, label %470, label %485

470:                                              ; preds = %464
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 4
  %473 = load i64**, i64*** %472, align 8
  %474 = load i32, i32* %11, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i64*, i64** %473, i64 %475
  %477 = load i64*, i64** %476, align 8
  store i64* %477, i64** %26, align 8
  %478 = load i64, i64* %13, align 8
  %479 = load i64*, i64** %26, align 8
  %480 = load i64*, i64** %26, align 8
  %481 = call i32 @mdct_backward(i64 %478, i64* %479, i64* %480)
  br label %482

482:                                              ; preds = %470
  %483 = load i32, i32* %11, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %11, align 4
  br label %464

485:                                              ; preds = %464
  store i32 0, i32* %11, align 4
  br label %486

486:                                              ; preds = %540, %485
  %487 = load i32, i32* %11, align 4
  %488 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %487, %490
  br i1 %491, label %492, label %543

492:                                              ; preds = %486
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 4
  %495 = load i64**, i64*** %494, align 8
  %496 = load i32, i32* %11, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i64*, i64** %495, i64 %497
  %499 = load i64*, i64** %498, align 8
  store i64* %499, i64** %27, align 8
  %500 = load i32*, i32** %16, align 8
  %501 = load i32, i32* %11, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %524

506:                                              ; preds = %492
  %507 = load i64*, i64** %27, align 8
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 0
  %513 = load i64*, i64** %512, align 8
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @_vorbis_apply_window(i64* %507, i32 %510, i64* %513, i32 %516, i64 %519, i32 %522)
  br label %539

524:                                              ; preds = %492
  store i32 0, i32* %12, align 4
  br label %525

525:                                              ; preds = %535, %524
  %526 = load i32, i32* %12, align 4
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %13, align 8
  %529 = icmp slt i64 %527, %528
  br i1 %529, label %530, label %538

530:                                              ; preds = %525
  %531 = load i64*, i64** %27, align 8
  %532 = load i32, i32* %12, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i64, i64* %531, i64 %533
  store i64 0, i64* %534, align 8
  br label %535

535:                                              ; preds = %530
  %536 = load i32, i32* %12, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %12, align 4
  br label %525

538:                                              ; preds = %525
  br label %539

539:                                              ; preds = %538, %506
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %11, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %11, align 4
  br label %486

543:                                              ; preds = %486
  %544 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @seq, align 4
  %548 = add nsw i32 %547, %546
  store i32 %548, i32* @seq, align 4
  ret i32 0
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @mdct_backward(i64, i64*, i64*) #1

declare dso_local i32 @_vorbis_apply_window(i64*, i32, i64*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
