; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_db_status.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_db_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 (i32)* }
%struct.TYPE_23__ = type { i32, i32*, i32, %struct.TYPE_22__*, %struct.Vdbe*, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.Vdbe = type { %struct.Vdbe* }
%struct.TYPE_18__ = type { i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_db_status(%struct.TYPE_23__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.Vdbe*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sqlite3_mutex_enter(i32 %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %325 [
    i32 130, label %31
    i32 133, label %53
    i32 131, label %53
    i32 132, label %53
    i32 135, label %99
    i32 129, label %136
    i32 128, label %258
    i32 137, label %284
    i32 136, label %284
    i32 134, label %284
  ]

31:                                               ; preds = %5
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %31
  br label %327

53:                                               ; preds = %5, %5, %5
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 133
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 131
  %60 = zext i1 %59 to i32
  %61 = call i32 @testcase(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 132
  %64 = zext i1 %63 to i32
  %65 = call i32 @testcase(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 133
  %68 = icmp sge i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 133
  %73 = icmp slt i32 %72, 3
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %8, align 8
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 133
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %53
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, 133
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %53
  br label %327

99:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_23__* %100)
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %127, %99
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %102
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load i32*, i32** %14, align 8
  %121 = call i32* @sqlite3BtreePager(i32* %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @sqlite3PagerMemUsed(i32* %122)
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %119, %108
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %102

130:                                              ; preds = %102
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_23__* %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 0, i32* %135, align 4
  br label %327

136:                                              ; preds = %5
  store i32 0, i32* %17, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %138 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_23__* %137)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  store i32* %17, i32** %140, align 8
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %247, %136
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %250

147:                                              ; preds = %141
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  store %struct.TYPE_24__* %155, %struct.TYPE_24__** %18, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %157 = icmp ne %struct.TYPE_24__* %156, null
  %158 = zext i1 %157 to i32
  %159 = call i32 @ALWAYS(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %246

161:                                              ; preds = %147
  %162 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %163 = call i32 %162(i32 4)
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %167, %171
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %172, %176
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %177, %181
  %183 = mul nsw i32 %163, %182
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %17, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sqlite3MallocSize(i32 %189)
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %17, align 4
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @sqlite3MallocSize(i32 %196)
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %17, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @sqlite3MallocSize(i32 %203)
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %17, align 4
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @sqlite3MallocSize(i32 %210)
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %17, align 4
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 1
  %216 = call i32* @sqliteHashFirst(%struct.TYPE_25__* %215)
  store i32* %216, i32** %19, align 8
  br label %217

217:                                              ; preds = %226, %161
  %218 = load i32*, i32** %19, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %222 = load i32*, i32** %19, align 8
  %223 = call i64 @sqliteHashData(i32* %222)
  %224 = inttoptr i64 %223 to i32*
  %225 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_23__* %221, i32* %224)
  br label %226

226:                                              ; preds = %220
  %227 = load i32*, i32** %19, align 8
  %228 = call i32* @sqliteHashNext(i32* %227)
  store i32* %228, i32** %19, align 8
  br label %217

229:                                              ; preds = %217
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = call i32* @sqliteHashFirst(%struct.TYPE_25__* %231)
  store i32* %232, i32** %19, align 8
  br label %233

233:                                              ; preds = %242, %229
  %234 = load i32*, i32** %19, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %238 = load i32*, i32** %19, align 8
  %239 = call i64 @sqliteHashData(i32* %238)
  %240 = inttoptr i64 %239 to i32*
  %241 = call i32 @sqlite3DeleteTable(%struct.TYPE_23__* %237, i32* %240)
  br label %242

242:                                              ; preds = %236
  %243 = load i32*, i32** %19, align 8
  %244 = call i32* @sqliteHashNext(i32* %243)
  store i32* %244, i32** %19, align 8
  br label %233

245:                                              ; preds = %233
  br label %246

246:                                              ; preds = %245, %147
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %16, align 4
  br label %141

250:                                              ; preds = %141
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %254 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_23__* %253)
  %255 = load i32*, i32** %9, align 8
  store i32 0, i32* %255, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i32*, i32** %8, align 8
  store i32 %256, i32* %257, align 4
  br label %327

258:                                              ; preds = %5
  store i32 0, i32* %21, align 4
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  store i32* %21, i32** %260, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 4
  %263 = load %struct.Vdbe*, %struct.Vdbe** %262, align 8
  store %struct.Vdbe* %263, %struct.Vdbe** %20, align 8
  br label %264

264:                                              ; preds = %274, %258
  %265 = load %struct.Vdbe*, %struct.Vdbe** %20, align 8
  %266 = icmp ne %struct.Vdbe* %265, null
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %269 = load %struct.Vdbe*, %struct.Vdbe** %20, align 8
  %270 = call i32 @sqlite3VdbeClearObject(%struct.TYPE_23__* %268, %struct.Vdbe* %269)
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %272 = load %struct.Vdbe*, %struct.Vdbe** %20, align 8
  %273 = call i32 @sqlite3DbFree(%struct.TYPE_23__* %271, %struct.Vdbe* %272)
  br label %274

274:                                              ; preds = %267
  %275 = load %struct.Vdbe*, %struct.Vdbe** %20, align 8
  %276 = getelementptr inbounds %struct.Vdbe, %struct.Vdbe* %275, i32 0, i32 0
  %277 = load %struct.Vdbe*, %struct.Vdbe** %276, align 8
  store %struct.Vdbe* %277, %struct.Vdbe** %20, align 8
  br label %264

278:                                              ; preds = %264
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 1
  store i32* null, i32** %280, align 8
  %281 = load i32*, i32** %9, align 8
  store i32 0, i32* %281, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32*, i32** %8, align 8
  store i32 %282, i32* %283, align 4
  br label %327

284:                                              ; preds = %5, %5, %5
  store i32 0, i32* %23, align 4
  %285 = call i32 @assert(i32 0)
  %286 = call i32 @assert(i32 0)
  store i32 0, i32* %22, align 4
  br label %287

287:                                              ; preds = %318, %284
  %288 = load i32, i32* %22, align 4
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %321

293:                                              ; preds = %287
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %295, align 8
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %317

303:                                              ; preds = %293
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = load i32, i32* %22, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = call i32* @sqlite3BtreePager(i32* %311)
  store i32* %312, i32** %24, align 8
  %313 = load i32*, i32** %24, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %10, align 4
  %316 = call i32 @sqlite3PagerCacheStat(i32* %313, i32 %314, i32 %315, i32* %23)
  br label %317

317:                                              ; preds = %303, %293
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %22, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %22, align 4
  br label %287

321:                                              ; preds = %287
  %322 = load i32*, i32** %9, align 8
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* %23, align 4
  %324 = load i32*, i32** %8, align 8
  store i32 %323, i32* %324, align 4
  br label %327

325:                                              ; preds = %5
  %326 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %326, i32* %11, align 4
  br label %327

327:                                              ; preds = %325, %321, %278, %250, %130, %98, %52
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @sqlite3_mutex_leave(i32 %330)
  %332 = load i32, i32* %11, align 4
  ret i32 %332
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_23__*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i32 @sqlite3PagerMemUsed(i32*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_23__*) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3MallocSize(i32) #1

declare dso_local i32* @sqliteHashFirst(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @sqlite3VdbeClearObject(%struct.TYPE_23__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_23__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3PagerCacheStat(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
