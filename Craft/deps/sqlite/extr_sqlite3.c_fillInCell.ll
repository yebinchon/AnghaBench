; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fillInCell.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fillInCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i32, i64 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i8*, i64, i8*, i32, i32, i32*)* @fillInCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillInCell(%struct.TYPE_13__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_14__, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %25, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %28, align 8
  store i64 0, i64* %29, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @sqlite3_mutex_held(i32 %41)
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ult i8* %45, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = icmp uge i8* %51, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @sqlite3PagerIswriteable(i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %60, %50, %8
  %67 = phi i1 [ true, %50 ], [ true, %8 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  store i32 0, i32* %30, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %30, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %30, align 4
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %30, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i64 @putVarint(i8* %86, i32 %89)
  %91 = load i32, i32* %30, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %30, align 4
  br label %96

95:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %30, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = bitcast i64* %13 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @putVarint(i8* %100, i32 %102)
  %104 = load i32, i32* %30, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %30, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @btreeParseCellPtr(%struct.TYPE_13__* %108, i8* %109, %struct.TYPE_14__* %31)
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %30, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %124, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %18, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %96
  %140 = load i8*, i8** %14, align 8
  %141 = bitcast i8* %140 to i32*
  store i32* %141, i32** %19, align 8
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %165

143:                                              ; preds = %96
  %144 = load i64, i64* %13, align 8
  %145 = icmp sgt i64 %144, 2147483647
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %12, align 8
  %148 = icmp eq i8* %147, null
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i1 [ true, %143 ], [ %148, %146 ]
  %151 = zext i1 %150 to i32
  %152 = call i64 @NEVER(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %155, i32* %9, align 4
  br label %398

156:                                              ; preds = %149
  %157 = load i64, i64* %13, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %18, align 4
  %161 = load i8*, i8** %12, align 8
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %19, align 8
  %163 = load i64, i64* %13, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %20, align 4
  br label %165

165:                                              ; preds = %156, %139
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %17, align 8
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %23, align 4
  %171 = load i8*, i8** %11, align 8
  %172 = load i32, i32* %30, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8* %174, i8** %27, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8* %178, i8** %26, align 8
  br label %179

179:                                              ; preds = %393, %165
  %180 = load i32, i32* %18, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %394

182:                                              ; preds = %179
  %183 = load i32, i32* %23, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %304

185:                                              ; preds = %182
  %186 = load i64, i64* %29, align 8
  store i64 %186, i64* %32, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %205, %191
  %193 = load i64, i64* %29, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %29, align 8
  br label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %197 = load i64, i64* %29, align 8
  %198 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_15__* %196, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load i64, i64* %29, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %203 = call i64 @PENDING_BYTE_PAGE(%struct.TYPE_15__* %202)
  %204 = icmp eq i64 %201, %203
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi i1 [ true, %195 ], [ %204, %200 ]
  br i1 %206, label %192, label %207

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207, %185
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %210 = load i64, i64* %29, align 8
  %211 = call i32 @allocateBtreePage(%struct.TYPE_15__* %209, %struct.TYPE_13__** %24, i64* %29, i64 %210, i32 0)
  store i32 %211, i32* %22, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %208
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* @SQLITE_OK, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %216
  %221 = load i64, i64* %32, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  br label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  store i32 %228, i32* %33, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %230 = load i64, i64* %29, align 8
  %231 = load i32, i32* %33, align 4
  %232 = load i64, i64* %32, align 8
  %233 = call i32 @ptrmapPut(%struct.TYPE_15__* %229, i64 %230, i32 %231, i64 %232, i32* %22)
  %234 = load i32, i32* %22, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %227
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %238 = call i32 @releasePage(%struct.TYPE_13__* %237)
  br label %239

239:                                              ; preds = %236, %227
  br label %240

240:                                              ; preds = %239, %216, %208
  %241 = load i32, i32* %22, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %245 = call i32 @releasePage(%struct.TYPE_13__* %244)
  %246 = load i32, i32* %22, align 4
  store i32 %246, i32* %9, align 4
  br label %398

247:                                              ; preds = %240
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %249 = icmp eq %struct.TYPE_13__* %248, null
  br i1 %249, label %256, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @sqlite3PagerIswriteable(i32 %253)
  %255 = icmp ne i64 %254, 0
  br label %256

256:                                              ; preds = %250, %247
  %257 = phi i1 [ true, %247 ], [ %255, %250 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load i8*, i8** %26, align 8
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ult i8* %260, %263
  br i1 %264, label %281, label %265

265:                                              ; preds = %256
  %266 = load i8*, i8** %26, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  %274 = icmp uge i8* %266, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %265
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @sqlite3PagerIswriteable(i32 %278)
  %280 = icmp ne i64 %279, 0
  br label %281

281:                                              ; preds = %275, %265, %256
  %282 = phi i1 [ true, %265 ], [ true, %256 ], [ %280, %275 ]
  %283 = zext i1 %282 to i32
  %284 = call i32 @assert(i32 %283)
  %285 = load i8*, i8** %26, align 8
  %286 = load i64, i64* %29, align 8
  %287 = call i32 @put4byte(i8* %285, i64 %286)
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %289 = call i32 @releasePage(%struct.TYPE_13__* %288)
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %290, %struct.TYPE_13__** %25, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  store i8* %293, i8** %26, align 8
  %294 = load i8*, i8** %26, align 8
  %295 = call i32 @put4byte(i8* %294, i64 0)
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 4
  store i8* %299, i8** %27, align 8
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %302, 4
  store i32 %303, i32* %23, align 4
  br label %304

304:                                              ; preds = %281, %182
  %305 = load i32, i32* %18, align 4
  store i32 %305, i32* %21, align 4
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %23, align 4
  %308 = icmp sgt i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i32, i32* %23, align 4
  store i32 %310, i32* %21, align 4
  br label %311

311:                                              ; preds = %309, %304
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %313 = icmp eq %struct.TYPE_13__* %312, null
  br i1 %313, label %320, label %314

314:                                              ; preds = %311
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i64 @sqlite3PagerIswriteable(i32 %317)
  %319 = icmp ne i64 %318, 0
  br label %320

320:                                              ; preds = %314, %311
  %321 = phi i1 [ true, %311 ], [ %319, %314 ]
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i8*, i8** %27, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = icmp ult i8* %324, %327
  br i1 %328, label %345, label %329

329:                                              ; preds = %320
  %330 = load i8*, i8** %27, align 8
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds i8, i8* %333, i64 %336
  %338 = icmp uge i8* %330, %337
  br i1 %338, label %345, label %339

339:                                              ; preds = %329
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call i64 @sqlite3PagerIswriteable(i32 %342)
  %344 = icmp ne i64 %343, 0
  br label %345

345:                                              ; preds = %339, %329, %320
  %346 = phi i1 [ true, %329 ], [ true, %320 ], [ %344, %339 ]
  %347 = zext i1 %346 to i32
  %348 = call i32 @assert(i32 %347)
  %349 = load i32, i32* %20, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %345
  %352 = load i32, i32* %21, align 4
  %353 = load i32, i32* %20, align 4
  %354 = icmp sgt i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = load i32, i32* %20, align 4
  store i32 %356, i32* %21, align 4
  br label %357

357:                                              ; preds = %355, %351
  %358 = load i32*, i32** %19, align 8
  %359 = ptrtoint i32* %358 to i32
  %360 = call i32 @assert(i32 %359)
  %361 = load i8*, i8** %27, align 8
  %362 = load i32*, i32** %19, align 8
  %363 = load i32, i32* %21, align 4
  %364 = call i32 @memcpy(i8* %361, i32* %362, i32 %363)
  br label %369

365:                                              ; preds = %345
  %366 = load i8*, i8** %27, align 8
  %367 = load i32, i32* %21, align 4
  %368 = call i32 @memset(i8* %366, i32 0, i32 %367)
  br label %369

369:                                              ; preds = %365, %357
  %370 = load i32, i32* %21, align 4
  %371 = load i32, i32* %18, align 4
  %372 = sub nsw i32 %371, %370
  store i32 %372, i32* %18, align 4
  %373 = load i32, i32* %21, align 4
  %374 = load i8*, i8** %27, align 8
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8* %376, i8** %27, align 8
  %377 = load i32, i32* %21, align 4
  %378 = load i32*, i32** %19, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %19, align 8
  %381 = load i32, i32* %21, align 4
  %382 = load i32, i32* %20, align 4
  %383 = sub nsw i32 %382, %381
  store i32 %383, i32* %20, align 4
  %384 = load i32, i32* %21, align 4
  %385 = load i32, i32* %23, align 4
  %386 = sub nsw i32 %385, %384
  store i32 %386, i32* %23, align 4
  %387 = load i32, i32* %20, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %369
  %390 = load i32, i32* %15, align 4
  store i32 %390, i32* %20, align 4
  %391 = load i8*, i8** %14, align 8
  %392 = bitcast i8* %391 to i32*
  store i32* %392, i32** %19, align 8
  br label %393

393:                                              ; preds = %389, %369
  br label %179

394:                                              ; preds = %179
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %396 = call i32 @releasePage(%struct.TYPE_13__* %395)
  %397 = load i32, i32* @SQLITE_OK, align 4
  store i32 %397, i32* %9, align 4
  br label %398

398:                                              ; preds = %394, %243, %154
  %399 = load i32, i32* %9, align 4
  ret i32 %399
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3_mutex_held(i32) #1

declare dso_local i64 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @putVarint(i8*, i32) #1

declare dso_local i32 @btreeParseCellPtr(%struct.TYPE_13__*, i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @PENDING_BYTE_PAGE(%struct.TYPE_15__*) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_15__*, %struct.TYPE_13__**, i64*, i64, i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_15__*, i64, i32, i64, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_13__*) #1

declare dso_local i32 @put4byte(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
