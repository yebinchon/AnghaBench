; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadFileSystem.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadFileSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_11__**, i32 }
%struct.TYPE_11__ = type { i32, i64* }

@Cs2Area = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cs2ReadFileSystem(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %519

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  br label %185

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 16777215
  br i1 %44, label %45, label %137

45:                                               ; preds = %42
  %46 = call %struct.TYPE_9__* @Cs2ReadUnFilteredSector(i32 166)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %13, align 8
  %47 = icmp eq %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -2, i32* %4, align 4
  br label %519

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %64, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 156
  %75 = call i32 @Cs2CopyDirRecord(i64* %74, %struct.TYPE_10__* %10)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %78, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %99
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @Cs2FreeBlock(%struct.TYPE_11__* %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  store i32 255, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %113 = call i32 @Cs2SortBlocks(%struct.TYPE_9__* %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = trunc i64 %120 to i32
  store i32 %123, i32* %12, align 4
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sdiv i32 %125, %126
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %11, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  store i32 0, i32* %136, align 8
  br label %184

137:                                              ; preds = %42
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 -1, i32* %4, align 4
  br label %519

143:                                              ; preds = %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 150
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = trunc i64 %157 to i32
  store i32 %160, i32* %12, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %14, align 4
  %174 = sdiv i32 %172, %173
  %175 = sub nsw i32 %174, 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %11, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %143, %49
  br label %185

185:                                              ; preds = %184, %29
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i32, i32* @MAX_FILES, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 12, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @memset(%struct.TYPE_10__* %188, i32 0, i32 %192)
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 150
  %196 = call %struct.TYPE_9__* @Cs2ReadUnFilteredSector(i32 %195)
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %13, align 8
  %197 = icmp eq %struct.TYPE_9__* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  store i32 -2, i32* %4, align 4
  br label %519

199:                                              ; preds = %185
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %203, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %204, i64 %209
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  store i64* %213, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %255, %199
  %215 = load i32, i32* %9, align 4
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %217, label %258

217:                                              ; preds = %214
  %218 = load i64*, i64** %8, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 %223
  %225 = call i32 @Cs2CopyDirRecord(i64* %218, %struct.TYPE_10__* %224)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 150
  store i32 %234, i32* %232, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i64*, i64** %8, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  store i64* %245, i64** %8, align 8
  %246 = load i64*, i64** %8, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %217
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 8
  br label %258

254:                                              ; preds = %217
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %214

258:                                              ; preds = %250, %214
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %361

261:                                              ; preds = %258
  store i32 2, i32* %9, align 4
  br label %262

262:                                              ; preds = %357, %261
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %360

266:                                              ; preds = %262
  %267 = load i64*, i64** %8, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 2
  %272 = call i32 @Cs2CopyDirRecord(i64* %267, %struct.TYPE_10__* %271)
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 5
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i64 2
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load i64*, i64** %8, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  store i64* %281, i64** %8, align 8
  %282 = load i64*, i64** %8, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %356

286:                                              ; preds = %266
  %287 = load i64, i64* %11, align 8
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %354

289:                                              ; preds = %286
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %291, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %292, i64 %297
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %307, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %308, i64 %313
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %314, align 8
  %316 = call i32 @Cs2FreeBlock(%struct.TYPE_11__* %315)
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sub nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %319, i64 %324
  store i32 255, i32* %325, align 4
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %327 = call i32 @Cs2SortBlocks(%struct.TYPE_9__* %326)
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 %330, 1
  store i32 %331, i32* %329, align 8
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %332, 150
  %334 = call %struct.TYPE_9__* @Cs2ReadUnFilteredSector(i32 %333)
  store %struct.TYPE_9__* %334, %struct.TYPE_9__** %13, align 8
  %335 = icmp eq %struct.TYPE_9__* %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %289
  store i32 -2, i32* %4, align 4
  br label %519

337:                                              ; preds = %289
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %12, align 4
  %340 = load i64, i64* %11, align 8
  %341 = add nsw i64 %340, -1
  store i64 %341, i64* %11, align 8
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %343, align 8
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %344, i64 %349
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  store i64* %353, i64** %8, align 8
  br label %355

354:                                              ; preds = %286
  br label %360

355:                                              ; preds = %337
  br label %356

356:                                              ; preds = %355, %266
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %262

360:                                              ; preds = %354, %262
  br label %361

361:                                              ; preds = %360, %258
  store i32 2, i32* %9, align 4
  br label %362

362:                                              ; preds = %473, %361
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* @MAX_FILES, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %476

366:                                              ; preds = %362
  %367 = load i64*, i64** %8, align 8
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = load i32, i32* %9, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i64 %372
  %374 = call i32 @Cs2CopyDirRecord(i64* %367, %struct.TYPE_10__* %373)
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 5
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, 150
  store i32 %383, i32* %381, align 4
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 5
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load i64*, i64** %8, align 8
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  store i64* %394, i64** %8, align 8
  %395 = load i64*, i64** %8, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %472

399:                                              ; preds = %366
  %400 = load i64, i64* %11, align 8
  %401 = icmp sgt i64 %400, 0
  br i1 %401, label %402, label %467

402:                                              ; preds = %399
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %404, align 8
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = sub nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %405, i64 %410
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = sub nsw i32 %417, %414
  store i32 %418, i32* %416, align 8
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %420, align 8
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = sub nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %421, i64 %426
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %427, align 8
  %429 = call i32 @Cs2FreeBlock(%struct.TYPE_11__* %428)
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = sub nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %432, i64 %437
  store i32 255, i32* %438, align 4
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %440 = call i32 @Cs2SortBlocks(%struct.TYPE_9__* %439)
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = sub nsw i32 %443, 1
  store i32 %444, i32* %442, align 8
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, 150
  %447 = call %struct.TYPE_9__* @Cs2ReadUnFilteredSector(i32 %446)
  store %struct.TYPE_9__* %447, %struct.TYPE_9__** %13, align 8
  %448 = icmp eq %struct.TYPE_9__* %447, null
  br i1 %448, label %449, label %450

449:                                              ; preds = %402
  store i32 -2, i32* %4, align 4
  br label %519

450:                                              ; preds = %402
  %451 = load i32, i32* %12, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %12, align 4
  %453 = load i64, i64* %11, align 8
  %454 = add nsw i64 %453, -1
  store i64 %454, i64* %11, align 8
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %456, align 8
  %458 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = sub nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %457, i64 %462
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 1
  %466 = load i64*, i64** %465, align 8
  store i64* %466, i64** %8, align 8
  br label %471

467:                                              ; preds = %399
  %468 = load i32, i32* %9, align 4
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 4
  store i32 %468, i32* %470, align 8
  br label %476

471:                                              ; preds = %450
  br label %472

472:                                              ; preds = %471, %366
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %9, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %9, align 4
  br label %362

476:                                              ; preds = %467, %362
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 2
  %479 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %478, align 8
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = sub nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %479, i64 %484
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 8
  %492 = sub nsw i32 %491, %488
  store i32 %492, i32* %490, align 8
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 2
  %495 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %494, align 8
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = sub nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %495, i64 %500
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %501, align 8
  %503 = call i32 @Cs2FreeBlock(%struct.TYPE_11__* %502)
  %504 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 1
  %506 = load i32*, i32** %505, align 8
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = sub nsw i32 %509, 1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %506, i64 %511
  store i32 255, i32* %512, align 4
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %514 = call i32 @Cs2SortBlocks(%struct.TYPE_9__* %513)
  %515 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = sub nsw i32 %517, 1
  store i32 %518, i32* %516, align 8
  store i32 0, i32* %4, align 4
  br label %519

519:                                              ; preds = %476, %449, %336, %198, %142, %48, %28
  %520 = load i32, i32* %4, align 4
  ret i32 %520
}

declare dso_local %struct.TYPE_9__* @Cs2ReadUnFilteredSector(i32) #1

declare dso_local i32 @Cs2CopyDirRecord(i64*, %struct.TYPE_10__*) #1

declare dso_local i32 @Cs2FreeBlock(%struct.TYPE_11__*) #1

declare dso_local i32 @Cs2SortBlocks(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
