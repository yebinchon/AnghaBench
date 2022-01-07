; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_huft_build.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_huft_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inflate_huft_s = type { i32, i32, i8* }

@BMAX = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@MANY = common dso_local global i32 0, align 4
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, %struct.inflate_huft_s**, i32*, %struct.inflate_huft_s*, i32*, i32*)* @huft_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huft_build(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.inflate_huft_s** %5, i32* %6, %struct.inflate_huft_s* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.inflate_huft_s**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.inflate_huft_s*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca %struct.inflate_huft_s*, align 8
  %35 = alloca %struct.inflate_huft_s, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store %struct.inflate_huft_s** %5, %struct.inflate_huft_s*** %17, align 8
  store i32* %6, i32** %18, align 8
  store %struct.inflate_huft_s* %7, %struct.inflate_huft_s** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %43 = load i32, i32* @BMAX, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %23, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %24, align 8
  %48 = load i32, i32* @BMAX, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca %struct.inflate_huft_s*, i64 %49, align 16
  store i64 %49, i64* %36, align 8
  %51 = load i32, i32* @BMAX, align 4
  %52 = add nsw i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %38, align 8
  store i32* %47, i32** %33, align 8
  %55 = load i32*, i32** %33, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %33, align 8
  store i32 0, i32* %55, align 4
  %57 = load i32*, i32** %33, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %33, align 8
  store i32 0, i32* %57, align 4
  %59 = load i32*, i32** %33, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %33, align 8
  store i32 0, i32* %59, align 4
  %61 = load i32*, i32** %33, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %33, align 8
  store i32 0, i32* %61, align 4
  %63 = load i32*, i32** %33, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %33, align 8
  store i32 0, i32* %63, align 4
  %65 = load i32*, i32** %33, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %33, align 8
  store i32 0, i32* %65, align 4
  %67 = load i32*, i32** %33, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %33, align 8
  store i32 0, i32* %67, align 4
  %69 = load i32*, i32** %33, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %33, align 8
  store i32 0, i32* %69, align 4
  %71 = load i32*, i32** %33, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %33, align 8
  store i32 0, i32* %71, align 4
  %73 = load i32*, i32** %33, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %33, align 8
  store i32 0, i32* %73, align 4
  %75 = load i32*, i32** %33, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %33, align 8
  store i32 0, i32* %75, align 4
  %77 = load i32*, i32** %33, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %33, align 8
  store i32 0, i32* %77, align 4
  %79 = load i32*, i32** %33, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %33, align 8
  store i32 0, i32* %79, align 4
  %81 = load i32*, i32** %33, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %33, align 8
  store i32 0, i32* %81, align 4
  %83 = load i32*, i32** %33, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %33, align 8
  store i32 0, i32* %83, align 4
  %85 = load i32*, i32** %33, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %33, align 8
  store i32 0, i32* %85, align 4
  %87 = load i32*, i32** %12, align 8
  store i32* %87, i32** %33, align 8
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %28, align 4
  br label %89

89:                                               ; preds = %97, %10
  %90 = load i32*, i32** %33, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %33, align 8
  %92 = load i32, i32* %90, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %47, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %28, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %28, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %89, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i32, i32* %47, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i64, i64* @Z_NULL, align 8
  %108 = inttoptr i64 %107 to %struct.inflate_huft_s*
  %109 = load %struct.inflate_huft_s**, %struct.inflate_huft_s*** %17, align 8
  store %struct.inflate_huft_s* %108, %struct.inflate_huft_s** %109, align 8
  %110 = load i32*, i32** %18, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* @Z_OK, align 4
  store i32 %111, i32* %11, align 4
  store i32 1, i32* %42, align 4
  br label %546

112:                                              ; preds = %101
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %31, align 4
  store i32 1, i32* %29, align 4
  br label %115

115:                                              ; preds = %127, %112
  %116 = load i32, i32* %29, align 4
  %117 = load i32, i32* @BMAX, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %29, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %47, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %130

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %29, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %29, align 4
  br label %115

130:                                              ; preds = %125, %115
  %131 = load i32, i32* %29, align 4
  store i32 %131, i32* %30, align 4
  %132 = load i32, i32* %31, align 4
  %133 = load i32, i32* %29, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %29, align 4
  store i32 %136, i32* %31, align 4
  br label %137

137:                                              ; preds = %135, %130
  %138 = load i32, i32* @BMAX, align 4
  store i32 %138, i32* %28, align 4
  br label %139

139:                                              ; preds = %150, %137
  %140 = load i32, i32* %28, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32, i32* %28, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %47, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %153

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %28, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %28, align 4
  br label %139

153:                                              ; preds = %148, %139
  %154 = load i32, i32* %28, align 4
  store i32 %154, i32* %26, align 4
  %155 = load i32, i32* %31, align 4
  %156 = load i32, i32* %28, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %28, align 4
  store i32 %159, i32* %31, align 4
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %31, align 4
  %162 = load i32*, i32** %18, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %29, align 4
  %164 = shl i32 1, %163
  store i32 %164, i32* %40, align 4
  br label %165

165:                                              ; preds = %180, %160
  %166 = load i32, i32* %29, align 4
  %167 = load i32, i32* %28, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load i32, i32* %29, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %47, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %40, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %40, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %178, i32* %11, align 4
  store i32 1, i32* %42, align 4
  br label %546

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %29, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %29, align 4
  %183 = load i32, i32* %40, align 4
  %184 = shl i32 %183, 1
  store i32 %184, i32* %40, align 4
  br label %165

185:                                              ; preds = %165
  %186 = load i32, i32* %28, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %47, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %40, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %40, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %194, i32* %11, align 4
  store i32 1, i32* %42, align 4
  br label %546

195:                                              ; preds = %185
  %196 = load i32, i32* %40, align 4
  %197 = load i32, i32* %28, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %47, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %196
  store i32 %201, i32* %199, align 4
  store i32 0, i32* %29, align 4
  %202 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 0, i32* %202, align 4
  %203 = getelementptr inbounds i32, i32* %47, i64 1
  store i32* %203, i32** %33, align 8
  %204 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %204, i32** %39, align 8
  br label %205

205:                                              ; preds = %209, %195
  %206 = load i32, i32* %28, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %28, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load i32*, i32** %33, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %33, align 8
  %212 = load i32, i32* %210, align 4
  %213 = load i32, i32* %29, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %29, align 4
  %215 = load i32*, i32** %39, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %39, align 8
  store i32 %214, i32* %215, align 4
  br label %205

217:                                              ; preds = %205
  %218 = load i32*, i32** %12, align 8
  store i32* %218, i32** %33, align 8
  store i32 0, i32* %28, align 4
  br label %219

219:                                              ; preds = %235, %217
  %220 = load i32*, i32** %33, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %33, align 8
  %222 = load i32, i32* %220, align 4
  store i32 %222, i32* %29, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = load i32, i32* %28, align 4
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* %29, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %54, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %226, i64 %232
  store i32 %225, i32* %233, align 4
  br label %234

234:                                              ; preds = %224, %219
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %28, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %28, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %219, label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %26, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %54, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %13, align 4
  store i32 0, i32* %28, align 4
  %245 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 0, i32* %245, align 16
  %246 = load i32*, i32** %21, align 8
  store i32* %246, i32** %33, align 8
  store i32 -1, i32* %27, align 4
  %247 = load i32, i32* %31, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %37, align 4
  %249 = load i64, i64* @Z_NULL, align 8
  %250 = inttoptr i64 %249 to %struct.inflate_huft_s*
  %251 = getelementptr inbounds %struct.inflate_huft_s*, %struct.inflate_huft_s** %50, i64 0
  store %struct.inflate_huft_s* %250, %struct.inflate_huft_s** %251, align 16
  %252 = load i64, i64* @Z_NULL, align 8
  %253 = inttoptr i64 %252 to %struct.inflate_huft_s*
  store %struct.inflate_huft_s* %253, %struct.inflate_huft_s** %34, align 8
  store i32 0, i32* %41, align 4
  br label %254

254:                                              ; preds = %531, %240
  %255 = load i32, i32* %30, align 4
  %256 = load i32, i32* %26, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %534

258:                                              ; preds = %254
  %259 = load i32, i32* %30, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %47, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %22, align 4
  br label %263

263:                                              ; preds = %529, %258
  %264 = load i32, i32* %22, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %22, align 4
  %266 = icmp ne i32 %264, 0
  br i1 %266, label %267, label %530

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %404, %267
  %269 = load i32, i32* %30, align 4
  %270 = load i32, i32* %37, align 4
  %271 = load i32, i32* %31, align 4
  %272 = add nsw i32 %270, %271
  %273 = icmp sgt i32 %269, %272
  br i1 %273, label %274, label %405

274:                                              ; preds = %268
  %275 = load i32, i32* %27, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %27, align 4
  %277 = load i32, i32* %31, align 4
  %278 = load i32, i32* %37, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %37, align 4
  %280 = load i32, i32* %26, align 4
  %281 = load i32, i32* %37, align 4
  %282 = sub nsw i32 %280, %281
  store i32 %282, i32* %41, align 4
  %283 = load i32, i32* %41, align 4
  %284 = load i32, i32* %31, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %274
  %287 = load i32, i32* %31, align 4
  br label %290

288:                                              ; preds = %274
  %289 = load i32, i32* %41, align 4
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i32 [ %287, %286 ], [ %289, %288 ]
  store i32 %291, i32* %41, align 4
  %292 = load i32, i32* %30, align 4
  %293 = load i32, i32* %37, align 4
  %294 = sub nsw i32 %292, %293
  store i32 %294, i32* %29, align 4
  %295 = shl i32 1, %294
  store i32 %295, i32* %25, align 4
  %296 = load i32, i32* %22, align 4
  %297 = add nsw i32 %296, 1
  %298 = icmp sgt i32 %295, %297
  br i1 %298, label %299, label %331

299:                                              ; preds = %290
  %300 = load i32, i32* %22, align 4
  %301 = add nsw i32 %300, 1
  %302 = load i32, i32* %25, align 4
  %303 = sub nsw i32 %302, %301
  store i32 %303, i32* %25, align 4
  %304 = load i32, i32* %30, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %47, i64 %305
  store i32* %306, i32** %39, align 8
  %307 = load i32, i32* %29, align 4
  %308 = load i32, i32* %41, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %299
  br label %311

311:                                              ; preds = %324, %310
  %312 = load i32, i32* %29, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %29, align 4
  %314 = load i32, i32* %41, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %329

316:                                              ; preds = %311
  %317 = load i32, i32* %25, align 4
  %318 = shl i32 %317, 1
  store i32 %318, i32* %25, align 4
  %319 = load i32*, i32** %39, align 8
  %320 = getelementptr inbounds i32, i32* %319, i32 1
  store i32* %320, i32** %39, align 8
  %321 = load i32, i32* %320, align 4
  %322 = icmp sle i32 %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %329

324:                                              ; preds = %316
  %325 = load i32*, i32** %39, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %25, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %25, align 4
  br label %311

329:                                              ; preds = %323, %311
  br label %330

330:                                              ; preds = %329, %299
  br label %331

331:                                              ; preds = %330, %290
  %332 = load i32, i32* %29, align 4
  %333 = shl i32 1, %332
  store i32 %333, i32* %41, align 4
  %334 = load i32*, i32** %20, align 8
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %41, align 4
  %337 = add nsw i32 %335, %336
  %338 = load i32, i32* @MANY, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %331
  %341 = load i32, i32* @Z_MEM_ERROR, align 4
  store i32 %341, i32* %11, align 4
  store i32 1, i32* %42, align 4
  br label %546

342:                                              ; preds = %331
  %343 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %19, align 8
  %344 = load i32*, i32** %20, align 8
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %343, i64 %346
  store %struct.inflate_huft_s* %347, %struct.inflate_huft_s** %34, align 8
  %348 = load i32, i32* %27, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.inflate_huft_s*, %struct.inflate_huft_s** %50, i64 %349
  store %struct.inflate_huft_s* %347, %struct.inflate_huft_s** %350, align 8
  %351 = load i32, i32* %41, align 4
  %352 = load i32*, i32** %20, align 8
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, %351
  store i32 %354, i32* %352, align 4
  %355 = load i32, i32* %27, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %401

357:                                              ; preds = %342
  %358 = load i32, i32* %28, align 4
  %359 = load i32, i32* %27, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %54, i64 %360
  store i32 %358, i32* %361, align 4
  %362 = load i32, i32* %31, align 4
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 2
  store i8* %364, i8** %365, align 8
  %366 = load i32, i32* %29, align 4
  %367 = sext i32 %366 to i64
  %368 = inttoptr i64 %367 to i8*
  %369 = ptrtoint i8* %368 to i32
  %370 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 0
  store i32 %369, i32* %370, align 8
  %371 = load i32, i32* %28, align 4
  %372 = load i32, i32* %37, align 4
  %373 = load i32, i32* %31, align 4
  %374 = sub nsw i32 %372, %373
  %375 = ashr i32 %371, %374
  store i32 %375, i32* %29, align 4
  %376 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %34, align 8
  %377 = load i32, i32* %27, align 4
  %378 = sub nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.inflate_huft_s*, %struct.inflate_huft_s** %50, i64 %379
  %381 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %380, align 8
  %382 = ptrtoint %struct.inflate_huft_s* %376 to i64
  %383 = ptrtoint %struct.inflate_huft_s* %381 to i64
  %384 = sub i64 %382, %383
  %385 = sdiv exact i64 %384, 16
  %386 = load i32, i32* %29, align 4
  %387 = sext i32 %386 to i64
  %388 = sub nsw i64 %385, %387
  %389 = trunc i64 %388 to i32
  %390 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 1
  store i32 %389, i32* %390, align 4
  %391 = load i32, i32* %27, align 4
  %392 = sub nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.inflate_huft_s*, %struct.inflate_huft_s** %50, i64 %393
  %395 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %394, align 8
  %396 = load i32, i32* %29, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %395, i64 %397
  %399 = bitcast %struct.inflate_huft_s* %398 to i8*
  %400 = bitcast %struct.inflate_huft_s* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 8 %400, i64 16, i1 false)
  br label %404

401:                                              ; preds = %342
  %402 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %34, align 8
  %403 = load %struct.inflate_huft_s**, %struct.inflate_huft_s*** %17, align 8
  store %struct.inflate_huft_s* %402, %struct.inflate_huft_s** %403, align 8
  br label %404

404:                                              ; preds = %401, %357
  br label %268

405:                                              ; preds = %268
  %406 = load i32, i32* %30, align 4
  %407 = load i32, i32* %37, align 4
  %408 = sub nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = inttoptr i64 %409 to i8*
  %411 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 2
  store i8* %410, i8** %411, align 8
  %412 = load i32*, i32** %33, align 8
  %413 = load i32*, i32** %21, align 8
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = icmp uge i32* %412, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %405
  %419 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 0
  store i32 192, i32* %419, align 8
  br label %465

420:                                              ; preds = %405
  %421 = load i32*, i32** %33, align 8
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %14, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %439

425:                                              ; preds = %420
  %426 = load i32*, i32** %33, align 8
  %427 = load i32, i32* %426, align 4
  %428 = icmp slt i32 %427, 256
  %429 = zext i1 %428 to i64
  %430 = select i1 %428, i32 0, i32 96
  %431 = sext i32 %430 to i64
  %432 = inttoptr i64 %431 to i8*
  %433 = ptrtoint i8* %432 to i32
  %434 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 0
  store i32 %433, i32* %434, align 8
  %435 = load i32*, i32** %33, align 8
  %436 = getelementptr inbounds i32, i32* %435, i32 1
  store i32* %436, i32** %33, align 8
  %437 = load i32, i32* %435, align 4
  %438 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 1
  store i32 %437, i32* %438, align 4
  br label %464

439:                                              ; preds = %420
  %440 = load i32*, i32** %16, align 8
  %441 = load i32*, i32** %33, align 8
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %14, align 4
  %444 = sub nsw i32 %442, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %440, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 16
  %449 = add nsw i32 %448, 64
  %450 = sext i32 %449 to i64
  %451 = inttoptr i64 %450 to i8*
  %452 = ptrtoint i8* %451 to i32
  %453 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 0
  store i32 %452, i32* %453, align 8
  %454 = load i32*, i32** %15, align 8
  %455 = load i32*, i32** %33, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %33, align 8
  %457 = load i32, i32* %455, align 4
  %458 = load i32, i32* %14, align 4
  %459 = sub nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %454, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %35, i32 0, i32 1
  store i32 %462, i32* %463, align 4
  br label %464

464:                                              ; preds = %439, %425
  br label %465

465:                                              ; preds = %464, %418
  %466 = load i32, i32* %30, align 4
  %467 = load i32, i32* %37, align 4
  %468 = sub nsw i32 %466, %467
  %469 = shl i32 1, %468
  store i32 %469, i32* %25, align 4
  %470 = load i32, i32* %28, align 4
  %471 = load i32, i32* %37, align 4
  %472 = ashr i32 %470, %471
  store i32 %472, i32* %29, align 4
  br label %473

473:                                              ; preds = %484, %465
  %474 = load i32, i32* %29, align 4
  %475 = load i32, i32* %41, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %488

477:                                              ; preds = %473
  %478 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %34, align 8
  %479 = load i32, i32* %29, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %478, i64 %480
  %482 = bitcast %struct.inflate_huft_s* %481 to i8*
  %483 = bitcast %struct.inflate_huft_s* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %482, i8* align 8 %483, i64 16, i1 false)
  br label %484

484:                                              ; preds = %477
  %485 = load i32, i32* %25, align 4
  %486 = load i32, i32* %29, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %29, align 4
  br label %473

488:                                              ; preds = %473
  %489 = load i32, i32* %30, align 4
  %490 = sub nsw i32 %489, 1
  %491 = shl i32 1, %490
  store i32 %491, i32* %29, align 4
  br label %492

492:                                              ; preds = %501, %488
  %493 = load i32, i32* %28, align 4
  %494 = load i32, i32* %29, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %504

497:                                              ; preds = %492
  %498 = load i32, i32* %29, align 4
  %499 = load i32, i32* %28, align 4
  %500 = xor i32 %499, %498
  store i32 %500, i32* %28, align 4
  br label %501

501:                                              ; preds = %497
  %502 = load i32, i32* %29, align 4
  %503 = ashr i32 %502, 1
  store i32 %503, i32* %29, align 4
  br label %492

504:                                              ; preds = %492
  %505 = load i32, i32* %29, align 4
  %506 = load i32, i32* %28, align 4
  %507 = xor i32 %506, %505
  store i32 %507, i32* %28, align 4
  %508 = load i32, i32* %37, align 4
  %509 = shl i32 1, %508
  %510 = sub nsw i32 %509, 1
  store i32 %510, i32* %32, align 4
  br label %511

511:                                              ; preds = %520, %504
  %512 = load i32, i32* %28, align 4
  %513 = load i32, i32* %32, align 4
  %514 = and i32 %512, %513
  %515 = load i32, i32* %27, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %54, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = icmp ne i32 %514, %518
  br i1 %519, label %520, label %529

520:                                              ; preds = %511
  %521 = load i32, i32* %27, align 4
  %522 = add nsw i32 %521, -1
  store i32 %522, i32* %27, align 4
  %523 = load i32, i32* %31, align 4
  %524 = load i32, i32* %37, align 4
  %525 = sub nsw i32 %524, %523
  store i32 %525, i32* %37, align 4
  %526 = load i32, i32* %37, align 4
  %527 = shl i32 1, %526
  %528 = sub nsw i32 %527, 1
  store i32 %528, i32* %32, align 4
  br label %511

529:                                              ; preds = %511
  br label %263

530:                                              ; preds = %263
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %30, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %30, align 4
  br label %254

534:                                              ; preds = %254
  %535 = load i32, i32* %40, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %542

537:                                              ; preds = %534
  %538 = load i32, i32* %26, align 4
  %539 = icmp ne i32 %538, 1
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  %541 = load i32, i32* @Z_BUF_ERROR, align 4
  br label %544

542:                                              ; preds = %537, %534
  %543 = load i32, i32* @Z_OK, align 4
  br label %544

544:                                              ; preds = %542, %540
  %545 = phi i32 [ %541, %540 ], [ %543, %542 ]
  store i32 %545, i32* %11, align 4
  store i32 1, i32* %42, align 4
  br label %546

546:                                              ; preds = %544, %340, %193, %177, %106
  %547 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %547)
  %548 = load i32, i32* %11, align 4
  ret i32 %548
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
